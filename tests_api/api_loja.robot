*** Settings ***
Library  RequestsLibrary      

*** Test Cases ***
Teste GET
    ${response}     GET    https://serverest.dev/usuarios      verify=${FALSE}

    Log To Console    ${response.json()}
    Should Be Equal As Strings    ${response}        <Response [200]>  

