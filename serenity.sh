#!/usr/local/bin/bash

display_usage() {
  echo "This script must be run with at least 2 arguments"
  echo -e "Usage:" $0 "[ios|android|ios_realdevice|android_realdevice]"
}

if [  $# -lt 1 ]
then
      display_usage
      exit 1
fi

mvn -U -DskipTests=true clean install
app_path=$2
case $1 in 
  android)
    mvn clean verify -Dwebdriver.driver=appium -Dcucumber.filter.tags="@mobile" -Dcucumber.glue="demo.stepdefinitions"
    ;;
  android_realdevice)
    mvn clean verify -Dwebdriver.driver=appium -Dcucumber.filter.tags="@mobile" -Dcucumber.glue="demo.stepdefinitions" -Dproperties=serenity.real.devices.properties
    ;;
  ios)
    mvn clean verify -Dwebdriver.driver=appium -Dcucumber.filter.tags="@mobile" -Dcucumber.glue="demo.stepdefinitions" -Dproperties=serenity.ios.properties
    ;;
  ios_realdevice)
    mvn clean verify -Dwebdriver.driver=appium -Dcucumber.filter.tags="@mobile" -Dcucumber.glue="demo.stepdefinitions" -Dproperties=serenity.ios.real.devices.properties
    ;;
  *)
    display_usage
    exit 1
    ;;
esac