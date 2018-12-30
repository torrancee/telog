#include "uiproxy.h"
#include <QDebug>

UiProxy::UiProxy()
{

}

void UiProxy::reqestLoadFile(const QString &filePath)
{
    loader.loadFile(filePath);
}


