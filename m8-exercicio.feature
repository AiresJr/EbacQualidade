#1 – Seleções de cor, tamanho e quantidade devem ser obrigatórios
#2 – Deve permitir apenas 10 produtos por venda
#3 –Quando eu clicar no botão “limpar” deve voltar ao estado original

Feature: Configuar produto

    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto
    E escolher a quantidade
    Para depois inserir no carrinho

    Background: Caso de teste 1
        Given que eu entre no site da EBAC-SHOP e escolher um produto

    Scenario: Adicionar produto ao carrinho
        When eu escolher a cor "vermelha" e o tamanho "M"
        And a quandade "10"
        Then deve exibir a mensagem "Produto adicionado ao carrinho"


    Scenario: Quantidade incorreta de itens
        When eu escolher a cor "vermelha" e o tamanho "M"
        And a quantidade "25"
        Then deve exibir a mensagem de alerta "Quantidade incorreta"

    Scenario: Limpar carrinho
        When eu escolher a cor "vermelha" e o tamanho "M"
        And a quandade "4"
        And clicar em "limpar"
        Then o carrinho deve voltar ao estado original

    Scenario Outline: Configurar múltiplos produtos
        When eu escolher a <cor> e o <tamanho>
        And a <quantidade>
        Then deve exibir a <mensagem> de sucesso

        Examples:
            | cor       | tamanho | quantidade | mensagem                         |
            | "azul"    | "M"     | "3"        | "Produto adicionado ao carrinho" |
            | "preto"   | "P"     | "8"        | "Produto adicionado ao carrinho" |
            | "rosa"    | "XS"    | "12"       | "Quantidade incorreta"           |
            | "branco"  | "L"     | "19"       | "Quantidade incorreta"           |
            | "amarelo" | "GG"    | "7"        | "Produto adicionado ao carrinho" |

----------------------------------------------------------------------------------------------------------------------------------

#1 – Ao inserir dados válidos deve ser direcionado para a tela de checkout
#2 – Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”

Feature: Login na plataforma

    Como cliente da EBAC-SHOP
    Quero fazer o login (autenticação) na plataforma
    Para visualizar meus pedidos

    Background: Caso de teste 2
        Given que eu esteja na pagina de login

    Scenario: Login válido
        When eu insrir o usuário "aires@ebac.com"
        And a senha "123@senha"
        Then deve ser redirecionado para a tela de checkout

    Scenario: Login inválido
        When eu inserir o usuário "zxc@ebac.com"
        And a senha "123@senha"
        Then deve exibir a mensagem "Usuário ou senha inválidos"

    Scenario Outline: Autenticar múltiplos usuários
        When eu inserir o <usuario>
        And a <senha>
        Then deve exibir a <mensagem> ou direcionar para a tela de checkout

        Examples:
            | usuario          | senha        | mensagem                     |
            | "aires@ebac.com" | "123@senha"  | ""                           |
            | "thaty@ebac.com" | "123@senha"  | ""                           |
            | "zxc@ebac.com"   | "zxc!!senha" | "Usuário ou senha inválidos" |
            | "maria@ebac.com" | "cxz!senha"  | "Usuário ou senha inválidos" |

----------------------------------------------------------------------------------------------------------------------------------

#1 – Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
#2 – Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
#3 – Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta.

Feature: Tela de cadastro - Checkout

    Como cliente da EBAC-SHOP
    Quero fazer concluir meu cadastro
    Para finalizar minha compra

    Background: Caso de teste 3
        Given que eu esteja na pagina de cadastro - checkout

    Scenario: Cadastro válido
        When eu inserir todos os dados obrigatórios, maracados com asteristcos
        And o e-mail "aires@ebac.com"
        Then o usuário deve finalizar a compra

    Scenario: Cadastro inválido
        When eu deixar cambos obrigatorios vazios
        And o e-mail "aires@ebac.com"
        Then deve exibir a mensagem de alerta "Preencher campos obrigatórios"

    Scenario: E-mail inválido
        When eu inserir todos os dados obrigatórios, maracados com asteristcos
        And o e-mail "aires.com"
        Then deve exibir a mensagem "Formato de e-mail inválido"


    Scenario Outline: Múltiplos e-mails
        When eu insrir todos os dados obrigatórios, marcados com asteristicos
        And o <email>
        Then deve exibir a <mensagem> ou finalizar a compra

        Examples:
            | email            | mensagem                     |
            | "aires@ebac.com" |                              |
            | "airesebac.com"  | "Formato de e-mail inválido" |
            | "aires@ebac"     | "Formato de e-mail inválido" |
            | "thaty@ebac.com" |                              |

