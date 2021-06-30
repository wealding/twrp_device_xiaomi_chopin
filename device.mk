PRODUCT_PLATFORM := mt6891

# A/B
AB_OTA_UPDATER := true 

AB_OTA_PARTITIONS += \ 
    boot \
    system \
    vendor

AB_OTA_POSTINSTALL_CONFIG += \ 
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true
