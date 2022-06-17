*Settings*
Documentation       Attempt BeGeek test suite 

Resource        ${EXECDIR}/resources/Base.robot

Suite Setup         Start Session For Attempt Be Geek
Test Template       Attempt Be a Geek 

*Variables*
${longdesc}     formato o seu pcdffdfsdfdfghhjhjhgfjhjhjjfjfjfgjfgjformato o seu pcdffdfsdfdfghgfhfghjhjhjhgfjhjhjjfjfjfgjfgjformato o seu pcdffdfsdfdfghgfhfghjhjhjhgfjhjhjjfjfjfgjfgjformato o seu pcdffdfsdfdfghgfhfghjhjhjhgfjhjhjjfjfjfgjfgjformdssdfdsfsdfdsdsfsdfdfgfdgdfgdfgfdgdgfhghghfghfhfghg

*Test Cases*

Short desc          desc    Formato o seu PC    A descrição deve ter no minimo 80 caracteres
Long desc           desc    ${longdesc}         A descrição deve ter no máximo 255 caracteres
Empty desc          desc    ${EMPTY}            Informe a descrição do seu trabalho
Whats only ddd      whats   11                  O Whatsapp deve ter 11 digitos contando com o DDD
Whats only numbers  whats   123456789           O Whatsapp deve ter 11 digitos contando com o DDD
Empty whats         whats   ${EMPTY}            O Whatsapp deve ter 11 digitos contando com o DDD
Cost letters        cost    aaaa                Valor hora deve ser numérico
Cost alfa           cost    aa12                Valor hora deve ser numérico
Cost special chars  cost    $%&                 Valor hora deve ser numérico
Empty cost          cost    ${EMPTY}            Valor hora deve ser numérico


*Keywords*
Attempt Be a Geek 
    [Arguments]     ${key}  ${input_field}  ${output_message}

    ${user}     Factory User    attempt_be_geek

    Set To Dictionary   ${user}[geek_profile]   ${key}  ${input_field} 

    Fill Geek Form      ${user}[geek_profile]     
    Submit Geek Form 
    Alert Span Should Be   ${output_message}

    Take Screenshot     fullPage=True

Start Session For Attempt Be Geek 

    ${user}     Factory User    attempt_be_geek

    Start Session
    Do Login   ${user}
    Go To Geek Form 