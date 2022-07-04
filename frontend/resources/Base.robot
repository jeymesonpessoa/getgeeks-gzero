*Settings*
Documentation       Base Test

Library             Browser
Library             Collections

Library             factories/Users.py
Library             Utils.py

Resource            actions/_SharedActions.robot
Resource            actions/AuthActions.robot
Resource            actions/GeekActions.robot 
Resource            actions/SignupActions.robot

Resource            Database.robot
Resource            Helpers.robot
Resource            Services.robot

*Variables*
${BASE_UR}          https://getgeeks-jeymeson.herokuapp.com         

*Keywords*
Start Session
    New Browser         ${BROWSER}    headless=${HEADLESS}    
    New Page            ${BASE_UR}
    Set Viewport Size   1280    768           

After Test
    ${shot_name}        Screenshot Name
    Take Screenshot     fullPage=True       filename=${shot_name}