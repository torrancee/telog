#ifndef UIPROXY_H
#define UIPROXY_H

#include <QObject>
#include <QString>
#include <fileloader.h>
#include <QQmlApplicationEngine>

class UiProxy : public QObject
{
    Q_OBJECT

public:
    UiProxy(QQmlApplicationEngine &eng);
    FileLoader loader;

public slots:
    void reqestLoadFile(const QString &filePath);
    void getBrowseText();

private:
    QQmlApplicationEngine &engRef;
};

#endif // UIPROXY_H
