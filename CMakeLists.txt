cmake_minimum_required(VERSION 3.25)

list(APPEND CMAKE_MODULE_PATH 
	"${CMAKE_CURRENT_LIST_DIR}/src/cmake/"
)

include(cmake-scripts/gitversion)
gitversion()

project(resume
	VERSION ${GIT_VERSION_TAG}
	HOMEPAGE_URL https://github.com/Dolfost/resume
	LANGUAGES NONE
)

add_subdirectory(src)
