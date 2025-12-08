#!/system/bin/sh
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

