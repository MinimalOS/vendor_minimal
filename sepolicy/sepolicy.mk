#
# This policy configuration will be used by all products that
# inherit from CM and Minimal
#

BOARD_SEPOLICY_DIRS += \
    vendor/minimal/sepolicy

BOARD_SEPOLICY_UNION += \
    file.te \
    file_contexts \
    genfs_contexts \
    property_contexts \
    seapp_contexts \
    service_contexts \
    adbd.te \
    auditd.te \
    healthd.te \
    hostapd.te \
    installd.te \
    netd.te \
    property.te \
    recovery.te \
    shell.te \
    su.te \
    sysinit.te \
    system.te \
    system_app.te \
    system_server.te \
    ueventd.te \
    uncrypt.te \
    userinit.te \
    vold.te \
    mac_permissions.xml
