*** Settings  ***
Resource        resources/common.resource
Resource        resources/agenda.resource
Resource        resources/pacientes.resource
Resource        resources/estabelecimentos.resource
Resource        resources/exames.resource
Resource        resources/perfils.resource
Resource        resources/profissionais.resource

# Precondições Identificadas
# 1 - Precisa de Paciente Cadastrado
# 2 - Precisa de Estabelecimento Cadastrado
# 3 - Precisa de Profissial cadastrado
# 4 - Precisa de Exame ou Procedimento cadastrado
# 5 - Agenda Cadastrada


# Perguntas:
# Seria possivel ter um banco de dados vázio?
# Como posso cadastror um profissional?
#
#


*** Test Case ***
Agendamento de paciente
    [Documentation]  Caminho para agendamento de pacientes
    Acesse a plataforma SIAS
    Clique em gestão de agenda
    Clique em pesquisar Paciente
    Aguarde a tela de pesquisa de Paciente
    Selecione o ${tipo_de_pesquisa} e informe os ${dados_de_pesquisa}
    Clique em Pesquisar
    Aguarde a notificação de aguardar pesquisa
    Aguarde a notificação de paciente encontrado 
    Aguarde o resultado da pesquisa mostrar o ${nome}, o ${CPF} e o ${DN} do paciente
    Clique em agendar
    Aguarde a tela de configuração de agenda
    Selecione o profissional por ${estabelecimento}, ${profissão}, ${especialidade}, ${exame_procedimento}, ${nome_profissional}
    # Nesse ponto, apenas estabeliecimento, profissional e especialidade são obrigatória
    # Para melhorar este cenário, seria interessante ter a frequencia de utilização dos opcionais.
    # talvez adicionar um log para pegar metricas seria interessante para monitorar isso.
    Clique em Filtrar Profissional
    Aguarde o resultado da pesquisa mostrar o Calendário
    Selecione a data ${dd-mm-aaaa}
    Selecione o nome do ${profissional}
    Selecione o horário ${hh:mm}
    Mostre o resumo do Agendamento
    Clique em Confirmar Agendamento



         





