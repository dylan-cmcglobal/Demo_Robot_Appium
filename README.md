# Appium with Robot Framework - Example for iOS in MacOS

## Setting

 - Before you can setting it you need download:
      * Node: https://nodejs.org/en/download/
      * Java SDK: https://www.oracle.com/java/technologies/downloads/
      * Python: https://www.python.org/downloads/
     
## Setup Robot Framework
 * Open terminal and write:
 
          pip3 install robotframework
          pip3 install robotframework-appiumlibrar
          
          
 ## After a successful install of Robot Framework, install Appium, Selenium using the terminal:
          npm install -g appium
          npm install -g selenium
          
 ## Install the tools that help Appium to perform:
          brew install ideviceinstaller
          brew install carthage
          brew install libimobiledevice —HEAD
          npm install -g ios-deploy
          npm install -g deviceconsole
          gem install xcpretty
          sudo npm install appium-doctor -g
          sudo npm install appium-webdriveragent
