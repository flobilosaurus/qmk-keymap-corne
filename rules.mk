MOUSEKEY_ENABLE   = yes    # Mouse keys
RGBLIGHT_ENABLE   = no
RGB_MATRIX_ENABLE = yes
NKRO_ENABLE        = yes
OLED_ENABLE        = yes
# OLED_DRIVER        = SSD1306
LTO_ENABLE         = yes
BOOTLOADER         = atmel-dfu
# BOOTLOADER         = RP2040
# BOARD              = GENERIC_RP_RP2040
SPLIT_KEYBOARD    = yes
SRC += ./rgb.c

