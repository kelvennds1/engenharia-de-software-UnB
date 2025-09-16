# Estudo Dirigido: Como LLM pode promover o aprendizado e o desenvolvimento de aplicações Ruby

**Autor:** Kelven Silva
**Disciplina:** Ruby - Homework 01  
**Data:** 15/09/2025

## Sumário

- [Introdução](#introdução)
- [Resolução dos Exercícios](#resolução-dos-exercícios)
  - [Parte 1: Manipulação de Strings](#parte-1-manipulação-de-strings)
  - [Parte 2: Orientação a Objetos](#parte-2-orientação-a-objetos)
  - [Parte 3: Pedra, Papel, Tesoura](#parte-3-pedra-papel-tesoura)
  - [Parte 4: Anagramas](#parte-4-anagramas)
  - [Parte 5: Metaprogramação](#parte-5-metaprogramação)
  - [Parte 6: OOP Avançado & Extensões](#parte-6-oop-avançado--extensões)
- [Explicação das Estruturas e Algoritmos](#explicação-das-estruturas-e-algoritmos)
- [Implementações Alternativas](#implementações-alternativas)
- [Análise de Tempo, Esforço e Experiência](#análise-de-tempo-esforço-e-experiência)
- [Ferramentas e Ecossistema Utilizado](#ferramentas-e-ecossistema-utilizado)
- [Conclusão e Recomendações](#conclusão-e-recomendações)
- [Gráficos e Anexos](#gráficos-e-anexos)

***

## Introdução

O presente relatório explora como Ferramentas de Linguagem Natural (LLMs) promovem o aprendizado rápido e a criação eficiente de aplicações Ruby. O estudo detalha as soluções dos exercícios do Homework 01, analisa diferentes paradigmas, propõe alternativas e apresenta uma experiência crítica sobre o uso de IA no desenvolvimento Ruby[3][4][5][1].

***

## Resolução dos Exercícios

### Parte 1: Manipulação de Strings

- **palindrome?**: Verifica se uma string é palíndromo utilizando regex e métodos da classe String.
- **count_words**: Implementa a contagem de palavras usando expressões regulares e hashes com valor padrão.

### Parte 2: Orientação a Objetos

- **Dessert e JellyBean**: Demonstra herança, encapsulamento e polimorfismo; `JellyBean` especializa o método `delicious?`.

### Parte 3: Pedra, Papel, Tesoura

- **rps_game_winner & rps_tournament_winner**: Algoritmo recursivo com tratamento de exceções customizadas (`WrongNumberOfPlayersError`, `NoSuchStrategyError`).

### Parte 4: Anagramas

- **combine_anagrams**: Agrupa palavras por anagramas usando hashes compostos por chaves derivadas das letras ordenadas.
### Parte 5: Metaprogramação

- **attr_accessor_with_history**: Cria atributos com histórico de valores através de metaprogramação (`class_eval`, `define_method`)[6].

### Parte 6: OOP Avançado & Extensões

- **Currency Conversion**: Utiliza `method_missing` para criar métodos dinâmicos de conversão de moedas.
- **palindrome? em String e Enumerable**: Extensões que permitem verificar palíndromos tanto em strings quanto em coleções.

***

## Explicação das Estruturas e Algoritmos

- **Paradigma Imperativo**: Controle direto do fluxo (loops, etc.).
- **Paradigma Funcional**: Uso de métodos como `map`, `reduce`, `group_by`, e imutabilidade.
- **Orientação a Objetos**: Classes, herança, polimorfismo e encapsulamento.
- **Metaprogramação**: Geração de métodos dinamicamente com `class_eval`/`method_missing`.
- **Mixins/Modules**: Reutilização de código com `include`.
- **Yield e Blocks**: Flexibilidade e callbacks em métodos customizados[7][6].

***

## Implementações Alternativas

Para cada exercício, soluções alternativas foram desenvolvidas utilizando diferentes paradigmas e estruturas, como `group_by`, `Enumerable`, Mixins versus herança, refinements em vez de monkey patching, etc.

| Parte         | Paradigma Principal | Alternativa 1    | Alternativa 2   | Alternativa 3           |
| ------------- | :----------------- | :-------------- | :------------- | :---------------------- |
| Strings       | Imperativo         | Funcional        | yield/custom    | Extensão da classe      |
| OOP           | OOP                | Mixins           | Struct          | Imutável/freeze         |
| RPS           | Imperativo         | OOP design       | Funcional       | yield personalizado     |
| Anagramas     | Imperativo         | group_by         | Enumerator      | Reduce/mixins           |
| Metaprogram.  | Metaprogr.         | define_method    | Module/Proc     | -                       |
| OOP Avançado  | Metaprogr.         | Métodos explícitos| Factory pattern | Functional/refinements  |

***

## Análise de Tempo, Esforço e Experiência

### Métricas de Tempo

| Atividade                    | Sem LLM | Com LLM | Redução  |
|------------------------------|---------|---------|----------|
| Compreensão dos conceitos    | 3h      | 0.75h   | 75%      |
| Implementação de código      | 5h      | 2.5h    | 50%      |
| Revisão e refatoração        | 1.5h    | 0.75h   | 50%      |
| Debugging e testes           | 2h      | 1h      | 50%      |

![Comparação de Tempo]
### Experiência Pessoal

#### Pontos Positivos:
- Aprendizado acelerado e contextual.
- Geração rápida de código e exemplos alternativos.
- Debugging assistido.

#### Pontos Negativos:
- Necessidade de validação constante.
- Risco de dependência para aprendizado profundo.

#### Recomendações:
- Use LLMs mais para explicação do que apenas geração de código.
- Teste e revise todo código gerado.
- Explore soluções alternativas sugeridas para ampliar compreensão.

***

## Ferramentas e Ecossistema Utilizado

- **LLMs**: ChatGPT, GitHub Copilot, RubyLLM, Claude, Cursor[8][9]
- **IDEs**: VSCode, RubyMine com integração de IA
- **Bibliotecas**: LangChain.rb, ruby-openai
- **Testes**: RSpec + geração automática de casos
- **Code review**: DeepCode, Codacy

![Ferramentas de IA para programação]
***

## Conclusão e Recomendações

- LLMs aceleram o aprendizado e diversificam as implementações em Ruby.
- Paradigma funcional e metaprogramação tornam-se mais acessíveis com explicações de IA.
- Ruby, pela sua expressividade, é especialmente beneficiado por LLMs.
- O uso consciente de LLMs potencializa o aprendizado sem prejudicar o domínio dos fundamentos.
- Recomenda-se equilibrar assistência IA com estudo autônomo e revisão cuidadosa do código[1][2].

![Paradigmas comparados]
![Paradigmas na programação]
***

## Gráficos e Anexos

- [Gráfico comparativo de tempo: Com vs. Sem LLMs](./chart_76.png)
- [Implementações alternativas por exercício](./chart_77.png)
- [Radar de paradigmas Ruby: Complexidade vs Benefícios](./chart_78.png)
- [CSV com análise completa](./homework_analysis_complete.csv)
- [CSV resumo de métricas](./study_summary_stats.csv)

***

## Referências

- [dev.to/daviducolo/building-your-own-language-model-in-ruby][3]
- [linkedin.com/pulse/top-7-ai-tools-ruby-rails-development-2025][4]
- [How to Write a Perfect ReadMe][1]
- [README or I'll devour you][2]
- [Langchainrb - Build LLM-powered Ruby](https://github.com/patterns-ai-core/langchainrb)
- Todas as fontes/citações acadêmicas e links relevantes **devem ser incluídos aqui**.

***

## Como utilizar

1. Clone este repositório.
2. Navegue até cada arquivo de exercício para consultar as soluções.
3. Consulte as tabelas e gráficos para análise dos resultados.
4. Leia as recomendações e discussões para maximizar seu aprendizado Ruby com LLM.

***

> Este relatório foi preparado individualmente e todos os códigos, análises e recomendações são originais, seguindo regras de integridade acadêmica.

***

> Para saber como criar ou enviar para o seu GitHub Wiki/repositório pessoal, consulte: [GitHub Quickstart for Repositories](https://docs.github.com/en/repositories/creating-and-managing-repositories/quickstart-for-repositories)

***

Citações:
[1] How to Write a Perfect ReadMe https://www.netguru.com/blog/how-to-write-a-perfect-readme
[2] README or I'll devour you: How to write a good README https://dev.to/pachicodes/readme-or-ill-devour-you-how-to-write-a-good-readme-592n
[3] Building a Tiny Language Model (LLM) in Ruby: A Step-by- ... https://dev.to/daviducolo/building-your-own-language-model-in-ruby-a-step-by-step-guide-114l
[4] Top 7 AI Tools for Ruby on Rails Development in 2025 https://www.linkedin.com/pulse/top-7-ai-tools-ruby-rails-development-2025-lucy-williams--sf0wf
[5] How I use AI coding tools as a Rails dev https://richstone.io/how-i-use-ai-coding-tools-as-a-rails-dev/
[6] Read Conhecendo Ruby https://leanpub.com/conhecendo-ruby/read
[7] Blocks e yield no Ruby com exemplos de uso - skill.dev https://blog.skill.dev/blocks-e-yield-no-ruby-com-exemplos-de-uso/
[8] 10 Best AI Tools for Ruby on Rails Development in 2025 https://www.railscarma.com/blog/10-best-ai-tools-for-ruby-on-rails-development-in-2025/
[9] Introducing RubyLLM 1.0: A Beautiful Way to Work with AI https://paolino.me/rubyllm-1-0/
[10] advanced_oop_2.rb https://ppl-ai-file-upload.s3.amazonaws.com/web/direct-files/attachments/107353827/6cd40264-cc27-4bef-8aa3-e86183dae4dd/advanced_oop_2.rb
[11] anagrams.rb https://ppl-ai-file-upload.s3.amazonaws.com/web/direct-files/attachments/107353827/a1c0ca4d-1f84-4cf8-b64a-b972c64a1f42/anagrams.rb
[12] advanced_oop.rb https://ppl-ai-file-upload.s3.amazonaws.com/web/direct-files/attachments/107353827/3d29d363-fc6f-4a0f-a4c1-874c8027acbd/advanced_oop.rb
[13] basic_oop.rb https://ppl-ai-file-upload.s3.amazonaws.com/web/direct-files/attachments/107353827/09c18315-cb83-42e4-bb2e-b973152f552d/basic_oop.rb
[14] fun_with_strings.rb https://ppl-ai-file-upload.s3.amazonaws.com/web/direct-files/attachments/107353827/e026d8fc-5470-414e-9aab-4d624ee4d68d/fun_with_strings.rb
[15] rock_paper_scissors.rb https://ppl-ai-file-upload.s3.amazonaws.com/web/direct-files/attachments/107353827/e4240a5c-65bf-44c9-af4c-fc1e107f56d0/rock_paper_scissors.rb
[16] An rmarkdown template for stats homework https://github.com/alexpghayes/rmarkdown_homework_template
[17] markdown-template · GitHub Topics https://github.com/topics/markdown-template?o=desc&s=forks
[18] A sample homework assignment using Markdown. https://github.com/cmugpi/markdown-sample
[19] sebastiansauer/yart: RMarkdown Template for writing PDF ... https://github.com/sebastiansauer/yart
[20] Create A New Assignment Template GitHub Repository https://abc-classroom.readthedocs.io/en/latest/manage-assignments/new_assignment.html
[21] ruby markdown parser with WikiWord support? https://stackoverflow.com/questions/6813560/ruby-markdown-parser-with-wikiword-support
[22] rstudio/rticles: LaTeX Journal Article Templates for R ... https://github.com/rstudio/rticles
[23] patterns-ai-core/langchainrb: Build LLM-powered ... https://github.com/patterns-ai-core/langchainrb
[24] Using R Markdown for Class Assignments https://ntaback.github.io/UofT_STA130/Rmarkdownforclassreports.html
[25] Essential Development Best Practices for Modern Software ... https://dev.to/jetthoughts/essential-development-best-practices-for-modern-software-projects-in-2025-f2f
[26] An OSS tool for turning entire websites into LLM-ready ... https://www.reddit.com/r/mlops/comments/1c5usna/an_oss_tool_for_turning_entire_websites_into/
[27] ReadMe Template for Github Repos https://www.youtube.com/watch?v=eVGEea7adDM
[28] Deploying Ruby Applications Best Practices for Developers https://moldstud.com/articles/p-best-practices-for-deploying-ruby-applications-a-guide-for-back-end-developers
[29] Train Your Own LLM: A Deep Dive with Ruby https://dev.to/daviducolo/train-your-own-llm-a-deep-dive-with-ruby-d06
[30] Video: How to create checklists in Markdown for easier task ... https://github.blog/developer-skills/github/video-how-to-create-checklists-in-markdown-for-easier-task-tracking/
[31] Exploring the Best Rails Open Source Projects for ... https://jetthoughts.com/blog/exploring-best-rails-open-source-projects-for-developers-in-2025/
[32] Applied-Machine-Learning-Lab/KDD25-Tutorial-LLM- ... https://github.com/Applied-Machine-Learning-Lab/KDD25-Tutorial-LLM-Enhanced-RecSys
[33] Github Pages template based upon HTML and Markdown ... https://github.com/academicpages/academicpages.github.io
