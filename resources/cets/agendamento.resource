*** Settings ***
Library          SeleniumLibrary
Resource         ../common.resource
#Resource        resources/agenda.resource
#Resource        resources/pacientes.resource
#Resource        resources/estabelecimentos.resource
#Resource        resources/exames.resource
#Resource        resources/perfils.resource
#Resource        resources/profissionais.resource

*** Keywords ***
Acesse a plataforma
    Open Browser  url=${url}  browser=${browser} 
Faça o login com o usuario ${username} e a senha ${password}
    Should Be True    ${TRUE}

Clique em gestão de agenda
    Should Be True    ${TRUE}
Clique em pesquisar Paciente
    Should Be True    ${TRUE}
Aguarde a tela de pesquisa de Paciente
    Should Be True    ${TRUE}
Selecione o ${tipo_de_pesquisa} e informe os ${dados_de_pesquisa}
    Should Be True    ${TRUE}
Clique em Pesquisar
    Should Be True    ${TRUE}
Aguarde a notificação de aguardar pesquisa
    Should Be True    ${TRUE}
Aguarde a notificação de paciente encontrado 
    Should Be True    ${TRUE}
Aguarde o resultado da pesquisa mostrar o ${nome}, o ${CPF} e o ${DN} do paciente
    Should Be True    ${TRUE}
Clique em agendar
    Should Be True    ${TRUE}
Aguarde a tela de configuração de agenda
    Should Be True    ${TRUE}
Selecione o profissional por ${estabelecimento}, ${profissão}, ${especialidade}, ${exame_procedimento}, ${nome_profissional}
    Should Be True    ${TRUE}
Clique em Filtrar Profissional
    Should Be True    ${TRUE}
Aguarde o resultado da pesquisa mostrar o Calendário
    Should Be True    ${TRUE}
Selecione a data ${dd-mm-aaaa}
    Should Be True    ${TRUE}
Selecione o nome do ${profissional}
    Should Be True    ${TRUE}
Selecione o horário ${hh:mm}
    Should Be True    ${TRUE}
Mostre o resumo do Agendamento
    Should Be True    ${TRUE}
Clique em Confirmar Agendamento
    Should Be True    ${TRUE}