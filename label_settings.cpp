#include "label_settings.h"
#include "ui_label_settings.h"
#include "helpers.h"


int Label_Settings::label = 0;


Label_Settings::Label_Settings(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::Label_Settings)
{
    ui->setupUi(this);

    setAttribute(Qt::WA_QuitOnClose, false);
}

Label_Settings::~Label_Settings()
{
    delete ui;
}

void Label_Settings::on_pushButton_ok_clicked()
{
    if(ui->lineEdit->text().toInt() < 0)
    {
        warningbox(QString("请输入不小于0的数字！"));
        return;
    }
    label = ui->lineEdit->text().toInt();

    this->close();
}

void Label_Settings::on_pushButton_cancel_clicked()
{
    this->close();
}
