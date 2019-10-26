#language:pt

@login
Funcionalidade: Cadastro de Tasks
    Para que eu possa disponibilizar novas tasks no board
    Sendo uma gestora de tasks
    Posso cadastrar novas tasks

    @new_task
    Esquema do Cenario: Nova taks
        Uma nova task é cadastrada através do formulário
        assim, um novo registro é inserido no meu board do Taskit.

        Dado que <codigo> é uma nova task
        Quando eu faço o cadastro desta task
        Então devo ver a nova task na lista

        Exemplos:
            |codigo     |
            |"compras"  |
            |"academia" | 

    