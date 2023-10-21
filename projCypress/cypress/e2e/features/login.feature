#language: pt

Funcionalidade: Login do Saucedemo
    Como um usuario, 
    quero fazer o login no site 
    para aproveitar suas funcionalidades

Contexto: 
    Dado que acesse a área de login do Saucedemo


    Cenário: Autenticação válida
        Quando  entrar com as credenciais: login "standard_user" 
        E       senha "secret_sauce"
        Então   entrar de forma bem sucedida no site e acessar os produtos

    Cenário: Autenticação com login invalida
        Quando  entrar com as credenciais: login "invalid_user"
        E       senha "secret_sauce"
        Então   deve aparecer uma notificação informando que as credenciais não batem com nenhum usuario do serviço

    Cenário: Autenticação com senha invalida
        Quando  entrar com as credenciais: login "standard_user"
        E       senha "wrong_sauce"
        Então   deve aparecer uma notificação informando que as credenciais não batem com nenhum usuario do serviço

        Cenário: Autenticação com login em branco
        Quando  entrar com as credenciais: deixar campo do login em branco
        E       senha "secret_sauce"
        Então   deve aparecer uma notificação informando que é necessario entrar com um usuario


    Esquema do Cenário: Logins inválidos 
        Quando eu digitar o <usuario>
        E a senha <senha>
        Então deve ser exibida a mensagem <mensagem> 
        Exemplos: 
        | usuario               | senha             | mensagem                                                                      | 
        | "invalid_user"        | "secret_sauce"    | "Epic sadface: Username and password do not match any user in this service"   |
        | "standard_user"       | "wrong_sauce"     | "Epic sadface: Username and password do not match any user in this service"   |
        | ""                    | "secret_sauce"    | "Epic sadface: Username is required"                                          |
        | "standard_user"       | ""                | "Epic sadface: Password is required"                                          |