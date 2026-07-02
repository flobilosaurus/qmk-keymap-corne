# Corne keymap

QMK keymap for my wired Corne keyboards.

## ATmega32U4 / Atmel DFU boards

These keyboards use an **ATmega32U4 board with Atmel DFU bootloader**:

- **Cyberpunk keys, Cherry MX, wired Corne**
- **Silent, Cherry MX, wired Corne**

Do **not** use the RP2040/UF2 build for these keyboards.

### Compile

```shell
cd ~/qmk_firmware
qmk compile -kb crkbd/rev1 -km flobilosaurus
```

### Firmware file to flash

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

### Bootloader note

`rules.mk` must contain:

```make
BOOTLOADER = atmel-dfu
```

This is needed so QMK Bootmagic, e.g. holding `Q` while plugging in the left half, jumps to the correct Atmel DFU bootloader.

## Low profile wired Corne

This keyboard uses an **RP2040 board with UF2 bootloader**.
When mounted in bootloader mode it shows:

```text
UF2 Bootloader v3.0
Model: Raspberry Pi RP2
Board-ID: RPI-RP2
```

Compile with `CONVERT_TO=promicro_rp2040`.

### Compile

```shell
cd ~/qmk_firmware
qmk compile -kb crkbd/rev1 -km flobilosaurus -e CONVERT_TO=promicro_rp2040
```

### Firmware file to flash

Use the generated UF2 file:

```text
~/qmk_firmware/.build/crkbd_rev1_flobilosaurus_promicro_rp2040.uf2
```

Flash by copying the `.uf2` file onto the mounted RP2040 bootloader USB drive.

Do **not** use the ATmega32U4 `.hex` file for this keyboard.
