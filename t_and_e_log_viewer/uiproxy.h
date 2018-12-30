#ifndef UIPROXY_H
#define UIPROXY_H

#include <QObject>
#include <QString>
#include <fileloader.h>

class UiProxy : public QObject
{
    Q_OBJECT

public:
    UiProxy();
    FileLoader loader;

public slots:
    void reqestLoadFile(const QString &filePath);
};

#endif // UIPROXY_H
