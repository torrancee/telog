#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "uiproxy.h"
#include "fileloader.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    UiProxy uiProx(engine);
//    QObject::connect(item, SIGNAL(qmlSignal(QString)),
//                     &myClass, SLOT(cppSlot(QString)));

    return app.exec();
}
