#include "helpers.h"


void warningbox(QString qstr)
{
    QMessageBox *box = new QMessageBox(QMessageBox::Warning, QString("警告"), qstr, QMessageBox::Ok);
    if (NULL != box->button(QMessageBox::Ok))
    {
        box->button(QMessageBox::Ok)->setText(QString("确 定"));
    }
    QTimer::singleShot(3000, box, SLOT(accept()));
    box->exec();
}
