#ifndef HELP_SETTINGS_H
#define HELP_SETTINGS_H

#include <QDialog>

namespace Ui {
class Help_Settings;
}

class Help_Settings : public QDialog
{
    Q_OBJECT

public:
    explicit Help_Settings(QWidget *parent = nullptr);

    ~Help_Settings();

private:
    Ui::Help_Settings *ui;
};

#endif // HELP_SETTINGS_H
