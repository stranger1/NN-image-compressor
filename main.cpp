#include "qtquick2controlsapplicationviewer.h"

int main(int argc, char *argv[])
{
    Application app(argc, argv);

    QtQuick2ControlsApplicationViewer viewer;
    viewer.setMainQmlFile(QStringLiteral("qml/NN-image-compressor/main.qml"));
    viewer.show();

    return app.exec();
}
