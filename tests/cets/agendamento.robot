*** Settings  ***
Resource        ../../resources/cets/agendamento.resource

# Precondições Identificadas
# 1 - Precisa de Paciente Cadastrado
# 2 - Precisa de Estabelecimento Cadastrado
# 3 - Precisa de Profissial cadastrado
# 4 - Precisa de Exame ou Procedimento cadastrado
# 5 - Agenda Cadastrada


# Perguntas:
# Seria possivel ter um banco de dados vázio?
# Como posso cadastror um profissional?
*** Variables ***
${perfil}=  "dummy"
${tipo_de_pesquisa}=  "dummy"
${dados_de_pesquisa}=  "dummy"
${nome_do_paciente}=  "dummy"
${cpf_do_paciente}=  "dummy"
${dn_do_paciente}=  "dummy"
${estabelecimento}=  "dummy"
${profissão}=  "dummy"
${especialidade}=  "dummy"
${exame_procedimento}=  "dummy"
${nome_profissional}=  "dummy"
${ddmmaaaa}=  "dummy"
${profissional}=  "dummy"
${hhmm}=  "dummy"

*** Test Case ***
Agendamento de paciente
    [Documentation]  Caminho para agendamento de pacientes segundo
    Acesse a plataforma SIAS
    Faça o login com o perfil ${perfil}
    Clique em gestão de agenda
    Clique em pesquisar Paciente
    Aguarde a tela de pesquisa de Paciente
    Selecione o ${tipo_de_pesquisa} e informe os ${dados_de_pesquisa}
    Clique em Pesquisar
    Aguarde a notificação de aguardar pesquisa
    Aguarde a notificação de paciente encontrado 
    Aguarde o resultado da pesquisa mostrar o ${nome_do_paciente}, o ${cpf_do_paciente} e o ${dn_do_paciente} do paciente
    Clique em agendar
    Aguarde a tela de configuração de agenda
    Selecione o profissional por ${estabelecimento}, ${profissão}, ${especialidade}, ${exame_procedimento}, ${nome_profissional}
    # Nesse ponto, apenas estabeliecimento, profissional e especialidade são obrigatória
    # Para melhorar este cenário, seria interessante ter a frequencia de utilização dos opcionais.
    # talvez adicionar um log para pegar metricas seria interessante para monitorar isso.
    Clique em Filtrar Profissional
    Aguarde o resultado da pesquisa mostrar o Calendário
    Selecione a data ${ddmmaaaa}
    Selecione o nome do ${profissional}
    Selecione o horário ${hhmm}
    Mostre o resumo do Agendamento
    Clique em Confirmar Agendamento
    [Teardown]  Close All Browsers
