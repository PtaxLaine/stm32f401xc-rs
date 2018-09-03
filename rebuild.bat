@setlocal
@echo off

bindgen ^
--generate-inline-functions ^
--rust-target nightly ^
--use-core ^
--no-layout-tests ^
--ctypes-prefix ::cty ^
-o src/stm32f401xc.rs ^
inc/stm32f401xc.h ^
-- ^
--target=thumbv7em-none-eabihf ^
-I"W:\Program Files Portable\gcc-arm-none-eabi-6-2017-q1-update-win32\lib\gcc\arm-none-eabi\6.3.1\include" ^
-I"W:\Program Files Portable\gcc-arm-none-eabi-6-2017-q1-update-win32\arm-none-eabi\include"

cargo fmt
cargo xbuild --target thumbv7em-none-eabihf

endlocal
