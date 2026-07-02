# Cyberpunk keys, Cherry MX, wired Corne

QMK keymap for my **cyberpunk keys, Cherry MX, wired Corne**.

This keyboard uses an **ATmega32U4 board with Atmel DFU bootloader**.
Do **not** use the RP2040/UF2 build for this keyboard.

## Compile

```shell
cd ~/qmk_firmware
qmk compile -kb crkbd/rev1 -km flobilosaurus
```

## Firmware file to flash

Use the generated HEX file:

```text
~/qmk_firmware/.build/crkbd_rev1_flobilosaurus.hex
```

Flash target/MCU should be:

```text
atmega32u4
```

If using `dfu-programmer` manually:

```shell
dfu-programmer atmega32u4 erase --force
dfu-programmer atmega32u4 flash --force ~/qmk_firmware/.build/crkbd_rev1_flobilosaurus.hex
dfu-programmer atmega32u4 reset
```

## Bootloader note

`rules.mk` must contain:

```make
BOOTLOADER = atmel-dfu
```

This is needed so QMK Bootmagic, e.g. holding `Q` while plugging in the left half, jumps to the correct Atmel DFU bootloader.
