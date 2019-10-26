#language:pt

Funcionalidade: Login
    Para que eu possa gerenciar atividades no Taskit
    Sendo um usuário previamente cadastrado
    Posso acessar o sistema com o meu email e senha

    @login
    Cenario: Acesso

        Quando eu faço login com "testinho@teste.com" e "teste123"
        Então devo ver o nome "Kalyanes" na área logada
