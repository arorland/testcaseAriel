*** Setting ***
Library        SeleniumLibrary
#Library        DateTime
#Suite Setup  Setup

*** Variables ***
${WEB}  https://www.google.com/
${BROWSER}  chrome
#${TYPE OF FILE}  png
*** Keywords ***

#Get DateTime
#  ${date1}=  Get Current Date  result_format=%Y-%m-%d %H-%M-%S
#  [Return]     ${date1}

Open Web
  Open Browser  ${WEB}   ${BROWSER}
  Maximize Browser Window
#  ${Date}  Get DateTime
#  Set Global Variable  ${Path}  fotos/anivarro/${Date}
#  Set Screenshot Directory  ${Path}
#  Wait Until Page Contains  Element
#  Capture Page Screenshot  ${Date}.${TYPE OF FILE}
#  Log To Console  ${\n}Screenshot

#Setup
      Set Suite Metadata  Link to my cool external site  http://www.external.com  top=True

Close Web
  Close Window


*** Test Cases ***

[1] Click Home
  Open Web
  Close Web
