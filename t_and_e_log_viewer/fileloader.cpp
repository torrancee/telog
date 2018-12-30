#include "fileloader.h"
#include <QDebug>

FileLoader::FileLoader()
{

}

void FileLoader::loadFile(const QString &filePath)
{
    qDebug() << filePath;
}
