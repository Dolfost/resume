message("==>> Configuring...")
execute_process( # configuration
	COMMAND "${CMAKE_COMMAND}" -B build -S . 
	WORKING_DIRECTORY "$ENV{REPO}"
	COMMAND_ERROR_IS_FATAL ANY
)

file(MAKE_DIRECTORY "$ENV{REPO}/build")

message("==>> Building...")
execute_process( # building
	COMMAND "${CMAKE_COMMAND}" --build build
	WORKING_DIRECTORY "$ENV{REPO}"
	COMMAND_ERROR_IS_FATAL ANY
)
