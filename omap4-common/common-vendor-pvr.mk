IMGTEC_BLOB_FOLDER := vendor/motorola/omap4-common/proprietary/imgtec

# system/vendor
PRODUCT_COPY_FILES += \
$(IMGTEC_BLOB_FOLDER)/vendor/bin/pvrsrvinit:/system/vendor/bin/pvrsrvinit \
$(IMGTEC_BLOB_FOLDER)/vendor/bin/pvrsrvctl_SGX540_120:/system/vendor/bin/pvrsrvctl_SGX540_120 \
$(IMGTEC_BLOB_FOLDER)/vendor/lib/egl/libEGL_POWERVR_SGX540_120.so:/system/vendor/lib/egl/libEGL_POWERVR_SGX540_120.so \
$(IMGTEC_BLOB_FOLDER)/vendor/lib/egl/libGLESv1_CM_POWERVR_SGX540_120.so:/system/vendor/lib/egl/libGLESv1_CM_POWERVR_SGX540_120.so \
$(IMGTEC_BLOB_FOLDER)/vendor/lib/egl/libGLESv2_POWERVR_SGX540_120.so:/system/vendor/lib/egl/libGLESv2_POWERVR_SGX540_120.so \
$(IMGTEC_BLOB_FOLDER)/vendor/lib/hw/gralloc.omap4430.so:/system/vendor/lib/hw/gralloc.omap4430.so \
$(IMGTEC_BLOB_FOLDER)/vendor/lib/libglslcompiler_SGX540_120.so:/system/vendor/lib/libglslcompiler_SGX540_120.so \
$(IMGTEC_BLOB_FOLDER)/vendor/lib/libIMGegl_SGX540_120.so:/system/vendor/lib/libIMGegl_SGX540_120.so \
$(IMGTEC_BLOB_FOLDER)/vendor/lib/libpvr2d_SGX540_120.so:/system/vendor/lib/libpvr2d_SGX540_120.so \
$(IMGTEC_BLOB_FOLDER)/vendor/lib/libpvrANDROID_WSEGL_SGX540_120.so:/system/vendor/lib/libpvrANDROID_WSEGL_SGX540_120.so \
$(IMGTEC_BLOB_FOLDER)/vendor/lib/libPVRScopeServices_SGX540_120.so:/system/vendor/lib/libPVRScopeServices_SGX540_120.so \
$(IMGTEC_BLOB_FOLDER)/vendor/lib/libsrv_init_SGX540_120.so:/system/vendor/lib/libsrv_init_SGX540_120.so \
$(IMGTEC_BLOB_FOLDER)/vendor/lib/libsrv_um_SGX540_120.so:/system/vendor/lib/libsrv_um_SGX540_120.so \
$(IMGTEC_BLOB_FOLDER)/vendor/lib/libusc_SGX540_120.so:/system/vendor/lib/libusc_SGX540_120.so \
$(IMGTEC_BLOB_FOLDER)/etc/powervr.ini:/system/etc/powervr.ini

