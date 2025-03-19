#lanaguage:pt

#1 – Seleções de cor, tamanho e quantidade devem ser obrigatórios
#2 – Deve permitir apenas 10 produtos por venda
#3 –Quando eu clicar no botão “limpar” deve voltar ao estado original

Funcionalidade: Configuar produto

    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto
    E escolher a quantidade
    Para depois inserir no carrinho

    Contexto: Caso de teste 1
        Dado que eu entre no site da EBAC-SHOP e escolher um produto

    Cenario: Adicionar produto ao carrinho
        Quando eu escolher a cor "vermelha" e o tamanho "M"
        E a quandade "10"
        Entao deve exibir a mensagem "Produto adicionado ao carrinho"


    Cenario: Quantidade incorreta de itens
        Quando eu escolher a cor "vermelha" e o tamanho "M"
        E a quantidade "25"
        Entao deve exibir a mensagem de alerta "Quantidade incorreta"

    Cenario: Limpar carrinho
        Quando eu escolher a cor "vermelha" e o tamanho "M"
        E a quandade "4"
        E clicar em "limpar"
        Entao o carrinho deve voltar ao estado original

    Esquema do Cenario: Configurar múltiplos produtos
        Quando eu escolher a <cor> e o <tamanho>
        E a <quantidade>
        Entao deve exibir a <mensagem> de sucesso

        Exemplos:
            | cor       | tamanho | quantidade | mensagem                         |
            | "azul"    | "M"     | "3"        | "Produto adicionado ao carrinho" |
            | "preto"   | "P"     | "8"        | "Produto adicionado ao carrinho" |
            | "rosa"    | "XS"    | "12"       | "Quantidade incorreta"           |
            | "branco"  | "L"     | "19"       | "Quantidade incorreta"           |
            | "amarelo" | "GG"    | "7"        | "Produto adicionado ao carrinho" |





