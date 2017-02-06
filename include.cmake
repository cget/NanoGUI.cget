file(COPY "${REPO_DIR}/FindNanoGUI.cmake" DESTINATION "${CGET_INSTALL_DIR}/lib/cmake")
file(COPY "${REPO_DIR}/FindGLFW.cmake" DESTINATION "${CGET_INSTALL_DIR}/lib/cmake")
CGET_HAS_DEPENDENCY(Eigen3 GITHUB RLovelett/eigen VERSION 3.2.9 NO_FIND_PACKAGE)
file(COPY "${CGET_Eigen3_REPO_DIR}/cmake/FindEigen3.cmake" DESTINATION "${CGET_INSTALL_DIR}/lib/cmake")

find_package(Eigen3)

CGET_GET_PACKAGE(nanovg GITHUB memononen/nanovg)
file(GLOB NANOVG_HEADERS "${CGET_nanovg_REPO_DIR}/src/*.h")
file(COPY ${NANOVG_HEADERS} DESTINATION "${CGET_INSTALL_DIR}/include/nanovg/")

CGET_HAS_DEPENDENCY(GLFW GITHUB glfw/glfw VERSION 3.1.2)
CGET_HAS_DEPENDENCY(NanoGUI GITHUB wjakob/nanogui VERSION master)
