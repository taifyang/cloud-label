#include "scale_settings.h"
#include "ui_scale_settings.h"
#include "helpers.h"


float Scale_Settings::xyz_scale = 0.1f;
float Scale_Settings::lwh_scale = 0.1f;


Scale_Settings::Scale_Settings(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::Scale_Settings)
{
    ui->setupUi(this);

    setAttribute(Qt::WA_QuitOnClose, false);
}

Scale_Settings::~Scale_Settings()
{
    delete ui;
}

void Scale_Settings::on_pushButton_ok_clicked()
{
    if(ui->lineEdit_xyz_scale->text().toFloat() <= 0 || ui->lineEdit_lwh_scale->text().toFloat() <= 0)
    {
        warningbox(QString("请输入大于0的数字！"));
        return;
    }
    xyz_scale = ui->lineEdit_xyz_scale->text().toFloat();
    lwh_scale = ui->lineEdit_lwh_scale->text().toFloat();

    this->close();
}

void Scale_Settings::on_pushButton_cancel_clicked()
{
    this->close();
}
