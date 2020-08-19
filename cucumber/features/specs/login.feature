# language: pt
Funcionalidade: Login
    Para que eu possa acessar as funcionalidades do aplicativo
    Como um usuário previamente cadastrado
    Posso acessar a área restrita do aplicativo

    Contexto: Tela de login
        Dado que estou na tela de login

    Cenario: Efetuar login
        Quando informo o "44966917875" e "141629"
        E toco no botão "Entrar"
        Então vejo a tela inicial do aplicativo

    Esquema do Cenário: Tentativa de login
        Quando informo o "<usuario>" e "<senha>"
        E toco no botão "Entrar"
        Então vejo a mensagem "<mensagem>"

        Exemplos:
            | usuario      | senha  | mensagem                            |
            |              | 141629 | Digite um CPF válido                |
            | 44966917875  |        | Digite uma senha válida             |
            | 11111111111  | 141629 | Usuário e/ou senha inválidos        |
            | 44966917875  | 123456 | Usuário e/ou senha inválidos        |
            | 44966917875  | 12345  | Deve conter no mínimo 6 caracteres  |