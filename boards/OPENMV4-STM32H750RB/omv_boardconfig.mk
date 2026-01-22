MCU=STM32H750xx
CPU=cortex-m7
FPU=fpv5-sp-d16
PORT=stm32
OMV_USB_VID=0x37C5
OMV_USB_PID=0x1204
# OMV_FIRM_BASE：固件基地址（通常 bootloader 后）
OMV_FIRM_BASE=0x08000000
# OMV_FIRM_ADDR：应用固件起始地址（0x08009000 表示前 36KB 用于 bootloader）
OMV_FIRM_ADDR=0x08009000
# OMV_BOOT_ADDR：bootloader 地址
OMV_BOOT_ADDR=0x08000000
OMV_HSE_VALUE=25000000
OMV_JLINK_ARGS=--device STM32H750RB
OMV_ENABLE_BL=1
# 启用 Lepton 热成像相机 SDK 支持（FLIR Lepton 模块）
OMV_LEPTON_SDK_ENABLE=1
# 启用 USB STM32 原生堆栈支持
OMV_USB_STACK_STMUSB=1
# 启用 CSI（Camera Serial Interface）支持
MICROPY_PY_CSI = 1
# CSI_NG：新版 CSI 驱动（支持更多 OV 传感器，如 OV5640 等）
MICROPY_PY_CSI_NG = 1
# 启用 OpenMV RPC 协议（与 IDE/PC 通信、图像传输等核心功能）
MICROPY_PY_PROTOCOL = 1
# 启用 FIR（远红外/热成像）支持（如 Lepton、MLX90640 等）
MICROPY_PY_FIR = 1
# 启用 ulab（MicroPython 的 numpy-like 科学计算库）
MICROPY_PY_ULAB = 1
# 启用 WINC1500 WiFi 芯片支持（OpenMV 用过这个模块的 WiFi 扩展）
MICROPY_PY_WINC1500 = 1
# 启用显示屏支持（SSD1306 OLED 等）
MICROPY_PY_DISPLAY = 1
# 启用 TV 输出支持（NTSC/PAL 复合视频输出，旧版功能）
MICROPY_PY_TV = 1
# 启用机器学习支持（TensorFlow Lite Micro 等）
MICROPY_PY_ML = 1
# TFLM：TensorFlow Lite Micro 支持（神经网络推理）
MICROPY_PY_ML_TFLM = 1
# 禁用 lwIP（轻量 TCP/IP 栈）。因为 OpenMV 通常不直接用以太网
MICROPY_PY_LWIP = 0
# 启用 SSL/TLS 支持（通过 mbedTLS 实现）
MICROPY_PY_SSL = 1
# 不启用替代 ECDSA 签名（默认 mbedTLS 实现）
MICROPY_PY_SSL_ECDSA_SIGN_ALT = 0
# 使用 mbedTLS 作为 SSL/TLS 后端
MICROPY_SSL_MBEDTLS = 1
# 禁用 CYW43 WiFi（Raspberry Pi Pico W 用）
MICROPY_PY_NETWORK_CYW43 = 0
# 禁用蓝牙（经典 + BLE）和 NimBLE 栈（STM32H7 不带蓝牙硬件，或不启用）
MICROPY_PY_BLUETOOTH = 0
MICROPY_BLUETOOTH_NIMBLE = 0
