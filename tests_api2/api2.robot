*** Settings ***
Library  RequestsLibrary      

*** Test Cases ***
Teste GET
    ${response}     GET   https://serverest.dev/carrinhos?precoTotal=1300&quantidadeTotal=2      verify=${FALSE}

    Log To Console    ${response.json()}
    Should Be Equal As Strings    ${response}        <Response [200]>  