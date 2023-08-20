#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "helpers.h"


int MainWindow::box_id = 0;


MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    label_settings = new Label_Settings;
    scale_settings = new Scale_Settings;
    help_settings = new Help_Settings;

    cloud.reset(new pcl::PointCloud<pcl::PointXYZ>);

    auto renderer = vtkSmartPointer<vtkRenderer>::New();
    auto renderWindow = vtkSmartPointer<vtkGenericOpenGLRenderWindow>::New();
    viewer.reset(new pcl::visualization::PCLVisualizer(renderer, renderWindow, "viewer", false));

    vtkOutputWindow::SetGlobalWarningDisplay(0);
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::on_action_open_cloud_triggered()
{
    cloud_path = QFileDialog::getOpenFileName(this, QString("打开.pcd文件"), "", "*.pcd");
    if(cloud_path.isEmpty())
    {
        warningbox(QString("请选择有效的点云路径！"));
        return;
    }

    pcl::io::loadPCDFile(cloud_path.toStdString(), *cloud);
    boxes.clear();

    viewer->removeAllPointClouds();
    viewer->removeAllShapes();
    viewer->addPointCloud(cloud, "cloud");
    viewer->setPointCloudRenderingProperties (pcl::visualization::PCL_VISUALIZER_POINT_SIZE, 1, "cloud");
    viewer->setupInteractor(ui->qvtkWidget->interactor(), ui->qvtkWidget->renderWindow());
    ui->qvtkWidget->setRenderWindow(viewer->getRenderWindow());
    ui->qvtkWidget->renderWindow()->Render();
    ui->statusBar->showMessage(cloud_path);
}

void MainWindow::on_action_close_cloud_triggered()
{
    cloud->clear();
    boxes.clear();
    viewer->removeAllPointClouds();
    viewer->removeAllShapes();
    ui->qvtkWidget->renderWindow()->Render();
    ui->statusBar->clearMessage();
}

void MainWindow::on_action_save_label_triggered()
{
    if(cloud_path.isEmpty())  return;

    QString cloud_path_temp = cloud_path;
    label_path = cloud_path_temp.replace(".pcd", ".txt");

    std::fstream txt(label_path.toStdString(), 'w');
    for(auto box : boxes)
    {
        txt << box.label << " "
            << box.position.x() << " " << box.position.y() << " " << box.position.z() << " "
            << box.l << " " << box.w << " " << box.h << std::endl;
    }
    txt.close();
}

void MainWindow::on_action_delete_label_triggered()
{
    boxes.pop_back();
    viewer->removeShape(std::to_string(box_id));
    ui->qvtkWidget->renderWindow()->Render();
}

void MainWindow::update_viewer()
{
    viewer->removeShape(std::to_string(box_id));
    viewer->addCube(box.position, box.quat, box.l, box.w, box.h, std::to_string(box_id));
    viewer->setShapeRenderingProperties(pcl::visualization::PCL_VISUALIZER_COLOR, 1, 0, 0, std::to_string(box_id));
    viewer->setShapeRenderingProperties(pcl::visualization::PCL_VISUALIZER_OPACITY, 0.1, std::to_string(box_id));
    viewer->setShapeRenderingProperties(pcl::visualization::PCL_VISUALIZER_LINE_WIDTH, 1, std::to_string(box_id));
    ui->qvtkWidget->renderWindow()->Render();
}

void MainWindow::on_action_add_box_triggered()
{
    if(cloud->size() == 0)  return;

    label_settings->exec();

    pcl::PointXYZ min_point_AABB, max_point_AABB;
    pcl::MomentOfInertiaEstimation<pcl::PointXYZ> feature_extractor;
    feature_extractor.setInputCloud(cloud);
    feature_extractor.compute();
    feature_extractor.getAABB(min_point_AABB, max_point_AABB);

    box.position.x() = (min_point_AABB.x + max_point_AABB.x) / 2;
    box.position.y() = (min_point_AABB.y + max_point_AABB.y) / 2;
    box.position.z() = (min_point_AABB.z + max_point_AABB.z) / 2;
    box.quat = Eigen::Quaternionf(1, 0, 0, 0);
    box.l = max_point_AABB.x - min_point_AABB.x;
    box.w = max_point_AABB.y - min_point_AABB.y;
    box.h = max_point_AABB.z - min_point_AABB.z;
    box.label = Label_Settings::label;

    boxes.push_back(box);
    box_id++;

    update_viewer();
    viewer->addCoordinateSystem(std::max(box.l, std::max(box.w, box.h)) / 10);
}

void MainWindow::on_action_x_bigger_triggered()
{
    if(cloud->size() == 0)  return;

    box.position.x() += Scale_Settings::xyz_scale * box.l;
    boxes.pop_back();
    boxes.push_back(box);
    update_viewer();
}

void MainWindow::on_action_x_smaller_triggered()
{
    if(cloud->size() == 0)  return;

    box.position.x() -= Scale_Settings::xyz_scale * box.l;
    boxes.pop_back();
    boxes.push_back(box);
    update_viewer();
}

void MainWindow::on_action_y_bigger_triggered()
{
    if(cloud->size() == 0)  return;

    box.position.y() += Scale_Settings::xyz_scale * box.w;
    boxes.pop_back();
    boxes.push_back(box);
    update_viewer();
}

void MainWindow::on_action_y_smaller_triggered()
{
    if(cloud->size() == 0)  return;

    box.position.y() -= Scale_Settings::xyz_scale * box.w;
    boxes.pop_back();
    boxes.push_back(box);
    update_viewer();
}

void MainWindow::on_action_z_bigger_triggered()
{
    if(cloud->size() == 0)  return;

    box.position.z() += Scale_Settings::xyz_scale * box.h;
    boxes.pop_back();
    boxes.push_back(box);
    update_viewer();
}

void MainWindow::on_action_z_smaller_triggered()
{
    if(cloud->size() == 0)  return;

    box.position.z() -= Scale_Settings::xyz_scale * box.h;
    boxes.pop_back();
    boxes.push_back(box);
    update_viewer();
}

void MainWindow::on_action_l_bigger_triggered()
{
    if(cloud->size() == 0)  return;

    box.l += Scale_Settings::lwh_scale * box.l;
    boxes.pop_back();
    boxes.push_back(box);
    update_viewer();
}

void MainWindow::on_action_l_smaller_triggered()
{
    if(cloud->size() == 0)  return;

    box.l -= Scale_Settings::lwh_scale * box.l;
    boxes.pop_back();
    boxes.push_back(box);
    update_viewer();
}

void MainWindow::on_action_w_bigger_triggered()
{
    if(cloud->size() == 0)  return;

    box.w += Scale_Settings::lwh_scale * box.w;
    boxes.pop_back();
    boxes.push_back(box);
    update_viewer();
}

void MainWindow::on_action_w_smaller_triggered()
{
    if(cloud->size() == 0)  return;

    box.w -= Scale_Settings::lwh_scale * box.w;
    boxes.pop_back();
    boxes.push_back(box);
    update_viewer();
}

void MainWindow::on_action_h_bigger_triggered()
{
    if(cloud->size() == 0)  return;

    box.h += Scale_Settings::lwh_scale * box.h;
    boxes.pop_back();
    boxes.push_back(box);
    update_viewer();
}

void MainWindow::on_action_h_smaller_triggered()
{
    if(cloud->size() == 0)  return;

    box.h -= Scale_Settings::lwh_scale * box.h;
    boxes.pop_back();
    boxes.push_back(box);
    update_viewer();
}

void MainWindow::on_action_set_scale_triggered()
{
    scale_settings->exec();
}

void MainWindow::on_action_show_help_triggered()
{
    help_settings->exec();
}
