@echo off
echo "making Directory for runConfigurations"
mkdir .idea\runConfigurations
echo "copying already created run configs"
cp -r C:/softwares/runConfigurations/*.* .idea/runConfigurations
echo "Verify files are present"
ls .idea/runConfigurations