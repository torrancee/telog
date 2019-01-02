#ifndef FILELOADER_H
#define FILELOADER_H

#include <QObject>
#include <QString>
#include <QVector>

class FileLoader : public QObject
{
    Q_OBJECT
public:
    FileLoader();
    void loadFile(const QString &filePath);
    void setUiText();

private:
    QVector<QString> fileContent;
};

#endif // FILELOADER_H
