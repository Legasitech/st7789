set(ESP32_FAM_PORTED_OBJECT_TARGETS)

set(ESP32_FAM_ASSETS_SCRIPT "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/tools/fam/compile_icons.py")
set(ESP32_FAM_RUNTIME_ROOT "${ESP32_FAM_GENERATED_DIR}/fam_runtime_root")
set(ESP32_FAM_RUNTIME_EXT_ROOT "${ESP32_FAM_RUNTIME_ROOT}/ext")
set(ESP32_FAM_STAGE_ASSETS_STAMP "${ESP32_FAM_RUNTIME_ROOT}/.assets.stamp")

add_library(esp32_fam_app_cli OBJECT
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/cli/cli_main_commands.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/cli/cli_main_shell.c"
)
target_include_directories(esp32_fam_app_cli PRIVATE
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/cli"
)
target_compile_definitions(esp32_fam_app_cli PRIVATE SRV_CLI)
list(APPEND ESP32_FAM_PORTED_OBJECT_TARGETS esp32_fam_app_cli)

add_library(esp32_fam_app_example_apps_assets OBJECT
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/examples/example_apps_assets/example_apps_assets.c"
)
target_include_directories(esp32_fam_app_example_apps_assets PRIVATE
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/examples/example_apps_assets"
)
list(APPEND ESP32_FAM_PORTED_OBJECT_TARGETS esp32_fam_app_example_apps_assets)

add_library(esp32_fam_app_example_apps_data OBJECT
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/examples/example_apps_data/example_apps_data.c"
)
target_include_directories(esp32_fam_app_example_apps_data PRIVATE
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/examples/example_apps_data"
)
list(APPEND ESP32_FAM_PORTED_OBJECT_TARGETS esp32_fam_app_example_apps_data)

add_library(esp32_fam_app_example_number_input OBJECT
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/examples/example_number_input/example_number_input.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/examples/example_number_input/scenes/example_number_input_scene.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/examples/example_number_input/scenes/example_number_input_scene_input_max.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/examples/example_number_input/scenes/example_number_input_scene_input_min.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/examples/example_number_input/scenes/example_number_input_scene_input_number.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/examples/example_number_input/scenes/example_number_input_scene_show_number.c"
)
target_include_directories(esp32_fam_app_example_number_input PRIVATE
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/examples/example_number_input"
)
list(APPEND ESP32_FAM_PORTED_OBJECT_TARGETS esp32_fam_app_example_number_input)

add_library(esp32_fam_app_js_blebeacon OBJECT
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/modules/js_blebeacon.c"
)
target_include_directories(esp32_fam_app_js_blebeacon PRIVATE
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app"
)
target_compile_options(esp32_fam_app_js_blebeacon PRIVATE -Wno-error=implicit-function-declaration -Wno-error=incompatible-pointer-types)
list(APPEND ESP32_FAM_PORTED_OBJECT_TARGETS esp32_fam_app_js_blebeacon)

add_library(esp32_fam_app_js_event_loop OBJECT
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/modules/js_event_loop/js_event_loop.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/modules/js_event_loop/js_event_loop_api_table.cpp"
)
target_include_directories(esp32_fam_app_js_event_loop PRIVATE
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app"
)
target_compile_options(esp32_fam_app_js_event_loop PRIVATE -Wno-error=implicit-function-declaration -Wno-error=incompatible-pointer-types)
list(APPEND ESP32_FAM_PORTED_OBJECT_TARGETS esp32_fam_app_js_event_loop)

add_library(esp32_fam_app_js_gui OBJECT
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/modules/js_gui/js_gui.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/modules/js_gui/js_gui_api_table.cpp"
)
target_include_directories(esp32_fam_app_js_gui PRIVATE
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app"
)
target_compile_options(esp32_fam_app_js_gui PRIVATE -Wno-error=implicit-function-declaration -Wno-error=incompatible-pointer-types)
list(APPEND ESP32_FAM_PORTED_OBJECT_TARGETS esp32_fam_app_js_gui)

add_library(esp32_fam_app_js_gui__button_menu OBJECT
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/modules/js_gui/button_menu.c"
)
target_include_directories(esp32_fam_app_js_gui__button_menu PRIVATE
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app"
)
target_compile_options(esp32_fam_app_js_gui__button_menu PRIVATE -Wno-error=implicit-function-declaration -Wno-error=incompatible-pointer-types)
list(APPEND ESP32_FAM_PORTED_OBJECT_TARGETS esp32_fam_app_js_gui__button_menu)

add_library(esp32_fam_app_js_gui__button_panel OBJECT
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/modules/js_gui/button_panel.c"
)
target_include_directories(esp32_fam_app_js_gui__button_panel PRIVATE
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app"
)
target_compile_options(esp32_fam_app_js_gui__button_panel PRIVATE -Wno-error=implicit-function-declaration -Wno-error=incompatible-pointer-types)
list(APPEND ESP32_FAM_PORTED_OBJECT_TARGETS esp32_fam_app_js_gui__button_panel)

add_library(esp32_fam_app_js_gui__byte_input OBJECT
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/modules/js_gui/byte_input.c"
)
target_include_directories(esp32_fam_app_js_gui__byte_input PRIVATE
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app"
)
target_compile_options(esp32_fam_app_js_gui__byte_input PRIVATE -Wno-error=implicit-function-declaration -Wno-error=incompatible-pointer-types)
list(APPEND ESP32_FAM_PORTED_OBJECT_TARGETS esp32_fam_app_js_gui__byte_input)

add_library(esp32_fam_app_js_gui__dialog OBJECT
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/modules/js_gui/dialog.c"
)
target_include_directories(esp32_fam_app_js_gui__dialog PRIVATE
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app"
)
target_compile_options(esp32_fam_app_js_gui__dialog PRIVATE -Wno-error=implicit-function-declaration -Wno-error=incompatible-pointer-types)
list(APPEND ESP32_FAM_PORTED_OBJECT_TARGETS esp32_fam_app_js_gui__dialog)

add_library(esp32_fam_app_js_gui__empty_screen OBJECT
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/modules/js_gui/empty_screen.c"
)
target_include_directories(esp32_fam_app_js_gui__empty_screen PRIVATE
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app"
)
target_compile_options(esp32_fam_app_js_gui__empty_screen PRIVATE -Wno-error=implicit-function-declaration -Wno-error=incompatible-pointer-types)
list(APPEND ESP32_FAM_PORTED_OBJECT_TARGETS esp32_fam_app_js_gui__empty_screen)

add_library(esp32_fam_app_js_gui__file_picker OBJECT
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/modules/js_gui/file_picker.c"
)
target_include_directories(esp32_fam_app_js_gui__file_picker PRIVATE
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app"
)
target_compile_options(esp32_fam_app_js_gui__file_picker PRIVATE -Wno-error=implicit-function-declaration -Wno-error=incompatible-pointer-types)
list(APPEND ESP32_FAM_PORTED_OBJECT_TARGETS esp32_fam_app_js_gui__file_picker)

add_library(esp32_fam_app_js_gui__icon OBJECT
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/modules/js_gui/icon.c"
)
target_include_directories(esp32_fam_app_js_gui__icon PRIVATE
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app"
)
target_compile_options(esp32_fam_app_js_gui__icon PRIVATE -Wno-error=implicit-function-declaration -Wno-error=incompatible-pointer-types)
list(APPEND ESP32_FAM_PORTED_OBJECT_TARGETS esp32_fam_app_js_gui__icon)

add_library(esp32_fam_app_js_gui__loading OBJECT
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/modules/js_gui/loading.c"
)
target_include_directories(esp32_fam_app_js_gui__loading PRIVATE
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app"
)
target_compile_options(esp32_fam_app_js_gui__loading PRIVATE -Wno-error=implicit-function-declaration -Wno-error=incompatible-pointer-types)
list(APPEND ESP32_FAM_PORTED_OBJECT_TARGETS esp32_fam_app_js_gui__loading)

add_library(esp32_fam_app_js_gui__menu OBJECT
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/modules/js_gui/menu.c"
)
target_include_directories(esp32_fam_app_js_gui__menu PRIVATE
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app"
)
target_compile_options(esp32_fam_app_js_gui__menu PRIVATE -Wno-error=implicit-function-declaration -Wno-error=incompatible-pointer-types)
list(APPEND ESP32_FAM_PORTED_OBJECT_TARGETS esp32_fam_app_js_gui__menu)

add_library(esp32_fam_app_js_gui__number_input OBJECT
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/modules/js_gui/number_input.c"
)
target_include_directories(esp32_fam_app_js_gui__number_input PRIVATE
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app"
)
target_compile_options(esp32_fam_app_js_gui__number_input PRIVATE -Wno-error=implicit-function-declaration -Wno-error=incompatible-pointer-types)
list(APPEND ESP32_FAM_PORTED_OBJECT_TARGETS esp32_fam_app_js_gui__number_input)

add_library(esp32_fam_app_js_gui__popup OBJECT
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/modules/js_gui/popup.c"
)
target_include_directories(esp32_fam_app_js_gui__popup PRIVATE
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app"
)
target_compile_options(esp32_fam_app_js_gui__popup PRIVATE -Wno-error=implicit-function-declaration -Wno-error=incompatible-pointer-types)
list(APPEND ESP32_FAM_PORTED_OBJECT_TARGETS esp32_fam_app_js_gui__popup)

add_library(esp32_fam_app_js_gui__submenu OBJECT
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/modules/js_gui/submenu.c"
)
target_include_directories(esp32_fam_app_js_gui__submenu PRIVATE
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app"
)
target_compile_options(esp32_fam_app_js_gui__submenu PRIVATE -Wno-error=implicit-function-declaration -Wno-error=incompatible-pointer-types)
list(APPEND ESP32_FAM_PORTED_OBJECT_TARGETS esp32_fam_app_js_gui__submenu)

add_library(esp32_fam_app_js_gui__text_box OBJECT
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/modules/js_gui/text_box.c"
)
target_include_directories(esp32_fam_app_js_gui__text_box PRIVATE
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app"
)
target_compile_options(esp32_fam_app_js_gui__text_box PRIVATE -Wno-error=implicit-function-declaration -Wno-error=incompatible-pointer-types)
list(APPEND ESP32_FAM_PORTED_OBJECT_TARGETS esp32_fam_app_js_gui__text_box)

add_library(esp32_fam_app_js_gui__text_input OBJECT
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/modules/js_gui/text_input.c"
)
target_include_directories(esp32_fam_app_js_gui__text_input PRIVATE
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app"
)
target_compile_options(esp32_fam_app_js_gui__text_input PRIVATE -Wno-error=implicit-function-declaration -Wno-error=incompatible-pointer-types)
list(APPEND ESP32_FAM_PORTED_OBJECT_TARGETS esp32_fam_app_js_gui__text_input)

add_library(esp32_fam_app_js_gui__vi_list OBJECT
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/modules/js_gui/vi_list.c"
)
target_include_directories(esp32_fam_app_js_gui__vi_list PRIVATE
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app"
)
target_compile_options(esp32_fam_app_js_gui__vi_list PRIVATE -Wno-error=implicit-function-declaration -Wno-error=incompatible-pointer-types)
list(APPEND ESP32_FAM_PORTED_OBJECT_TARGETS esp32_fam_app_js_gui__vi_list)

add_library(esp32_fam_app_js_gui__widget OBJECT
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/modules/js_gui/widget.c"
)
target_include_directories(esp32_fam_app_js_gui__widget PRIVATE
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app"
)
target_compile_options(esp32_fam_app_js_gui__widget PRIVATE -Wno-error=implicit-function-declaration -Wno-error=incompatible-pointer-types)
list(APPEND ESP32_FAM_PORTED_OBJECT_TARGETS esp32_fam_app_js_gui__widget)

add_library(esp32_fam_app_js_math OBJECT
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/modules/js_math.c"
)
target_include_directories(esp32_fam_app_js_math PRIVATE
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app"
)
target_compile_options(esp32_fam_app_js_math PRIVATE -Wno-error=implicit-function-declaration -Wno-error=incompatible-pointer-types)
list(APPEND ESP32_FAM_PORTED_OBJECT_TARGETS esp32_fam_app_js_math)

add_library(esp32_fam_app_js_notification OBJECT
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/modules/js_notification.c"
)
target_include_directories(esp32_fam_app_js_notification PRIVATE
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app"
)
target_compile_options(esp32_fam_app_js_notification PRIVATE -Wno-error=implicit-function-declaration -Wno-error=incompatible-pointer-types)
list(APPEND ESP32_FAM_PORTED_OBJECT_TARGETS esp32_fam_app_js_notification)

add_library(esp32_fam_app_js_storage OBJECT
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/modules/js_storage.c"
)
target_include_directories(esp32_fam_app_js_storage PRIVATE
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app"
)
target_compile_options(esp32_fam_app_js_storage PRIVATE -Wno-error=implicit-function-declaration -Wno-error=incompatible-pointer-types)
list(APPEND ESP32_FAM_PORTED_OBJECT_TARGETS esp32_fam_app_js_storage)

add_library(esp32_fam_app_cli_vcp OBJECT
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/cli/cli_vcp.c"
)
target_include_directories(esp32_fam_app_cli_vcp PRIVATE
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/cli"
)
list(APPEND ESP32_FAM_PORTED_OBJECT_TARGETS esp32_fam_app_cli_vcp)

add_library(esp32_fam_app_js_app OBJECT
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/js_app.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/js_modules.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/js_thread.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/js_value.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/modules/js_flipper.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/modules/js_tests.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/plugin_api/app_api_table.cpp"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/views/console_view.c"
)
target_include_directories(esp32_fam_app_js_app PRIVATE
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app"
)
target_compile_options(esp32_fam_app_js_app PRIVATE -Wno-error=implicit-function-declaration -Wno-error=incompatible-pointer-types)
list(APPEND ESP32_FAM_PORTED_OBJECT_TARGETS esp32_fam_app_js_app)

add_library(esp32_fam_app_power_settings OBJECT
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/settings/power_settings_app/power_settings_app.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/settings/power_settings_app/scenes/power_settings_scene.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/settings/power_settings_app/scenes/power_settings_scene_battery_info.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/settings/power_settings_app/scenes/power_settings_scene_power_off.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/settings/power_settings_app/scenes/power_settings_scene_reboot.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/settings/power_settings_app/scenes/power_settings_scene_reboot_confirm.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/settings/power_settings_app/scenes/power_settings_scene_start.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/settings/power_settings_app/views/battery_info.c"
)
target_include_directories(esp32_fam_app_power_settings PRIVATE
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/settings/power_settings_app"
)
list(APPEND ESP32_FAM_PORTED_OBJECT_TARGETS esp32_fam_app_power_settings)

add_library(esp32_fam_app_lfrfid OBJECT
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/lfrfid/lfrfid.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/lfrfid/lfrfid_cli.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/lfrfid/scenes/lfrfid_scene.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/lfrfid/scenes/lfrfid_scene_clear_t5577.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/lfrfid/scenes/lfrfid_scene_clear_t5577_confirm.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/lfrfid/scenes/lfrfid_scene_delete_confirm.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/lfrfid/scenes/lfrfid_scene_delete_success.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/lfrfid/scenes/lfrfid_scene_emulate.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/lfrfid/scenes/lfrfid_scene_enter_password.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/lfrfid/scenes/lfrfid_scene_exit_confirm.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/lfrfid/scenes/lfrfid_scene_extra_actions.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/lfrfid/scenes/lfrfid_scene_raw_emulate.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/lfrfid/scenes/lfrfid_scene_raw_info.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/lfrfid/scenes/lfrfid_scene_raw_name.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/lfrfid/scenes/lfrfid_scene_raw_read.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/lfrfid/scenes/lfrfid_scene_raw_success.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/lfrfid/scenes/lfrfid_scene_read.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/lfrfid/scenes/lfrfid_scene_read_key_menu.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/lfrfid/scenes/lfrfid_scene_read_success.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/lfrfid/scenes/lfrfid_scene_retry_confirm.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/lfrfid/scenes/lfrfid_scene_rpc.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/lfrfid/scenes/lfrfid_scene_save_data.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/lfrfid/scenes/lfrfid_scene_save_name.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/lfrfid/scenes/lfrfid_scene_save_success.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/lfrfid/scenes/lfrfid_scene_save_type.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/lfrfid/scenes/lfrfid_scene_saved_info.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/lfrfid/scenes/lfrfid_scene_saved_key_menu.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/lfrfid/scenes/lfrfid_scene_select_key.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/lfrfid/scenes/lfrfid_scene_select_raw_key.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/lfrfid/scenes/lfrfid_scene_start.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/lfrfid/scenes/lfrfid_scene_write.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/lfrfid/scenes/lfrfid_scene_write_and_set_pass.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/lfrfid/scenes/lfrfid_scene_write_success.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/lfrfid/views/lfrfid_view_read.c"
)
target_include_directories(esp32_fam_app_lfrfid PRIVATE
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/lfrfid"
)
list(APPEND ESP32_FAM_PORTED_OBJECT_TARGETS esp32_fam_app_lfrfid)

add_library(esp32_fam_app_storage_settings OBJECT
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/settings/storage_settings/scenes/storage_settings_scene.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/settings/storage_settings/scenes/storage_settings_scene_benchmark.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/settings/storage_settings/scenes/storage_settings_scene_benchmark_confirm.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/settings/storage_settings/scenes/storage_settings_scene_factory_reset.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/settings/storage_settings/scenes/storage_settings_scene_format_confirm.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/settings/storage_settings/scenes/storage_settings_scene_formatting.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/settings/storage_settings/scenes/storage_settings_scene_internal_info.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/settings/storage_settings/scenes/storage_settings_scene_sd_info.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/settings/storage_settings/scenes/storage_settings_scene_start.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/settings/storage_settings/scenes/storage_settings_scene_unmount_confirm.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/settings/storage_settings/scenes/storage_settings_scene_unmounted.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/settings/storage_settings/storage_settings.c"
)
target_include_directories(esp32_fam_app_storage_settings PRIVATE
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/settings/storage_settings"
)
list(APPEND ESP32_FAM_PORTED_OBJECT_TARGETS esp32_fam_app_storage_settings)

add_library(esp32_fam_app_dolphin OBJECT
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/dolphin/dolphin.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/dolphin/helpers/dolphin_deed.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/dolphin/helpers/dolphin_state.c"
)
target_include_directories(esp32_fam_app_dolphin PRIVATE
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/dolphin"
)
target_compile_definitions(esp32_fam_app_dolphin PRIVATE SRV_DOLPHIN)
list(APPEND ESP32_FAM_PORTED_OBJECT_TARGETS esp32_fam_app_dolphin)

add_library(esp32_fam_app_power_start OBJECT
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/power/power_cli.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/power/power_service/power.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/power/power_service/power_api.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/power/power_service/power_settings.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/power/power_service/views/power_off.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/power/power_service/views/power_unplug_usb.c"
)
target_include_directories(esp32_fam_app_power_start PRIVATE
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/power"
)
list(APPEND ESP32_FAM_PORTED_OBJECT_TARGETS esp32_fam_app_power_start)

add_library(esp32_fam_app_ble_spam OBJECT
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/ble_spam/ble_auto_walk_log.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/ble_spam/ble_spam_app.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/ble_spam/ble_spam_hal.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/ble_spam/ble_tracker_hal.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/ble_spam/ble_uuid_db.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/ble_spam/ble_walk_hal.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/ble_spam/scenes/scene_auto_walk.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/ble_spam/scenes/scene_main.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/ble_spam/scenes/scene_pair_spam_custom.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/ble_spam/scenes/scene_race_detector.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/ble_spam/scenes/scene_running.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/ble_spam/scenes/scene_spam_menu.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/ble_spam/scenes/scene_tracker_geiger.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/ble_spam/scenes/scene_tracker_scan.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/ble_spam/scenes/scene_walk_char_detail.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/ble_spam/scenes/scene_walk_chars.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/ble_spam/scenes/scene_walk_scan.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/ble_spam/scenes/scene_walk_services.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/ble_spam/scenes/scenes.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/ble_spam/views/ble_auto_walk_view.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/ble_spam/views/ble_spam_view.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/ble_spam/views/ble_walk_detail_view.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/ble_spam/views/ble_walk_scan_view.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/ble_spam/views/race_detector_view.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/ble_spam/views/tracker_geiger_view.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/ble_spam/views/tracker_list_view.c"
)
target_include_directories(esp32_fam_app_ble_spam PRIVATE
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/ble_spam"
)
list(APPEND ESP32_FAM_PORTED_OBJECT_TARGETS esp32_fam_app_ble_spam)

add_library(esp32_fam_app_wlan OBJECT
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/scenes/scene_attack_targets.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/scenes/scene_client_picker.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/scenes/scene_connect.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/scenes/scene_evil_portal.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/scenes/scene_evil_portal_bridge_pwd.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/scenes/scene_evil_portal_bridge_ssid.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/scenes/scene_evil_portal_captured.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/scenes/scene_evil_portal_menu.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/scenes/scene_evil_portal_ssid.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/scenes/scene_handshake.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/scenes/scene_handshake_save_path.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/scenes/scene_handshake_settings.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/scenes/scene_lan.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/scenes/scene_live_creds.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/scenes/scene_main.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/scenes/scene_mitm_inject_code.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/scenes/scene_mitm_menu.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/scenes/scene_network_actions.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/scenes/scene_network_deauth.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/scenes/scene_network_scanning.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/scenes/scene_package_sniffer.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/scenes/scene_port_scanner.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/scenes/scene_ssid_connect.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/scenes/scene_ssid_screen.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/scenes/scene_ssid_spam.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/scenes/scene_ssid_spam_custom.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/scenes/scene_ssid_spam_run.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/scenes/scene_update_sd.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/scenes/scenes.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/views/wlan_connect_view.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/views/wlan_deauther_view.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/views/wlan_evil_portal_captured_view.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/views/wlan_evil_portal_view.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/views/wlan_handshake_channel_view.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/views/wlan_handshake_view.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/views/wlan_lan_view.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/views/wlan_live_creds_view.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/views/wlan_portscan_view.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/views/wlan_sd_update_view.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/views/wlan_sniffer_view.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/views/wlan_view_common.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/wlan_app.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/wlan_client_scanner.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/wlan_cred_sniff.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/wlan_evil_portal.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/wlan_evil_portal_bridge.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/wlan_evil_portal_html.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/wlan_evil_portal_templates.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/wlan_hal.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/wlan_handshake_parser.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/wlan_handshake_settings.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/wlan_html_inject.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/wlan_lan_cache.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/wlan_mitm_payloads.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/wlan_mitm_server.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/wlan_netcut.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/wlan_netscan.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/wlan_oui.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/wlan_passwords.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/wlan_pcap.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app/wlan_sd_update.c"
)
target_include_directories(esp32_fam_app_wlan PRIVATE
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/wlan_app"
)
list(APPEND ESP32_FAM_PORTED_OBJECT_TARGETS esp32_fam_app_wlan)

add_library(esp32_fam_app_bad_usb OBJECT
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/bad_usb_app.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/helpers/bad_usb_hid.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/helpers/ble_hid_ext_profile.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/helpers/ducky_script.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/helpers/ducky_script_commands.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/helpers/ducky_script_keycodes.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/scenes/bad_usb_scene.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/scenes/bad_usb_scene_config.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/scenes/bad_usb_scene_config_ble_mac.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/scenes/bad_usb_scene_config_ble_name.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/scenes/bad_usb_scene_config_layout.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/scenes/bad_usb_scene_config_usb_name.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/scenes/bad_usb_scene_config_usb_vidpid.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/scenes/bad_usb_scene_confirm_unpair.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/scenes/bad_usb_scene_done.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/scenes/bad_usb_scene_error.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/scenes/bad_usb_scene_file_select.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/scenes/bad_usb_scene_work.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/views/bad_usb_view.c"
)
target_include_directories(esp32_fam_app_bad_usb PRIVATE
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb"
)
list(APPEND ESP32_FAM_PORTED_OBJECT_TARGETS esp32_fam_app_bad_usb)

add_library(esp32_fam_app_notification_settings OBJECT
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/settings/notification_settings/notification_settings_app.c"
)
target_include_directories(esp32_fam_app_notification_settings PRIVATE
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/settings/notification_settings"
)
list(APPEND ESP32_FAM_PORTED_OBJECT_TARGETS esp32_fam_app_notification_settings)

add_library(esp32_fam_app_passport OBJECT
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/settings/dolphin_passport/passport.c"
)
target_include_directories(esp32_fam_app_passport PRIVATE
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/settings/dolphin_passport"
)
target_compile_definitions(esp32_fam_app_passport PRIVATE APP_PASSPORT)
list(APPEND ESP32_FAM_PORTED_OBJECT_TARGETS esp32_fam_app_passport)

add_library(esp32_fam_app_clock OBJECT
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/clock_app/clock_app.c"
)
target_include_directories(esp32_fam_app_clock PRIVATE
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/clock_app"
)
list(APPEND ESP32_FAM_PORTED_OBJECT_TARGETS esp32_fam_app_clock)

add_library(esp32_fam_app_js_app_start OBJECT
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/js_app.c"
)
target_include_directories(esp32_fam_app_js_app_start PRIVATE
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app"
)
target_compile_options(esp32_fam_app_js_app_start PRIVATE -Wno-error=implicit-function-declaration -Wno-error=incompatible-pointer-types)
list(APPEND ESP32_FAM_PORTED_OBJECT_TARGETS esp32_fam_app_js_app_start)

add_library(esp32_fam_app_power OBJECT
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/power/power_cli.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/power/power_service/power.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/power/power_service/power_api.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/power/power_service/power_settings.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/power/power_service/views/power_off.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/power/power_service/views/power_unplug_usb.c"
)
target_include_directories(esp32_fam_app_power PRIVATE
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/power"
)
target_compile_definitions(esp32_fam_app_power PRIVATE SRV_POWER)
list(APPEND ESP32_FAM_PORTED_OBJECT_TARGETS esp32_fam_app_power)

add_library(esp32_fam_app_storage OBJECT
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/storage/filesystem_api.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/storage/storage.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/storage/storage_cli.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/storage/storage_external_api.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/storage/storage_glue.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/storage/storage_internal_api.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/storage/storage_processing.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/storage/storage_sd_api.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/storage/storages/sd_notify.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/storage/storages/storage_ext.c"
)
target_include_directories(esp32_fam_app_storage PRIVATE
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/storage"
)
target_compile_definitions(esp32_fam_app_storage PRIVATE SRV_STORAGE)
list(APPEND ESP32_FAM_PORTED_OBJECT_TARGETS esp32_fam_app_storage)

add_library(esp32_fam_app_desktop OBJECT
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/desktop/animations/animation_manager.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/desktop/animations/animation_storage.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/desktop/animations/views/bubble_animation_view.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/desktop/animations/views/one_shot_animation_view.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/desktop/desktop.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/desktop/desktop_settings.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/desktop/helpers/mesh_config.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/desktop/helpers/mesh_service.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/desktop/helpers/pin_code.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/desktop/helpers/qflipper_bridge.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/desktop/helpers/slideshow.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/desktop/scenes/desktop_scene.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/desktop/scenes/desktop_scene_debug.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/desktop/scenes/desktop_scene_fault.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/desktop/scenes/desktop_scene_hw_mismatch.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/desktop/scenes/desktop_scene_lock_menu.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/desktop/scenes/desktop_scene_locked.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/desktop/scenes/desktop_scene_main.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/desktop/scenes/desktop_scene_mesh_clients.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/desktop/scenes/desktop_scene_mesh_pair.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/desktop/scenes/desktop_scene_pin_input.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/desktop/scenes/desktop_scene_pin_timeout.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/desktop/scenes/desktop_scene_secure_enclave.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/desktop/scenes/desktop_scene_slideshow.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/desktop/scenes/desktop_scene_usb_storage.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/desktop/views/desktop_view_debug.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/desktop/views/desktop_view_lock_menu.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/desktop/views/desktop_view_locked.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/desktop/views/desktop_view_main.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/desktop/views/desktop_view_mesh_clients.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/desktop/views/desktop_view_pin_input.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/desktop/views/desktop_view_pin_timeout.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/desktop/views/desktop_view_slideshow.c"
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/desktop/views/desktop_view_usb_storage.c"
)
target_include_directories(esp32_fam_app_desktop PRIVATE
    "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/services/desktop"
)
target_compile_definitions(esp32_fam_app_desktop PRIVATE SRV_DESKTOP)
list(APPEND ESP32_FAM_PORTED_OBJECT_TARGETS esp32_fam_app_desktop)

add_custom_command(
    OUTPUT "${ESP32_FAM_STAGE_ASSETS_STAMP}"
    COMMAND ${CMAKE_COMMAND} -E remove_directory "${ESP32_FAM_RUNTIME_ROOT}"
    COMMAND ${CMAKE_COMMAND} -E make_directory "${ESP32_FAM_RUNTIME_EXT_ROOT}/apps_assets"
    COMMAND ${CMAKE_COMMAND} -E make_directory "${ESP32_FAM_RUNTIME_EXT_ROOT}/apps_assets/example_apps_assets"
    COMMAND ${CMAKE_COMMAND} -E copy_directory "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/examples/example_apps_assets/files" "${ESP32_FAM_RUNTIME_EXT_ROOT}/apps_assets/example_apps_assets"
    COMMAND ${CMAKE_COMMAND} -E make_directory "${ESP32_FAM_RUNTIME_EXT_ROOT}/apps_assets/js_app"
    COMMAND ${CMAKE_COMMAND} -E copy_directory "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/examples" "${ESP32_FAM_RUNTIME_EXT_ROOT}/apps_assets/js_app"
    COMMAND ${CMAKE_COMMAND} -E make_directory "${ESP32_FAM_RUNTIME_EXT_ROOT}/apps_assets/lfrfid"
    COMMAND ${CMAKE_COMMAND} -E copy_directory "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/lfrfid/resources" "${ESP32_FAM_RUNTIME_EXT_ROOT}/apps_assets/lfrfid"
    COMMAND ${CMAKE_COMMAND} -E make_directory "${ESP32_FAM_RUNTIME_EXT_ROOT}/apps_assets/bad_usb"
    COMMAND ${CMAKE_COMMAND} -E copy_directory "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/resources" "${ESP32_FAM_RUNTIME_EXT_ROOT}/apps_assets/bad_usb"
    COMMAND ${CMAKE_COMMAND} -E make_directory "${ESP32_FAM_RUNTIME_EXT_ROOT}/apps_assets/clock"
    COMMAND ${CMAKE_COMMAND} -E copy_directory "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/clock_app/resources" "${ESP32_FAM_RUNTIME_EXT_ROOT}/apps_assets/clock"
    COMMAND ${CMAKE_COMMAND} -E touch "${ESP32_FAM_STAGE_ASSETS_STAMP}"
    DEPENDS
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/examples/example_apps_assets/files/poems/a jelly-fish.txt"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/examples/example_apps_assets/files/poems/my shadow.txt"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/examples/example_apps_assets/files/poems/theme in yellow.txt"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/examples/example_apps_assets/files/test_asset.txt"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/resources/badusb/assets/layouts/ba-BA.kl"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/resources/badusb/assets/layouts/colemak.kl"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/resources/badusb/assets/layouts/cz_CS.kl"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/resources/badusb/assets/layouts/da-DA.kl"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/resources/badusb/assets/layouts/de-CH.kl"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/resources/badusb/assets/layouts/de-DE-mac.kl"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/resources/badusb/assets/layouts/de-DE.kl"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/resources/badusb/assets/layouts/dvorak.kl"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/resources/badusb/assets/layouts/en-UK.kl"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/resources/badusb/assets/layouts/en-US.kl"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/resources/badusb/assets/layouts/es-ES.kl"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/resources/badusb/assets/layouts/es-LA.kl"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/resources/badusb/assets/layouts/fi-FI.kl"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/resources/badusb/assets/layouts/fr-BE.kl"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/resources/badusb/assets/layouts/fr-CA.kl"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/resources/badusb/assets/layouts/fr-CH.kl"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/resources/badusb/assets/layouts/fr-FR-mac.kl"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/resources/badusb/assets/layouts/fr-FR.kl"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/resources/badusb/assets/layouts/hr-HR.kl"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/resources/badusb/assets/layouts/hu-HU.kl"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/resources/badusb/assets/layouts/it-IT-mac.kl"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/resources/badusb/assets/layouts/it-IT.kl"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/resources/badusb/assets/layouts/nb-NO.kl"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/resources/badusb/assets/layouts/nl-NL.kl"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/resources/badusb/assets/layouts/pt-BR.kl"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/resources/badusb/assets/layouts/pt-PT.kl"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/resources/badusb/assets/layouts/si-SI.kl"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/resources/badusb/assets/layouts/sk-SK.kl"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/resources/badusb/assets/layouts/sv-SE.kl"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/resources/badusb/assets/layouts/tr-TR.kl"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/resources/badusb/demo_chromeos.txt"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/resources/badusb/demo_gnome.txt"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/resources/badusb/demo_macos.txt"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/resources/badusb/demo_windows.txt"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/resources/badusb/Install_qFlipper_gnome.txt"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/resources/badusb/Install_qFlipper_macOS.txt"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/resources/badusb/Install_qFlipper_windows.txt"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/bad_usb/resources/badusb/test_mouse.txt"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/clock_app/resources/ibtnfuzzer/example_uids_cyfral.txt"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/clock_app/resources/ibtnfuzzer/example_uids_ds1990.txt"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/clock_app/resources/ibtnfuzzer/example_uids_metakom.txt"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/clock_app/resources/music_player/Marble_Machine.fmf"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/clock_app/resources/rfidfuzzer/example_uids_em4100.txt"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/clock_app/resources/rfidfuzzer/example_uids_h10301.txt"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/clock_app/resources/rfidfuzzer/example_uids_hidprox.txt"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/clock_app/resources/rfidfuzzer/example_uids_pac.txt"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/clock_app/resources/subplaylist/example_playlist.txt"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/clock_app/resources/swd_scripts/100us.swd"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/clock_app/resources/swd_scripts/call_test_1.swd"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/clock_app/resources/swd_scripts/call_test_2.swd"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/clock_app/resources/swd_scripts/dump_0x00000000_1k.swd"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/clock_app/resources/swd_scripts/dump_0x00000000_4b.swd"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/clock_app/resources/swd_scripts/dump_STM32.swd"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/clock_app/resources/swd_scripts/goto_test.swd"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/clock_app/resources/swd_scripts/halt.swd"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/clock_app/resources/swd_scripts/reset.swd"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/clock_app/resources/swd_scripts/test_write.swd"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/main/lfrfid/resources/lfrfid/assets/iso3166.lfrfid"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/examples/apps/Scripts/js_examples/array_buf_test.js"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/examples/apps/Scripts/js_examples/bad_uart.js"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/examples/apps/Scripts/js_examples/badusb_demo.js"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/examples/apps/Scripts/js_examples/blebeacon.js"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/examples/apps/Scripts/js_examples/console.js"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/examples/apps/Scripts/js_examples/delay.js"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/examples/apps/Scripts/js_examples/event_loop.js"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/examples/apps/Scripts/js_examples/gpio.js"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/examples/apps/Scripts/js_examples/gui.js"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/examples/apps/Scripts/js_examples/i2c.js"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/examples/apps/Scripts/js_examples/infrared-send.js"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/examples/apps/Scripts/js_examples/interactive.js"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/examples/apps/Scripts/js_examples/load.js"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/examples/apps/Scripts/js_examples/load_api.js"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/examples/apps/Scripts/js_examples/math.js"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/examples/apps/Scripts/js_examples/notify.js"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/examples/apps/Scripts/js_examples/path.js"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/examples/apps/Scripts/js_examples/spi.js"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/examples/apps/Scripts/js_examples/storage.js"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/examples/apps/Scripts/js_examples/stringutils.js"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/examples/apps/Scripts/js_examples/subghz.js"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/examples/apps/Scripts/js_examples/uart_echo.js"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/examples/apps/Scripts/js_examples/uart_echo_8e1.js"
        "F:/chromedowload/Flipper-Zero-ESP32-Port-st7789/Flipper-Zero-ESP32-Port-st7789/applications/system/js_app/examples/apps/Scripts/js_examples/usbdisk.js"
    VERBATIM
)
add_custom_target(esp32_fam_stage_assets DEPENDS "${ESP32_FAM_STAGE_ASSETS_STAMP}")
