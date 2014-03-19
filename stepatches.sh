echo -e $CL_BLU"Cherrypicking OMX Patch - android_frameworks_av"$CL_RST
cd frameworks/av
git fetch https://github.com/shine911/frameworks_av kk4.4
git cherry-pick 4cb6b2a41e0976c35687af07846b7f51ba35cbdd
git cherry-pick 1e85ab573e7b592858cf434257d49351c206714c
git cherry-pick bcc34dabf79696f46577c74c584309598d59bbba
cd ..
echo -e $CL_BLU"Cherrypicking OMX Patch - android_frameworks_native"$CL_RST
cd native
git fetch https://github.com/shine911/frameworks_native kk4.4
git cherry-pick b5586e6386282cb146ca6029dad7cb0aeabf0ef
git cherry-pick ba08043183eec006708d15421ca05c0047a3c5fd
cd ..
echo -e $CL_BLU"Cherrypicking OMX Patch - android_frameworks_base"$CL_RST
cd base
git fetch https://github.com/TeamCanjica/android_frameworks_base cm-11.0
git cherry-pick 3826055d49ec70ab3d0e130a8e444fd334806fa5
git cherry-pick bb9d91d07fdc20c2443c9668e2f20e392b25bac4
cd ../..
echo -e $CL_BLU"Cherrypicking Core Patch - OMX and reboot/shutdown fix"$CL_RST
cd system/core
git fetch https://github.com/shine911/android_system_core kk4.4
git cherry-pick bef1a23e42c532b5f06fa54878434995478b1f54
cd ..
echo -e $CL_BLU"Cherrypicking vold patch to allow switching storages"$CL_RST
cd vold
git fetch https://github.com/shine911/android_system_vold kk4.4
git cherry-pick FETCH_HEAD
cd ../..
echo -e $CL_BLU"Cherrypicking vibrator fix"$CL_RST
cd hardware/libhardware_legacy
git fetch https://github.com/TeamCanjica/android_hardware_libhardware_legacy cm-11.0
git cherry-pick 9c2250d32a1eda9afe3b5cefe3306104148aa532
cd ../..
echo -e $CL_BLU"Cherrypicking Camera fix"$CL_RST
cd packages/apps/Camera2
git fetch https://github.com/CyanogenMod/android_packages_apps_Camera2 cm-11.0
git cherry-pick 42067bbce2203088e09039169b0262691dd07e97
cd ../../..
echo -e $CL_BLU"DONE!"$CL_RST