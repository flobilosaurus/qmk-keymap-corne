# qmk-keymap–corne with 'pro micro rp2040' controller

My keymap for the corne keyboard using the pro micro rp2040 controller.

## usage

```shell
cd ~/qmk_firmware/keyboards/crkbd/keymaps
git clone git@github.com:flobilosaurus/qmk-keymap-corne.git flobilosaurus
qmk compile -kb crkbd/rev1 -km flobilosaurus -e CONVERT_TO=promicro_rp2040
```
