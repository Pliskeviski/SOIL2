project "SOIL2"
	kind "StaticLib"
	language "C"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	
	files {
	"incs/*.h",
	"srcs/*.c",
	}

	includedirs
	{
		"incs",
	}
		
	filter "system:windows"
        systemversion "latest"
        staticruntime "On"

		defines 
		{ 
            "_CRT_SECURE_NO_WARNINGS"
		}
		
    filter "system:windows"
        systemversion "latest"
        staticruntime "On"
        
    filter { "system:windows", "configurations:Release" }
        buildoptions "/MT"
		
		