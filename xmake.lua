add_requires("libhv")
-- add_requires("glew")
-- add_requires("opengl")
-- add_requires("libcurl",{alias="curl"})

-- vs开发使用
add_rules("mode.release","mode.debug")

target("RuntimeDebugger")
    set_kind("binary")
    set_languages("cxx17")
    set_arch("x64")
    add_files("src/**.cpp")
    add_packages("libhv")
    --add_includedirs("hv")
    if is_plat("windows") then
        add_defines("TEST")
    end
    --

-- xmake f -p windows -a x64
-- 生成clion可识别的 compile_commands
-- xmake project -k compile_commands