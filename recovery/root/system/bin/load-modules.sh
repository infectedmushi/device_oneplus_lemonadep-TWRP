MODULES="mt2063.ko aw8697.ko llcc_perfmon.ko mxl301rf.ko mxl5007t.ko si2157.ko mbhc_dlkm.ko pinctrl_wcd_dlkm.ko qm1d1c0042.ko fc0012.ko tua9001.ko it913x.ko hid-aksys.ko mxl5005s.ko qt1010.ko mc44s803.ko q6_pdr_dlkm.ko m88rs6000t.ko tda18250.ko max2165.ko fc0011.ko stub_dlkm.ko rmnet_ctl.ko xc4000.ko rdbg.ko msi001.ko tda18218.ko xc5000.ko tea5767.ko mt2131.ko snd_event_dlkm.ko qcom_edac.ko tda9887.ko msm_drm.ko swr_dlkm.ko slimbus.ko tda18212.ko tea5761.ko mt2060.ko qm1d1b0004.ko wcd_core_dlkm.ko r820t.ko mt2266.ko fc2580.ko fc0013.ko q6_notifier_dlkm.ko swr_haptics_dlkm.ko wcd938x_slave_dlkm.ko wcd937x_slave_dlkm.ko rmnet_core.ko rmnet_offload.ko rmnet_shs.ko wsa883x_dlkm.ko apr_dlkm.ko q6_dlkm.ko tfa98xx-v6_dlkm.ko platform_dlkm.ko swr_ctrl_dlkm.ko bolero_cdc_dlkm.ko wcd9xxx_dlkm.ko wcd937x_dlkm.ko wcd938x_dlkm.ko swr_dmic_dlkm.ko wsa_macro_dlkm.ko rx_macro_dlkm.ko slimbus-ngd.ko va_macro_dlkm.ko machine_dlkm.ko native_dlkm.ko adsp_loader_dlkm.ko pinctrl_lpi_dlkm.ko tx_macro_dlkm.ko"

for mod in `echo $MODULES`; do
  modprobe -d /vendor_dlkm/lib/modules $mod
done

