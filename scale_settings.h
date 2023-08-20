#ifndef SCALE_SETTINGS_H
#define SCALE_SETTINGS_H


#include <QDialog>


namespace Ui {
class Scale_Settings;
}


class Scale_Settings : public QDialog
{
    Q_OBJECT

public:
    explicit Scale_Settings(QWidget *parent = nullptr);

    ~Scale_Settings();

    static float xyz_scale;

    static float lwh_scale;

private slots:
    void on_pushButton_ok_clicked();

    void on_pushButton_cancel_clicked();

private:
    Ui::Scale_Settings *ui;
};


#endif // SCALE_SETTINGS_H
