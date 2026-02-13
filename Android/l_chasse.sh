#!/system/bin/sh
script_path="$(realpath "$0")"
DIR_script="$(dirname "${script_path}")"

##############
#rename Orange F if Mobile O
gsm_operator_alpha="$(getprop gsm.operator.alpha)"
if [ "$(echo "${gsm_operator_alpha}" | grep -c "Mobile O")" -eq 1 ]; then
	/system/bin/sh "${DIR_script}/Orange_F.sh"
fi
#RNCMobile if Free
##############

##############
#eNB Analytics :
am start fr.enb_analytics.enb4g/.MainActivity
sleep 1
#am broadcast -a fr.enb_analytics.enb4g.SERVICE_START fr.enb_analytics.enb4g
#am broadcast -a fr.enb_analytics.enb4g.SERVICE_STOP fr.enb_analytics.enb4g

am broadcast -a fr.enb_analytics.enb4g.RECORD_TRACES_ON fr.enb_analytics.enb4g
#am broadcast -a fr.enb_analytics.enb4g.RECORD_TRACES_OFF fr.enb_analytics.enb4g

am broadcast -a fr.enb_analytics.enb4g.RECORD_STUMBLER_ON fr.enb_analytics.enb4g
#am broadcast -a fr.enb_analytics.enb4g.RECORD_STUMBLER_OFF fr.enb_analytics.enb4g
#eNB Analytics
##############



##############
#TowerCollector
#am start info.zamojski.soft.towercollector/.SplashActivity
am broadcast -a info.zamojski.soft.towercollector.COLLECTOR_START info.zamojski.soft.towercollector
#am broadcast -a info.zamojski.soft.towercollector.COLLECTOR_STOP info.zamojski.soft.towercollector
#TowerCollector
##############

##############
#CellMapper
am start cellmapper.net.cellmapper/.MainActivity
sleep 1
am start -a startMapping cellmapper.net.cellmapper/.MainActivity
#am start -a stopMapping cellmapper.net.cellmapper/.MainActivity
#CellMapper
##############

##############
#NeoStumbler
am start xyz.malkki.neostumbler.fdroid/xyz.malkki.neostumbler.MainActivity
#sleep 1
#am broadcast -a yz.malkki.neostumbler.xxxxxxxxxx yz.malkki.neostumbler
#NeoStumbler
##############

##############
#NSG
am start com.qtrun.QuickTest/com.qtrun.nsg.LauncherActivity
#NSG
##############

##############
#nPerf
am start com.nperf.tester/.Activity.SplashScreenActivity
#nPerf
##############


##############
#RNCMobile if Free
if [ "$(echo "${gsm_operator_alpha}" | grep -c "Free")" -eq 1 ]; then
	am start org.rncteam.rncfreemobile/.MainActivity
	sleep 5
	am broadcast -a org.rncteam.rncfreemobile.CELL_RECORDER_START org.rncteam.rncfreemobile
fi
#am broadcast -a org.rncteam.rncfreemobile.CELL_RECORDER_START org.rncteam.rncfreemobile
#am broadcast -a org.rncteam.rncfreemobile.CELL_RECORDER_STOP org.rncteam.rncfreemobile
#RNCMobile if Free
##############
