#!/system/bin/sh
#eNB Analytics :
am start fr.enb_analytics.enb4g/.MainActivity

#am broadcast -a fr.enb_analytics.enb4g.SERVICE_START fr.enb_analytics.enb4g
#am broadcast -a fr.enb_analytics.enb4g.SERVICE_STOP fr.enb_analytics.enb4g

am broadcast -a fr.enb_analytics.enb4g.RECORD_TRACES_ON fr.enb_analytics.enb4g
#am broadcast -a fr.enb_analytics.enb4g.RECORD_TRACES_OFF fr.enb_analytics.enb4g

am broadcast -a fr.enb_analytics.enb4g.RECORD_STUMBLER_ON fr.enb_analytics.enb4g
#am broadcast -a fr.enb_analytics.enb4g.RECORD_STUMBLER_OFF fr.enb_analytics.enb4g



#TowerCollector :
#am start info.zamojski.soft.towercollector/.SplashActivity
am broadcast -a info.zamojski.soft.towercollector.COLLECTOR_START info.zamojski.soft.towercollector
#am broadcast -a info.zamojski.soft.towercollector.COLLECTOR_STOP info.zamojski.soft.towercollector

#CellMapper :
am start cellmapper.net.cellmapper/.MainActivity
am start -a startMapping cellmapper.net.cellmapper/.MainActivity
#am start -a stopMapping cellmapper.net.cellmapper/.MainActivity

#NSG :
am start com.qtrun.QuickTest/com.qtrun.nsg.LauncherActivity


#nPerf :
am start com.nperf.tester/.Activity.SplashScreenActivity

exit