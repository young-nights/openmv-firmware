# OpenMV library
add_library("openmv-lib", "$(OMV_LIB_DIR)")

# --------------------------------------------------------------------------------------------------------
# require("xxx")：启用 MicroPython 内置的 C 模块（这些模块在 micropython/extmod/ 或 ports/stm32/ 下实现）
# 1-Wire总线驱动
require("onewire") 
# DHT温湿度传感器驱动
require("ds18x20")
# DHT11/DHT22 温湿度传感器驱动
require("dht")
# WS2812 RGB LED 灯带控制驱动
require("neopixel")

# --------------------------------------------------------------------------------------------------------
# freeze("路径", "文件名")：把指定的 .py 文件冻结（编译成字节码）并嵌入固件中，作为内置模块
# Modbus 协议（工业通信）
freeze ("$(OMV_LIB_DIR)/", "modbus.py")
# PID 控制器（用于电机/温度控制）
freeze ("$(OMV_LIB_DIR)/", "pid.py")
# BNO055 九轴传感器驱动
freeze ("$(OMV_LIB_DIR)/", "bno055.py")
# OLED 显示屏（128×64/128×32）
freeze ("$(OMV_LIB_DIR)/", "ssd1306.py")
# TB6612 双电机驱动
freeze ("$(OMV_LIB_DIR)/", "tb6612.py")
# VL53L1X 激光测距
freeze ("$(OMV_LIB_DIR)/", "vl53l1x.py")
# 可能是 OpenMV 定制的 machine 模块（覆盖标准版）
freeze ("$(OMV_LIB_DIR)/", "machine.py")
# 通用显示接口（可能用于多种屏）
freeze ("$(OMV_LIB_DIR)/", "display.py")

# --------------------------------------------------------------------------------------------------------
# Networking
# TLS/SSL 支持（HTTPS、MQTT over TLS 等）
require("ssl")
# NTP 时间同步
require("ntptime")
# WebREPL 支持（通过网页终端远程访问 MicroPython 解释器）
require("webrepl")
# RPC、RTSP、MQTT、HTTP 请求支持
freeze ("$(OMV_LIB_DIR)/", "rpc.py")
freeze ("$(OMV_LIB_DIR)/", "rtsp.py")
freeze ("$(OMV_LIB_DIR)/", "mqtt.py")
freeze ("$(OMV_LIB_DIR)/", "requests.py")

# --------------------------------------------------------------------------------------------------------
# Utils
require("time")
require("logging")
freeze ("$(OMV_LIB_DIR)/", "mutex.py")

# --------------------------------------------------------------------------------------------------------
# Libraries
require("ml", library="openmv-lib")
include("$(MPY_DIR)/extmod/asyncio")

# --------------------------------------------------------------------------------------------------------
# Boot script
freeze ("$(OMV_LIB_DIR)/", "_boot.py")
