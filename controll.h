#ifndef CONTROLL_H
#define CONTROLL_H

#include <QObject>

class Controll : public QObject
{
    Q_OBJECT
public:
    explicit Controll(QObject *parent = nullptr);
    Q_INVOKABLE void build();
    Q_INVOKABLE void run_p();


signals:

};

#endif // CONTROLL_H
