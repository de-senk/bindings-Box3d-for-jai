
//idk how to include a folder using build_cpp procedure.
BOX3D_MAIN_HEADER_FILE_RELATIVE_PATH :: "-I\\box3d-0.1.0\\include";
//BOX3D_MAIN_C_FILE_RELATIVE_PATH_FOR_COMPILING :: "./box3d-0.1.0/src/main.c";


BOX3D_INCLUDE_FILES :: string.[
	"./box3d-0.1.0/include/box3d/box3d.h",
	"./box3d-0.1.0/include/box3d/base.h",
	"./box3d-0.1.0/include/box3d/collision.h",
	"./box3d-0.1.0/include/box3d/config.h",
	"./box3d-0.1.0/include/box3d/constants.h",
	"./box3d-0.1.0/include/box3d/id.h",
	"./box3d-0.1.0/include/box3d/math_functions.h",
	"./box3d-0.1.0/include/box3d/types.h",
];
//this is copied and sligthly modified from "./src/CMakeLists.txt"
BOX3D_SOURCE_FILES :: string.[
    "./box3d-0.1.0/src/aabb.c",
	"./box3d-0.1.0/src/aabb.h",
	"./box3d-0.1.0/src/algorithm.h",
	"./box3d-0.1.0/src/arena_allocator.c",
	"./box3d-0.1.0/src/arena_allocator.h",
	"./box3d-0.1.0/src/bitset.c",
	"./box3d-0.1.0/src/bitset.h",
	"./box3d-0.1.0/src/block_allocator.c",
	"./box3d-0.1.0/src/block_allocator.h",
	"./box3d-0.1.0/src/body.c",
	"./box3d-0.1.0/src/body.h",
	"./box3d-0.1.0/src/broad_phase.c",
	"./box3d-0.1.0/src/broad_phase.h",
	"./box3d-0.1.0/src/capsule.c",
	"./box3d-0.1.0/src/compound.c",
	"./box3d-0.1.0/src/compound.h",
	"./box3d-0.1.0/src/constraint_graph.c",
	"./box3d-0.1.0/src/constraint_graph.h",
	"./box3d-0.1.0/src/contact.c",
	"./box3d-0.1.0/src/contact.h",
	"./box3d-0.1.0/src/contact_solver.c",
	"./box3d-0.1.0/src/contact_solver.h",
	"./box3d-0.1.0/src/container.h",
	"./box3d-0.1.0/src/convex_manifold.c",
	"./box3d-0.1.0/src/core.c",
	"./box3d-0.1.0/src/core.h",
	"./box3d-0.1.0/src/ctz.h",
	"./box3d-0.1.0/src/distance.c",
	"./box3d-0.1.0/src/distance_joint.c",
	"./box3d-0.1.0/src/dynamic_tree.c",
	"./box3d-0.1.0/src/height_field.c",
	"./box3d-0.1.0/src/hull.c",
	"./box3d-0.1.0/src/id_pool.c",
	"./box3d-0.1.0/src/id_pool.h",
	"./box3d-0.1.0/src/island.c",
	"./box3d-0.1.0/src/island.h",
	"./box3d-0.1.0/src/joint.c",
	"./box3d-0.1.0/src/joint.h",
	"./box3d-0.1.0/src/manifold.c",
	"./box3d-0.1.0/src/manifold.h",
	"./box3d-0.1.0/src/math_functions.c",
	"./box3d-0.1.0/src/math_internal.h",
	"./box3d-0.1.0/src/mesh.c",
	"./box3d-0.1.0/src/mesh_contact.c",
	"./box3d-0.1.0/src/motor_joint.c",
	"./box3d-0.1.0/src/mover.c",
	"./box3d-0.1.0/src/parallel_for.c",
	"./box3d-0.1.0/src/parallel_for.h",
	"./box3d-0.1.0/src/parallel_joint.c",
	"./box3d-0.1.0/src/physics_world.c",
	"./box3d-0.1.0/src/physics_world.h",
	"./box3d-0.1.0/src/platform.h",
	"./box3d-0.1.0/src/prismatic_joint.c",
	"./box3d-0.1.0/src/qsort.h",
	"./box3d-0.1.0/src/recording.c",
	"./box3d-0.1.0/src/recording.h",
	"./box3d-0.1.0/src/recording_ops.inl",
	"./box3d-0.1.0/src/recording_replay.c",
	"./box3d-0.1.0/src/recording_replay.h",
	"./box3d-0.1.0/src/world_snapshot.c",
	"./box3d-0.1.0/src/world_snapshot.h",
	"./box3d-0.1.0/src/revolute_joint.c",
	"./box3d-0.1.0/src/scheduler.c",
	"./box3d-0.1.0/src/scheduler.h",
	"./box3d-0.1.0/src/sensor.c",
	"./box3d-0.1.0/src/sensor.h",
	"./box3d-0.1.0/src/shape.c",
	"./box3d-0.1.0/src/shape.h",
	"./box3d-0.1.0/src/simd.c",
	"./box3d-0.1.0/src/simd.h",
	"./box3d-0.1.0/src/solver.c",
	"./box3d-0.1.0/src/solver.h",
	"./box3d-0.1.0/src/solver_set.c",
	"./box3d-0.1.0/src/solver_set.h",
	"./box3d-0.1.0/src/sphere.c",
	"./box3d-0.1.0/src/spherical_joint.c",
	"./box3d-0.1.0/src/table.c",
	"./box3d-0.1.0/src/table.h",
	"./box3d-0.1.0/src/timer.c",
	"./box3d-0.1.0/src/triangle_manifold.c",
	"./box3d-0.1.0/src/types.c",
	"./box3d-0.1.0/src/verstable.h",
	"./box3d-0.1.0/src/weld_joint.c",
	"./box3d-0.1.0/src/wheel_joint.c",
	"./box3d-0.1.0/src/box3d.natvis",
];

AT_COMPILE_TIME :: true;

PS5_SUPPORT      :: false;
NINTENDO_SUPPORT :: #run to_string(getenv("NINTENDO_SDK_ROOT")) != "";

LIB_BASE_NAME :: "box3d";

#if AT_COMPILE_TIME {
    #run,stallable {
        set_build_options_dc(.{do_output=false});
        options := get_build_options();
        args := options.compile_time_command_line;
        if !generate_bindings(args, options.minimum_os_version) {
            compiler_set_workspace_status(.FAILED);
        }
    }
} else {
    #import "System";

    main :: () {
        set_working_directory(path_strip_filename(get_path_of_running_executable()));
        if !generate_bindings(get_command_line_arguments(), #run get_build_options().minimum_os_version) {
            exit(1);
        }
    }
}

generate_bindings :: (args: [] string, minimum_os_version: type_of(Build_Options.minimum_os_version)) -> bool {
    using BG;
    target_android := array_find(args, "-android");
    
    target_ps5     := array_find(args, "-ps5");
    target_x64     := array_find(args, "-x64");
    target_arm     := array_find(args, "-arm64");
    compile        := array_find(args, "-compile") | array_find(args, "--compile");
    compile_debug  := array_find(args, "-debug");

    os_target  := OS;
    cpu_target := CPU;
    if target_android os_target  = .ANDROID;

    if target_ps5     os_target  = .PS5;

    if target_x64     cpu_target = .X64;
    if target_arm     cpu_target = .ARM64;

    build_dynamic_lib := true;
    lib_directory: string;
    if os_target == {
        case .WINDOWS;
            lib_directory = "windows";
        case .LINUX;
            lib_directory = "linux";
        case .MACOS;
            lib_directory = "macos";
        case .ANDROID;
            lib_directory = ifx cpu_target == .X64 then "android/x64" else "android/arm64";
        case .PS5;
            build_dynamic_lib = false;
            lib_directory = "ps5";
        case;
            assert(false);
    }

    if compile {
        make_directory_if_it_does_not_exist(lib_directory, recursive = true);
        lib_path := tprint("%/%", lib_directory, LIB_BASE_NAME);
        success := true;
        if os_target == .MACOS {
            success &&= Build_Cpp.build_universal_macos_binary(lib_path, ..BOX3D_SOURCE_FILES, type = .DYNAMIC_LIBRARY, debug = compile_debug);
            success &&= Build_Cpp.build_universal_macos_binary(lib_path, ..BOX3D_SOURCE_FILES, type = .STATIC_LIBRARY,  debug = compile_debug);
        } else {
            extra: [..] string;
            if os_target == .ANDROID {
                _, target_triple_with_sdk := get_android_target_triple(cpu_target);
                array_add(*extra, "-target", target_triple_with_sdk);
            }
            if os_target == .WINDOWS {
                array_add(*extra, "-DSTBIW_WINDOWS_UTF8");
            } else {
                array_add(*extra, "-fPIC");
            }
            array_add(*extra, BOX3D_MAIN_HEADER_FILE_RELATIVE_PATH);

            if build_dynamic_lib {
                success &&= Build_Cpp.build_cpp_dynamic_lib(lib_path, ..BOX3D_SOURCE_FILES, target = os_target, debug = compile_debug, extra = extra);
            }
            success &&= Build_Cpp.build_cpp_static_lib(lib_path, ..BOX3D_SOURCE_FILES, target = os_target, debug = compile_debug, extra = extra);
        }

        if !success     return false;
    }

    options: Generate_Bindings_Options;
    options.os = os_target;
    options.cpu = cpu_target;
    {
        using options;

        try_to_preserve_comments = false;

        array_add(*library_search_paths, lib_directory);
        array_add(*libraries, .{filename=LIB_BASE_NAME});
        array_add(*source_files, ..BOX3D_INCLUDE_FILES);

        header = tprint(HEADER_TEMPLATE, LIB_BASE_NAME);

        generate_library_declarations = false;
        footer = tprint(FOOTER_TEMPLATE, LIB_BASE_NAME);

        auto_detect_enum_prefixes = true;
        log_stripped_declarations = false;
        generate_compile_time_struct_checks = false;
    }

    output_filename := "bindings.jai";
    return generate_bindings(options, output_filename);
}

// As of v1.16 these functions are tagged STBIWDEF (ie, to be exported) at their definition, but they are not forward declared
// at the top of the header file so the bindings generator does not pick them up.
// The zlib_compress one is pretty useful while there is currently no jai zlib module, so we manually declare them here.
HEADER_TEMPLATE :: #string END


END

FOOTER_TEMPLATE :: #string END

#if OS == .WINDOWS {
    %1 :: #library,no_dll "windows/%1";
} else #if OS == .LINUX {
    %1 :: #library "linux/%1";
} else #if OS == .MACOS {
    %1 :: #library "macos/%1";
} else #if OS == .ANDROID {
    #if CPU == .X64 {
        %1 :: #library "android/x64/%1";
    } else #if CPU == .ARM64 {
        %1 :: #library "android/arm64/%1";
    }
} else #if OS == .PS5 {
    %1 :: #library "ps5/%1";
} else {
    #assert false;
}

END


#import "Basic";
BG :: #import "Bindings_Generator"(NINTENDO_SUPPORT = NINTENDO_SUPPORT);
Build_Cpp :: #import "BuildCpp"()(PS5_SUPPORT = PS5_SUPPORT, NINTENDO_SUPPORT = NINTENDO_SUPPORT);
#import "Compiler";
#import "File";
#import "Android/Toolchain";
#if OS == .WINDOWS {
    #import "Windows";
} else {
    #import "POSIX";
}

