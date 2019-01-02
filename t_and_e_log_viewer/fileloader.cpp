#include "fileloader.h"
#include <QDebug>
#include <QFile>
#include <QQmlEngine>
#include <QQuickItem>
#include <QVariant>
#include <QColor>
#include <QQmlProperty>

FileLoader::FileLoader()
{

}

void FileLoader::loadFile(const QString &filePath)
{
    qDebug() << filePath;
    QFile logFile(filePath);
    if(!logFile.open(QIODevice::ReadOnly | QIODevice::Text))
        return;

    QTextStream in(&logFile);

    while(!in.atEnd()){
        QString line = in.readLine();
        fileContent.push_back(line);
    }
    qDebug() << "end function";
}

void FileLoader::setUiText()
{
//    QObject *child = object->findChild<QObject*>("wiktor");
//    if(child){
//        QVariant msg = "Hello world";
//        QMetaObject::invokeMethod(child, "setText", Q_ARG(QVariant, msg));
//    }
}
