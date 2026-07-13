//
//idk how to include a folder using build_cpp procedure.
box3d_dir :: "box3d-0.1.0";
cmake_build_dir :: #run tprint("%/build", box3d_dir);

BOX3D_MAIN_HEADER_FILE_RELATIVE_PATH :: "-I\\box3d-0.1.0\\include";


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
    cmake_preset: string;
    build_preset: string;
    lib_file_pattern: string;
    
    if os_target == {
        case .WINDOWS;
            lib_directory = "windows";
            cmake_preset = "windows";
            build_preset = "windows-release";
            lib_file_pattern = "box3d.lib";
        case .LINUX;
            lib_directory = "linux";
            cmake_preset = "linux-release";
            build_preset = "linux-release";
            lib_file_pattern = "box3d.a";
        case .MACOS;
            lib_directory = "macos";
            cmake_preset = "macos";
            build_preset = "macos-release";
            lib_file_pattern = "box3d.a";
        case .ANDROID;
            lib_directory = ifx cpu_target == .X64 then "android/x64" else "android/arm64";
            cmake_preset = "linux-release";
            build_preset = "linux-release";
            lib_file_pattern = "box3d.a";
        case .PS5;
            build_dynamic_lib = false;
            lib_directory = "ps5";
            cmake_preset = "ps5";
            build_preset = "ps5-release";
            lib_file_pattern = "box3d.a";
        case;
            assert(false);
    }

    if compile {
        make_directory_if_it_does_not_exist(lib_directory, recursive = true);
        
        success := compile_with_cmake(lib_directory, cmake_preset, build_preset, compile_debug, os_target);
        if !success return false;
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

        //here the thingy to replace definitons, just dont forget to also add them in HADER, FOOTER is canpsualted in #scope_file
        visitor = (decl: *Declaration, parent_decl: *Declaration) -> Declaration_Visit_Result {
            if decl.kind == .STRUCT && (
                decl.name == "b3Vec2" 
                || decl.name == "b3Vec3"
                ) {
                decl.decl_flags |= .OMIT_FROM_OUTPUT;
                return .STOP; 
            }
            return .RECURSE;
        };
        
    }

    output_filename := "bindings.jai";
    return generate_bindings(options, output_filename);
}

HEADER_TEMPLATE :: #string END
//from core.h
B3_SECRET_COOKIE :: 1152023; 

//from core.c
// This allows the user to change the length units at runtime
// b3_lengthUnitsPerMeter: float = 1.0; 

b3Vec2 :: Vector2;
b3Vec3 :: Vector3;
b3Quat_identity :b3Quat: { { 0.0, 0.0, 0.0 }, 1.0 };

END

FOOTER_TEMPLATE :: #string END

#if OS == .WINDOWS {
    %1 :: #library,no_dll "windows/%1";
} else #if OS == .LINUX {
    %1 :: #library,no_dll "linux/%1";
} else #if OS == .MACOS {
    %1 :: #library,no_dll "macos/%1";
} else #if OS == .ANDROID {
    #if CPU == .X64 {
        %1 :: #library,no_dll "android/x64/%1";
    } else #if CPU == .ARM64 {
        %1 :: #library,no_dll "android/arm64/%1";
    }
} else #if OS == .PS5 {
    %1 :: #library,no_dll "ps5/%1";
} else {
    #assert false;
}

END

compile_with_cmake :: (lib_directory: string, cmake_preset: string, build_preset: string, debug: bool, os_target: type_of(OS)) -> bool {
    
    old_dir := get_working_directory();
    defer set_working_directory(old_dir);
    set_working_directory(box3d_dir);
    
    // Run cmake configure step
    print("Running CMake configure with preset: %\n", cmake_preset);
    configure_cmd := tprint("cmake --preset %", cmake_preset);
    #import "String";
    arr_configure_cmd :=  split(configure_cmd, " "); // Split the command into an array of strings
   run_or_exit(arr_configure_cmd, get_working_directory()) ;    
    // Run cmake build step
    print("Running CMake build with preset: %\n", build_preset);
    build_cmd := tprint("cmake --build --preset %", build_preset);
    arr_build_cmd :=  split(build_cmd, " "); // Split the command into an array of strings
    run_or_exit(arr_build_cmd, get_working_directory());
    
    // Go back to original directory for copying
    set_working_directory(old_dir);
    
    // Copy the compiled library to the destination directory
    print("Copying compiled library to %\n", lib_directory);
    if !copy_compiled_library(box3d_dir, lib_directory, os_target, debug) {
        print("ERROR: Failed to copy compiled library\n");
        return false;
    }
    
    print("Successfully compiled and copied box3d library\n");
    return true;
}

run_or_exit :: (command: [] string, working_directory: string) {
    // Enable this to see the commands being executed.
    // print("Executing command \"%\" in directory \"%\"\n", join(..command, separator = " "), working_directory);

    result, output_string, error_string := run_command(..command, working_directory = working_directory, capture_and_return_output = true, print_captured_output = true);
    defer {
        free(output_string);
        free(error_string);
    }
    if result.exit_code != 0 {
        log_error("Could not run command \"%\" in directory \"%\". Exit code: %\nError:\n%", get_quoted_command_string(command), working_directory, result.exit_code, error_string);
        exit(1);
    }
}

execute_command :: (command: string) -> Process_Result {
    Process :: #import "Process";
    
    return Process.run_command(command);
}

copy_compiled_library :: (box3d_dir: string, dest_dir: string, os_target: type_of(OS), debug: bool) -> bool {
    
    source_path: string;
    if os_target == {
        case .WINDOWS;
            source_path = tprint("%/src/Release/box3d.lib", cmake_build_dir);
        case .LINUX;
            source_path = tprint("%/src/Release/box3d.a", cmake_build_dir);
        case .MACOS;
            source_path = tprint("%/src/Release/box3d.a", cmake_build_dir);
        case .ANDROID;
            source_path = tprint("%/src/Release/box3d.a", cmake_build_dir);
        case .PS5;
            source_path = tprint("%/src/Release/box3d.a", cmake_build_dir);
        case;
            print("ERROR: Unknown OS target\n");
            return false;
    }
    
    dest_path := tprint("%/box3d.lib", dest_dir);
    if os_target != .WINDOWS {
        if debug {
            dest_path = tprint("%/box3d_d.a", dest_dir);
        } else {
            dest_path = tprint("%/box3d.a", dest_dir);
        }
    }
    
    print("Copying from: %\n", source_path);
    print("Copying to: %\n", dest_path);
    
    if !file_exists(source_path) {
        print("ERROR: Source library not found at: %\n", source_path);
        return false;
    }
    
    if !copy_file(source_path, dest_path) {
        print("ERROR: Failed to copy file from % to %\n", source_path, dest_path);
        return false;
    }
    
    return true;
}

#import "Basic";
BG :: #import "Bindings_Generator"(NINTENDO_SUPPORT = NINTENDO_SUPPORT);
#import "Compiler";
#import "File";
#import "File_Utilities";
#import "Android/Toolchain";
#import "Process";
#if OS == .WINDOWS {
    #import "Windows";
} else {
    #import "POSIX";
}

