file(COPY "${REPO_DIR}/FindNANOGUI.cmake" DESTINATION "${CGET_INSTALL_DIR}/lib/cmake")
CGET_HAS_DEPENDENCY(NANOGUI GITHUB wjakob/nanogui VERSION master)
