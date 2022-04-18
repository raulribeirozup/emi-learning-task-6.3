# emi-learning-task-6.3

Explorando o Mundo iOS - Learning Task 6.3

### Colocando a mão na massa e completando o trabalho para um projeto real

Dessa vez o desafio é completar o trabalho iniciado pelo especialista para finalizar o código para a tela de listagem de sessões de cinema para um aplicativo de venda de ingressos. Através dos conhecimentos sobre as _Table Views_ adquiridos nesta seção, você deve completar o desafio fornecendo uma implementação que apresente as sessões para um filme dividindo-as em seções por cinema. Tenha em mente que o filme deve ter sido selecionado pelo usuário em um ponto anterior do fluxo de utilização do aplicativo.

![Imagem com a especificação da tela para o desafio](https://github.com/zup-academy/materiais-publicos-treinamentos/blob/main/explorando-o-mundo-ios/imagens/table-views-lt3-especificacao-alvo.jpg?raw=true)

O projeto base já conta com alguns módulos implementados fornecendo alguns componentes da camada de visualização, uma abstração simulando um módulo que carrega as sessões do servidor, além de dar pistas sobre a modelagem para o desafio. São eles:

* `CustomPatterns+DateFormatter`: _Extension_ útil para formatações de datas e horários. Adiciona uma função `format(date:to:) -> String` que recebe uma data e o padrão de formato desejado e devolve a string.
* `MovieSessionsAPI`: Abstração para simular o carregamento das sessões para um filme escolhido junto a um servidor. Utilize a função `getSessionBy(_:) -> [Sessions]` que recebe o filme seleciona e devolve uma lista de `Sessions`.
* `Movie`: Contém apenas um _snippet_ para a enum que representa a classificação indicativa para um filme. Você deve adicionar as _structs_ necessárias para modelar o restante da ideia de um filme. 
* `Main.storyboard`: Contém a estrutura básica da tela. Atualmente apenas com a _view_ para o _header_.
* `TableViewHeader`: Contém todo o código para a camada da view para o cabeçalho da tabela (comentado atualmente por conta das referências a outros módulos que quebrariam o build).
* `TableSectionHeaderView`: Contém o esboço do código da view para os _headers_ de seção da tabela. Você deve completar a implementação aqui.

O objetivo é propor uma implementação para a tela atendendo às especificação de design, cujas propriedades e valores estão a seguir.

```
Table View
    Style = Inset Grouped
    Background = Tertiary System Background
    Section Header Height = 48

Session Cell
    Identifier: "SessionCell"
    Background: Secondary System Background

Movie Icon Image View
    Margem Superior = 12
    Margem Esquerda = 12
    Margem Inferior = 12

    Largura = 24
    Altura = 24
    Image = Film // provida pelo catálogo de assets
    Tint = Secondary Label Color

Hours Label
    Margem Superior = 12
    Margem Esquerda = 12
    Margem Inferior = 12

    Valor = "18:15"
    Color = Secondary Label Color
    Font = System Semibold 14.0

Session Type Label
    Margem Superior = 12
    Margem Esquerda = 12
    Margem Inferior = 12
    Margem Direita = 12

    Valor = "Legendado" // ou "Dublado"
    Color = Secondary Label Color
    Font = System Italic 14.0
```

Você deve começar a implementação a partir do estado base do projeto disponível [aqui](https://github.com/rafaelrollozup/emi-learning-task-6.3).

Ao término do desenvolvimento, clique no link para acessar o formulário de resposta da atividade de código.
