#lanaguage:pt

#1 – Ao inserir dados válidos deve ser direcionado para a tela de checkout
#2 – Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”

Funcionalidade: Login na plataforma

    Como cliente da EBAC-SHOP
    Quero fazer o login (autenticação) na plataforma
    Para visualizar meus pedidos

    Contexto: Caso de teste 2
        Dado que eu esteja na pagina de login

    Cenario: Login válido
        Quando eu insrir o usuário "aires@ebac.com"
        E a senha "123@senha"
        Entao deve ser redirecionado para a tela de checkout

    Cenario: Login inválido
        Quando eu inserir o usuário "zxc@ebac.com"
        E a senha "123@senha"
        Entao deve exibir a mensagem "Usuário ou senha inválidos"

    Esquema do Cenario: Autenticar múltiplos usuários
        QuaEndo eu inserir o <usuario>
        E a <senha>
        Entao deve exibir a <mensagem> ou direcionar para a tela de checkout

        Exemplos:
            | usuario          | senha        | mensagem                     |
            | "aires@ebac.com" | "123@senha"  | ""                           |
            | "thaty@ebac.com" | "123@senha"  | ""                           |
            | "zxc@ebac.com"   | "zxc!!senha" | "Usuário ou senha inválidos" |
            | "maria@ebac.com" | "cxz!senha"  | "Usuário ou senha inválidos" |