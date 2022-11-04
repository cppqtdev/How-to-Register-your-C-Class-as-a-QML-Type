#ifndef SIGNALCLASS_H
#define SIGNALCLASS_H

#include <QObject>

class SignalClass : public QObject
{
    Q_OBJECT
public:
    explicit SignalClass(QObject *parent = nullptr);
    Q_PROPERTY(int count READ count WRITE setCount NOTIFY countChanged)

    int count() const;
    void setCount(int newCount);

public slots:

signals:
    void countChanged();

private:
    int m_count{0}; //initialize the value
};

#endif // SIGNALCLASS_H
