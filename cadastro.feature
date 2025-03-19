#lanaguage:pt

#1 – Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
#2 – Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
#3 – Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta.

Funcionalidade: Tela de cadastro - Checkout

    Como cliente da EBAC-SHOP
    Quero fazer concluir meu cadastro
    Para finalizar minha compra

    Contexto: Caso de teste 3
        Dado que eu esteja na pagina de cadastro - checkout

    Cenario: Cadastro válido
        Quando eu inserir todos os dados obrigatórios, maracados com asteristcos
        E o e-mail "aires@ebac.com"
        Entao o usuário deve finalizar a compra

    Cenario: Cadastro inválido
        Quando eu deixar cambos obrigatorios vazios
        E o e-mail "aires@ebac.com"
        Entao deve exibir a mensagem de alerta "Preencher campos obrigatórios"

    Cenario: E-mail inválido
        Quando eu inserir todos os dados obrigatórios, maracados com asteristcos
        E o e-mail "aires.com"
        Entao deve exibir a mensagem "Formato de e-mail inválido"


    Esquema do Cenario: Múltiplos e-mails
        Quando eu insrir todos os dados obrigatórios, marcados com asteristicos
        E o <email>
        Entao deve exibir a <mensagem> ou finalizar a compra

        Exemplos:
            | email            | mensagem                     |
            | "aires@ebac.com" |                              |
            | "airesebac.com"  | "Formato de e-mail inválido" |
            | "aires@ebac"     | "Formato de e-mail inválido" |
            | "thaty@ebac.com" |                              |

