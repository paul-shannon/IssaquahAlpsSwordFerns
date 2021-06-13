ID = 23oct2020
APP_IMAGE_NAME = sewardmap_app_$(ID)
default:
	@echo targets: runLocal.localConfig, runLocal.remoteConfig, updateConfig

runLocal.localConfig:
	(export localConfig=TRUE; R -f app.R)

runLocal.remoteConfig:
	(export localConfig=FALSE; R -f app.R)

updateConfig:
	scp site.yaml    paulshannnon@pshannon.net:public_html/pshannon.net/issaquahAlpsFernDecline/config/
	scp regions.yaml paulshannnon@pshannon.net:public_html/pshannon.net/issaquahAlpsFernDecline/config/
	scp tracks.yaml  paulshannnon@pshannon.net:public_html/pshannon.net/issaquahAlpsFernDecline/config/


createConfigDir:
	ssh paulshannnon@pshannon.net mkdir -p public_html/pshannon.net/issaquahAlpsFernDecline/config/

