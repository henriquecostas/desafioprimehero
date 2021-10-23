
*** Settings ***
Documentation   Neste arquivo estarão presentes todos os execícios de automação do curso Prime Hero
Library         String

*** Variables ***
# Variável do tipo dicionário
&{PESSOA}   nome=Henrique    sobrenome=Costa    idade=23    altura=177cm  cpf=123.456.789-10 

*** Keywords ***
Concatenar email "${PESSOA.nome}" "${PESSOA.sobrenome}" "${PESSOA.idade}"
    ${EMAIL}    Catenate    ${PESSOA.nome}_${PESSOA.sobrenome}_${PESSOA.idade}@robot.com
    ${EMAIL}    Convert To Lower Case   ${EMAIL}
    [Return]    ${EMAIL}

Somar dois números
    [Arguments]     ${NUM_A}    ${NUM_B}
    ${SOMA}         Evaluate    ${NUM_A}+${NUM_B}
    [Return]        ${SOMA}

Somar os números "${NUM_A}" e "${NUM_B}"
    ${SOMA}     Evaluate    ${NUM_A}+${NUM_B}
    [Return]    ${SOMA}

Contar de 0 a 9
    FOR     ${COUNT}    IN RANGE    0   9
        Log To Console  ${COUNT}
    END

Percorrer lista
    @{FRUTAS}   Create List     Banana  Maçã    Pera    Uva     Abacaxi
    FOR     ${FRUTA}    IN  ${FRUTAS}   
        Log To Console      ${FRUTA}
    END

Contar e logar
    FOR     ${NUMERO_ATUAL}     IN RANGE    0   11
           Log To Console       Estou no número: ${NUMERO_ATUAL}
    END

Demo países
    @{COUNTRY}  Create List     
    ...     Brasil      
    ...     Alemanha       
    ...     Italia       
    ...     Russia      
    ...     França

    FOR     ${N_PAISES}     IN      ${COUNTRY}
        Log To Console              ${N_PAISES}
    END

Tomar decisões
    FOR     ${NUMERO_ATUAL}     IN RANGE    0   11
        IF      ${NUMERO_ATUAL} == 5  
            Log To Console       Estou no número: ${NUMERO_ATUAL}
        ELSE IF     ${NUMERO_ATUAL} == 8
            Log To Console       Estou no número: ${NUMERO_ATUAL}
        END
    END

Tomar decisões 2
    FOR     ${NUMERO_ATUAL}     IN RANGE    0   11
        IF      ${NUMERO_ATUAL} == 5 or ${NUMERO_ATUAL} == 8
            Log To Console       Estou no número: ${NUMERO_ATUAL}
        END
    END
