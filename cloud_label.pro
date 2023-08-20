QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    help_settings.cpp \
    helpers.cpp \
    label_settings.cpp \
    main.cpp \
    mainwindow.cpp \
    scale_settings.cpp

HEADERS += \
    help_settings.h \
    helpers.h \
    label_settings.h \
    mainwindow.h \
    scale_settings.h

FORMS += \
    help_settings.ui \
    label_settings.ui \
    mainwindow.ui \
    scale_settings.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target



INCLUDEPATH += D:\software\PCL1.12.1\include\pcl-1.12\
INCLUDEPATH += D:\software\PCL1.12.1\include\pcl-1.12\pcl
INCLUDEPATH += D:\software\PCL1.12.1\3rdParty\OpenNI2\include\
INCLUDEPATH += D:\software\PCL1.12.1\3rdParty\Boost\include\boost-1_78\
INCLUDEPATH += D:\software\PCL1.12.1\3rdParty\Eigen\eigen3\
INCLUDEPATH += D:\software\PCL1.12.1\3rdParty\FLANN\include\
INCLUDEPATH += D:\software\PCL1.12.1\3rdParty\FLANN\include\flann\
INCLUDEPATH += D:\software\PCL1.12.1\3rdParty\Qhull\include\
INCLUDEPATH += D:\software\PCL1.12.1\3rdParty\VTK_build\include\vtk-9.1


LIBS += D:\software\PCL1.12.1\lib\pcl_common.lib
LIBS += D:\software\PCL1.12.1\lib\pcl_features.lib
LIBS += D:\software\PCL1.12.1\lib\pcl_filters.lib
LIBS += D:\software\PCL1.12.1\lib\pcl_io.lib
LIBS += D:\software\PCL1.12.1\lib\pcl_io_ply.lib
LIBS += D:\software\PCL1.12.1\lib\pcl_kdtree.lib
LIBS += D:\software\PCL1.12.1\lib\pcl_keypoints.lib
LIBS += D:\software\PCL1.12.1\lib\pcl_ml.lib
LIBS += D:\software\PCL1.12.1\lib\pcl_octree.lib
LIBS += D:\software\PCL1.12.1\lib\pcl_outofcore.lib
LIBS += D:\software\PCL1.12.1\lib\pcl_people.lib
LIBS += D:\software\PCL1.12.1\lib\pcl_recognition.lib
LIBS += D:\software\PCL1.12.1\lib\pcl_registration.lib
LIBS += D:\software\PCL1.12.1\lib\pcl_sample_consensus.lib
LIBS += D:\software\PCL1.12.1\lib\pcl_search.lib
LIBS += D:\software\PCL1.12.1\lib\pcl_segmentation.lib
LIBS += D:\software\PCL1.12.1\lib\pcl_stereo.lib
LIBS += D:\software\PCL1.12.1\lib\pcl_surface.lib
LIBS += D:\software\PCL1.12.1\lib\pcl_tracking.lib
LIBS += D:\software\PCL1.12.1\lib\pcl_visualization.lib

LIBS += D:\software\PCL1.12.1\3rdParty\Boost\lib\libboost_atomic-vc142-mt-x64-1_78.lib
LIBS += D:\software\PCL1.12.1\3rdParty\Boost\lib\libboost_bzip2-vc142-mt-x64-1_78.lib
LIBS += D:\software\PCL1.12.1\3rdParty\Boost\lib\libboost_chrono-vc142-mt-x64-1_78.lib
LIBS += D:\software\PCL1.12.1\3rdParty\Boost\lib\libboost_container-vc142-mt-x64-1_78.lib
LIBS += D:\software\PCL1.12.1\3rdParty\Boost\lib\libboost_context-vc142-mt-x64-1_78.lib
LIBS += D:\software\PCL1.12.1\3rdParty\Boost\lib\libboost_contract-vc142-mt-x64-1_78.lib
LIBS += D:\software\PCL1.12.1\3rdParty\Boost\lib\libboost_coroutine-vc142-mt-x64-1_78.lib
LIBS += D:\software\PCL1.12.1\3rdParty\Boost\lib\libboost_date_time-vc142-mt-x64-1_78.lib
LIBS += D:\software\PCL1.12.1\3rdParty\Boost\lib\libboost_exception-vc142-mt-x64-1_78.lib
LIBS += D:\software\PCL1.12.1\3rdParty\Boost\lib\libboost_filesystem-vc142-mt-x64-1_78.lib
LIBS += D:\software\PCL1.12.1\3rdParty\Boost\lib\libboost_graph-vc142-mt-x64-1_78.lib
LIBS += D:\software\PCL1.12.1\3rdParty\Boost\lib\libboost_graph_parallel-vc142-mt-x64-1_78.lib
LIBS += D:\software\PCL1.12.1\3rdParty\Boost\lib\libboost_iostreams-vc142-mt-x64-1_78.lib
LIBS += D:\software\PCL1.12.1\3rdParty\Boost\lib\libboost_json-vc142-mt-x64-1_78.lib
LIBS += D:\software\PCL1.12.1\3rdParty\Boost\lib\libboost_locale-vc142-mt-gd-x64-1_78.lib
LIBS += D:\software\PCL1.12.1\3rdParty\Boost\lib\libboost_locale-vc142-mt-x64-1_78.lib
LIBS += D:\software\PCL1.12.1\3rdParty\Boost\lib\libboost_log-vc142-mt-x64-1_78.lib
LIBS += D:\software\PCL1.12.1\3rdParty\Boost\lib\libboost_log_setup-vc142-mt-x64-1_78.lib
LIBS += D:\software\PCL1.12.1\3rdParty\Boost\lib\libboost_math_c99-vc142-mt-x64-1_78.lib
LIBS += D:\software\PCL1.12.1\3rdParty\Boost\lib\libboost_math_c99f-vc142-mt-x64-1_78.lib
LIBS += D:\software\PCL1.12.1\3rdParty\Boost\lib\libboost_math_c99l-vc142-mt-x64-1_78.lib
LIBS += D:\software\PCL1.12.1\3rdParty\Boost\lib\libboost_math_tr1-vc142-mt-x64-1_78.lib
LIBS += D:\software\PCL1.12.1\3rdParty\Boost\lib\libboost_math_tr1f-vc142-mt-x64-1_78.lib
LIBS += D:\software\PCL1.12.1\3rdParty\Boost\lib\libboost_math_tr1l-vc142-mt-x64-1_78.lib
LIBS += D:\software\PCL1.12.1\3rdParty\Boost\lib\libboost_mpi-vc142-mt-x64-1_78.lib
LIBS += D:\software\PCL1.12.1\3rdParty\Boost\lib\libboost_nowide-vc142-mt-x64-1_78.lib
LIBS += D:\software\PCL1.12.1\3rdParty\Boost\lib\libboost_numpy38-vc142-mt-x64-1_78.lib
LIBS += D:\software\PCL1.12.1\3rdParty\Boost\lib\libboost_prg_exec_monitor-vc142-mt-x64-1_78.lib
LIBS += D:\software\PCL1.12.1\3rdParty\Boost\lib\libboost_program_options-vc142-mt-x64-1_78.lib
LIBS += D:\software\PCL1.12.1\3rdParty\Boost\lib\libboost_python38-vc142-mt-x64-1_78.lib
LIBS += D:\software\PCL1.12.1\3rdParty\Boost\lib\libboost_random-vc142-mt-x64-1_78.lib
LIBS += D:\software\PCL1.12.1\3rdParty\Boost\lib\libboost_regex-vc142-mt-x64-1_78.lib
LIBS += D:\software\PCL1.12.1\3rdParty\Boost\lib\libboost_serialization-vc142-mt-x64-1_78.lib
LIBS += D:\software\PCL1.12.1\3rdParty\Boost\lib\libboost_system-vc142-mt-x64-1_78.lib
LIBS += D:\software\PCL1.12.1\3rdParty\Boost\lib\libboost_test_exec_monitor-vc142-mt-x64-1_78.lib
LIBS += D:\software\PCL1.12.1\3rdParty\Boost\lib\libboost_thread-vc142-mt-x64-1_78.lib
LIBS += D:\software\PCL1.12.1\3rdParty\Boost\lib\libboost_timer-vc142-mt-x64-1_78.lib
LIBS += D:\software\PCL1.12.1\3rdParty\Boost\lib\libboost_type_erasure-vc142-mt-x64-1_78.lib
LIBS += D:\software\PCL1.12.1\3rdParty\Boost\lib\libboost_unit_test_framework-vc142-mt-x64-1_78.lib
LIBS += D:\software\PCL1.12.1\3rdParty\Boost\lib\libboost_wave-vc142-mt-x64-1_78.lib
LIBS += D:\software\PCL1.12.1\3rdParty\Boost\lib\libboost_wserialization-vc142-mt-x64-1_78.lib
LIBS += D:\software\PCL1.12.1\3rdParty\Boost\lib\libboost_zlib-vc142-mt-x64-1_78.lib

LIBS += D:\software\PCL1.12.1\3rdParty\FLANN\lib\flann.lib
LIBS += D:\software\PCL1.12.1\3rdParty\FLANN\lib\flann_cpp.lib
LIBS += D:\software\PCL1.12.1\3rdParty\FLANN\lib\flann_cpp_s.lib
LIBS += D:\software\PCL1.12.1\3rdParty\FLANN\lib\flann_s.lib

LIBS += D:\software\PCL1.12.1\3rdParty\OpenNI2\Lib\OpenNI2.lib

LIBS += D:\software\PCL1.12.1\3rdParty\Qhull\lib\qhullcpp.lib
LIBS += D:\software\PCL1.12.1\3rdParty\Qhull\lib\qhullstatic.lib
LIBS += D:\software\PCL1.12.1\3rdParty\Qhull\lib\qhullstatic_r.lib
LIBS += D:\software\PCL1.12.1\3rdParty\Qhull\lib\qhull_r.lib

LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkcgns-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkChartsCore-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkCommonColor-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkCommonComputationalGeometry-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkCommonCore-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkCommonDataModel-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkCommonExecutionModel-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkCommonMath-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkCommonMisc-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkCommonSystem-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkCommonTransforms-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkDICOMParser-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkDomainsChemistry-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkDomainsChemistryOpenGL2-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkdoubleconversion-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkexodusII-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkexpat-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkFiltersAMR-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkFiltersCore-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkFiltersExtraction-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkFiltersFlowPaths-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkFiltersGeneral-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkFiltersGeneric-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkFiltersGeometry-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkFiltersHybrid-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkFiltersHyperTree-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkFiltersImaging-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkFiltersModeling-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkFiltersParallel-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkFiltersParallelImaging-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkFiltersPoints-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkFiltersProgrammable-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkFiltersSelection-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkFiltersSMP-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkFiltersSources-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkFiltersStatistics-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkFiltersTexture-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkFiltersTopology-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkFiltersVerdict-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkfmt-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkfreetype-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkGeovisCore-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkgl2ps-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkglew-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkGUISupportQt-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkGUISupportQtQuick-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkGUISupportQtSQL-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkhdf5-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkhdf5_hl-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkImagingColor-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkImagingCore-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkImagingFourier-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkImagingGeneral-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkImagingHybrid-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkImagingMath-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkImagingMorphological-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkImagingSources-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkImagingStatistics-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkImagingStencil-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkInfovisCore-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkInfovisLayout-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkInteractionImage-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkInteractionStyle-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkInteractionWidgets-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkIOAMR-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkIOAsynchronous-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkIOCGNSReader-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkIOChemistry-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkIOCityGML-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkIOCONVERGECFD-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkIOCore-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkIOEnSight-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkIOExodus-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkIOExport-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkIOExportGL2PS-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkIOExportPDF-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkIOGeometry-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkIOHDF-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkIOImage-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkIOImport-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkIOInfovis-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkIOIOSS-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkIOLegacy-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkIOLSDyna-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkIOMINC-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkIOMotionFX-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkIOMovie-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkIONetCDF-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkIOOggTheora-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkIOParallel-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkIOParallelXML-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkIOPLY-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkIOSegY-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkIOSQL-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkioss-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkIOTecplotTable-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkIOVeraOut-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkIOVideo-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkIOXML-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkIOXMLParser-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkjpeg-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkjsoncpp-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkkissfft-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtklibharu-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtklibproj-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtklibxml2-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkloguru-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtklz4-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtklzma-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkmetaio-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtknetcdf-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkogg-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkParallelCore-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkParallelDIY-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkpng-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkpugixml-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkRenderingAnnotation-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkRenderingContext2D-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkRenderingContextOpenGL2-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkRenderingCore-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkRenderingFreeType-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkRenderingGL2PSOpenGL2-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkRenderingImage-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkRenderingLabel-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkRenderingLOD-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkRenderingOpenGL2-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkRenderingQt-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkRenderingSceneGraph-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkRenderingUI-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkRenderingVolume-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkRenderingVolumeOpenGL2-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkRenderingVtkJS-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtksqlite-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtksys-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkTestingRendering-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtktheora-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtktiff-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkverdict-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkViewsContext2D-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkViewsCore-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkViewsInfovis-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkViewsQt-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkWrappingTools-9.1.lib
LIBS += D:\software\PCL1.12.1\3rdParty\VTK_build\lib\vtkzlib-9.1.lib


msvc {
      QMAKE_CFLAGS += /utf-8
      QMAKE_CXXFLAGS += /utf-8
}


RC_ICONS = ./ico/cloud_label.ico

RESOURCES += \
    icons.qrc
