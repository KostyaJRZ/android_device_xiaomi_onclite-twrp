TWRP Device Tree for Xiaomi Redmi 7/Y3
===========================================

The Xiaomi Redmi 7 (codenamed _"onclite"_) and Xiaomi Y3 (codenamed _"onc"_) is a mid-range smartphone from Xiaomi.
It was announced on March, 2019.

Basic   | Spec Sheet
-------:|:-------------------------
CPU     | Octa-core (4x1.8 GHz Kryo 250 Gold & 4x1.8 GHz Kryo 250 Silver)
Chipset | Qualcomm SDM632 Snapdragon 632 (14 nm)
GPU     | Adreno 506
Shipped Android Version | 9.0
Memory | 64 GB, 4 GB RAM or 32 GB, 3 GB RAM
MicroSD | microSD, up to 512 GB (dedicated slot)
Battery | Non-removable Li-Ion 4000 mAh battery
Display | 6.26 inches, 97.8 cm2 (~81.5% screen-to-body ratio)
Rear Camera  | 12 MP, f/1.8, 1.25µm, PDAF
Front Camera  |  8 MP, f/2.0, 1.12µm

![Xiaomi Redmi 7](https://i.gadgets360cdn.com/products/large/1552901002_635_redmi_7.jpg?downsize=770:*&output-quality=70&output-format=webp "Xiaomi Redmi 7")

## Compile

First checkout Minimal TWRP with OmniROM tree:

```
repo init -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-9.0
repo sync
```

Finally execute these:

```
. build/envsetup.sh
lunch omni_onclite-eng
mka recoveryimage ALLOW_MISSING_DEPENDENCIES=true # Only if you use Minimal TWRP tree.
```

Install:

```
fastboot flash recovery recovery.img
```
