Scenario: Adicionar auto-avaliação
	Given Estou na pagina de auto-avaliação
	And Eu vejo os campos para inserir as informações
	When Eu preencho todos os campos e confirmo
	Then Eu vejo uma feedback positivo
	And As auto-avaliações foram salvos no sistema.
    And Eu posso retornar a home do sistema.

Scenario: Adicionar auto-avaliação
	Given Estou na pagina de auto-avaliação
	And Eu vejo os campos para inserir as informações
	When Eu preencho ALGUNS dos campos e confirmo
	Then Eu vejo um alerta do sistema com o campo errado
	And As auto-avaliações não foram salvos no sistema.

Scenario: Adicionar auto-avaliação
	Given Estou na pagina de auto-avaliação
	And Eu vejo os campos para inserir as informações
	When Eu preencho ALGUNS dos campos com tipos errados e confirmo
	Then Eu vejo uma feedback de erro
	And As auto-avaliações não foram salvos no sistema.

Scenario: Visualizar auto-avaliações sem discrepância.
    Given: Usuário na página de auto-avaliações.
    And:  Um aluno tem conceito superior ao do professor em 1 de 5 metas, outro só tem conceitos inferiores ao do professor, e outro só tem conceitos iguais
    When: Usuário escolhe a opção de retirar alunos com discrepâncias .
    Then: Feedback do sistema alertando que não há alunos com discrepâncias.

Scenario: Auto-avaliações com discrepância.
    Given: Usuário na página de auto-avaliações.
    And: Há discrepância em 1 de 3 alunos.
    When: 1 aluno não tem conceito superior ao do professor em 1 de 5 metas
    Then: Sistema retorna informações do aluno que possui discrepância.