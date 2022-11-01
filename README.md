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
          
 ## Setup Appium Inspector Access to the path: https://github.com/appium/appium-inspector/releases Choose file .dmg to download and setup it .
 You can setup Capabilities for it, then open your application and run Capabilities:
  
          {
             "platformName": "ios",
             "platformVersion": "14.5",
             "deviceName": "iPhone 12 Pro Max",
             "automationName": "XCUItest",
             "bundleId": ""
          }
          
 ## Setup IDE
 You can choose Atom, Visual Studio Code or any IDE
 
 
 ## Run WebDriverAgentLib
Now Appium is configured correctly, it is time to set up the certificates for Apple in Xcode. This is needed to install the XCTest runner on iOS devices, which is needed to trigger the test cases on the device.
 
 
        cd /usr/local/lib/node_modules/appium/node_modules/appium-xcuitest-driver/WebDriverAgent/
        ./Scripts/bootstrap.sh
        open -a Xcode WebDriverAgent.xcodeproj
        
        
        
 Xcode should open now. Open the target WebDriverAgentLib and sign this with your Developer Account. Do the same for WebDriverAgentRunner. Build the project to validate if the signing was successful.
     
 ## How to run automation test
 Start appium server
 
           appium
           robot demoAutomation.robot
 
 
 
 ## Note
 
 If you have a error as: AttributeError: 'WebDriver' object has no attribute 'find_elements_by_id' or something like that Open terminal and write:
 
          npm install -g selenium==4.2.0
          
          
          
 ## You can read more here:         
 https://zonneveld.dev/automate-regression-testing-for-ios-and-android-using-appium-and-robot-framework/
       
 ## Thank!
