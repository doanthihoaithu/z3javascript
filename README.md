#Z3 JS

A project to try and get Z3 running as a Javascript library. The project functions either in DLL mode, opening up as a dylib, or as a emscripten binding.
The project also includes a convienience wrapper to wrap ASTs.

DLL support is fairly stable - though Expr memory management has to be explicit and no good solution has been found.

NOTE: `Z3_PATH` environment variable should point to the Z3 .so .dll or .dylib

Emscripten support is new, buggy and not recomended. if `Z3_WEB` env variable is set Z3 will build in emscripten and the wrapper will automatically use the emscripten bindings but support is new. To use the emscripten build you will need the mem created by `Z3_WEB=true` npm install in the current working directory of the application running Z3.

#Usage

Used as an npm dependancy.

npm install `GIT PATH`

Z3 will be automatically downloaded and built using either emscripten or clang. Uses a forked version of Z3 to maintain compatability with wrapper and build bindings automatically.

From then, simply point `Z3_PATH` to the generated dll, so, etc using something like `Z3_PATH=./node_modules/z3javascript/bin/libz3.dylib node myapplication.js`

#Dependancies
Node JS (We test on version 7), python, build-essential,  git, clang++ or g++ will work as a cpp compiler for Z3.
On Ubuntu gcc, g++ multilib may also be needed (gcc-4.8-multilib, g++-4.8-multilib).

#Setup
To initially setup run `npm install`

#Rebuilding
To recompile the emscripten binding run ./scripts/build_z3.sh
To recompile the native library run ./scripts/build_z3_std.sh