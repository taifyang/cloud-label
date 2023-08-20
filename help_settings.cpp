#include "help_settings.h"
#include "ui_help_settings.h"

Help_Settings::Help_Settings(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::Help_Settings)
{
    ui->setupUi(this); 

    ui->label_link->setOpenExternalLinks(true);
    ui->label_link->setText("<a style='color: blue;' href=\"https://blog.csdn.net/taifyang/article/details/131140944\">https://blog.csdn.net/taifyang/article/details/131140944");
}

Help_Settings::~Help_Settings()
{
    delete ui;
}
