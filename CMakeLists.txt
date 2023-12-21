# CustomDisplay global cmake file

# CMake minimum version required
cmake_minimum_required(VERSION 3.15)

# Set enviroment
set(PACKAGE_NAME    "CustomDisplay")
set(PACKAGE_VERSION "0.1.0")
set(IDDDRIVER_VERSION 0x0001)

project(${PACKAGE_NAME}
        LANGUAGES C CXX
        VERSION ${PACKAGE_VERSION})

# Set build Configurations
set(CMAKE_CONFIGURATION_TYPES Debug Release)

# Open floder
set_property(GLOBAL PROPERTY USE_FOLDERS ON)

# Set enviroment
add_definitions(-DUNICODE)
add_definitions(-D_UNICODE)

# Add external header files
include_directories(${PROJECT_SOURCE_DIR}/nvapi)

# Add external libs
link_directories(${PROJECT_SOURCE_DIR}/nvapi/amd64)

set(CustomDisplay_SRC
    src/CustomDisplay.cpp
    src/targetver.h
)

add_executable(${PACKAGE_NAME} ${CustomDisplay_SRC})

target_link_libraries(${PACKAGE_NAME}    
    nvapi64
)
