*Settings*
Documentation       Users route 


*Keywords*
POST User
    [Arguments]     ${payload}

    ${response}     POST    
    ...             ${API_USERS}/sessions   
    ...             json=${payload}    
    ...             expected_status=any  

    [return]        ${response}