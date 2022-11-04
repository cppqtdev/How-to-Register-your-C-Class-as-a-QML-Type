#include "signalclass.h"

SignalClass::SignalClass(QObject *parent)
    : QObject{parent}
{

}

int SignalClass::count() const
{
    return m_count;
}

void SignalClass::setCount(int newCount)
{
    if (m_count == newCount)
        return;
    m_count = newCount;
    emit countChanged();
}
