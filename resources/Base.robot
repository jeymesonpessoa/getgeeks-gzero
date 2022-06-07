*Settings*
Documentation       Base Test

Library             Browser
Library             Collections

Library             factories/Users.py

Resource            actions/_SharedActions.robot
Resource            actions/AuthActions.robot 
Resource            actions/SignupActions.robot

Resource            Database.robot
Resource            Helpers.robot

*Variables*
${BASE_UR}          https://getgeeks-jeymeson.herokuapp.com         

*Keywords*
Start Session
    New Browser     chromium    headless=False     
    New Page        ${BASE_UR}        

Finish Session
    Take Screenshot