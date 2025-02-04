project "yaml-cpp"
	kind "StaticLib"
	language "C++"
	staticruntime "off"

	targetdir ("../../../Binaries/" .. outputdir .. "/%{prj.name}")
	objdir ("../../../Binaries-Int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"src/**.h",
		"src/**.cpp",
		"include/**.h"
	}
	
	includedirs
	{
		"include"
	}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++20"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
