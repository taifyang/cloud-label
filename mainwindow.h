#ifndef MAINWINDOW_H
#define MAINWINDOW_H


#include "label_settings.h"
#include "scale_settings.h"
#include "help_settings.h"

#include <QMainWindow>
#include <QFileDialog>
#include <QMessageBox>

#include <iostream>

#include <pcl/io/pcd_io.h>
#include <pcl/visualization/pcl_visualizer.h>
#include <pcl/features/moment_of_inertia_estimation.h>
#include <vtkGenericOpenGLRenderWindow.h>
#include <vtkOutputWindow.h>


QT_BEGIN_NAMESPACE
namespace Ui { class MainWindow; }
QT_END_NAMESPACE


class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);

    ~MainWindow();

private slots:
    void on_action_open_cloud_triggered();

    void on_action_close_cloud_triggered();

    void on_action_save_label_triggered();

    void on_action_delete_label_triggered();

    void update_viewer();

    void on_action_add_box_triggered();

    void on_action_x_bigger_triggered();

    void on_action_x_smaller_triggered();

    void on_action_y_bigger_triggered();

    void on_action_y_smaller_triggered();

    void on_action_z_bigger_triggered();

    void on_action_z_smaller_triggered();

    void on_action_l_bigger_triggered();

    void on_action_l_smaller_triggered();

    void on_action_w_bigger_triggered();

    void on_action_w_smaller_triggered();

    void on_action_h_bigger_triggered();

    void on_action_h_smaller_triggered();

    void on_action_set_scale_triggered();

    void on_action_show_help_triggered();

private:
    Ui::MainWindow *ui;

    Label_Settings *label_settings;

    Scale_Settings *scale_settings;

    Help_Settings *help_settings;

    QString cloud_path, label_path;

    pcl::PointCloud<pcl::PointXYZ>::Ptr cloud;

    pcl::visualization::PCLVisualizer::Ptr viewer;

    struct BoundingBox
    {
        Eigen::Vector3f position;
        Eigen::Quaternionf quat;
        float l;
        float w;
        float h;
        int label;
    } box;

    std::vector<BoundingBox> boxes;

    static int box_id;
};


#endif // MAINWINDOW_H
