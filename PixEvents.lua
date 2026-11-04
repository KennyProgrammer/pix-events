--
-- Main Premake5 file for building PixEvents project.
-- Copyright (c) 2026-2026 by Danil (Kenny) Dukhovenko, All rights reserved.
--
-- Requirement:
--  - ForceEngine.lua
--

-- PixEvents C++ Project
project "PixEvents"
	kind          "StaticLib"
	language      "C++"
	cppdialect    "C++20"
	staticruntime "On"
	targetdir     ("%{ForceDir.BinLib}/" .. BuildDir .. "/%{prj.name}/Lib")
	objdir        ("%{ForceDir.BinLib}/" .. BuildDir .. "/%{prj.name}/Obj")

	files {
		"include/**.h",
		"src/**.cpp"
	}
	
	includedirs {
		"include"
	}

	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"