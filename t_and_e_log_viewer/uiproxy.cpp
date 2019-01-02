#include "uiproxy.h"
#include <QDebug>

UiProxy::UiProxy(QQmlApplicationEngine &eng) : engRef(eng)
{
}

void UiProxy::reqestLoadFile(const QString &filePath)
{
    loader.loadFile(filePath);
}

void UiProxy::getBrowseText()
{
    loader.setUiText();
}

