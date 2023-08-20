#ifndef LABEL_SETTINGS_H
#define LABEL_SETTINGS_H


#include <QDialog>


namespace Ui {
class Label_Settings;
}


class Label_Settings : public QDialog
{
    Q_OBJECT

public:
    explicit Label_Settings(QWidget *parent = nullptr);

    ~Label_Settings();

    static int label;

private slots:
    void on_pushButton_ok_clicked();

    void on_pushButton_cancel_clicked();

private:
    Ui::Label_Settings *ui;
};


#endif // LABEL_SETTINGS_H
