** Settings **
Library           AppiumLibrary
** Variables **
${REMOTE_URL}          http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}    iOS
${PLATFORM_VERSION}    14.5
${DEVICE_NAME}    iPhone 12 Pro Max
${BUNDLE_ID}      com.cmcglobal.CompareTwoString
${AutomationName}    XCUITest

** Keywords **
Open App Contact
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}     bundleId=${BUNDLE_ID}     deviceName=${DEVICE_NAME}
Input Text String 1, String 2 and Compare
    Input Text     stringOne     10
    ${stringOne} =    Get Text    stringOne
    Log To Console  ${stringOne}

    Input Text     stringTwo     10
    ${stringTwo} =    Get Text    stringTwo
    Log To Console  ${stringTwo}
   
    Should Be Equal As Strings    ${stringOne}    ${stringTwo}

** Test Cases **
TC1_add new contact
    Open App Contact
    Input Text String 1, String 2 and Compare
     
   