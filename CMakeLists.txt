cmake_minimum_required(VERSION 3.16)

project(HMI-clone VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_BUILD_TYPE Debug)
set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)


find_package(Qt6 6.5 REQUIRED COMPONENTS Quick Positioning Location)

qt_standard_project_setup(REQUIRES 6.5)

add_executable(appHMI-clone
    main.cpp
    radialbar.cpp
    qml/qml.qrc
)

target_link_libraries(appHMI-clone
    PRIVATE
    Qt6::Quick
    Qt::Location
    Qt::Positioning
)

include(GNUInstallDirs)
install(TARGETS appHMI-clone
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
