# Homework 3 - BDD with Cucumber 🥒

## 📋 Visão Geral

Este homework implementa testes BDD (Behavior-Driven Development) usando Cucumber para a aplicação RottenPotatoes. Os testes cobrem as funcionalidades implementadas no Homework 2.

## 🎯 Objetivos

Criar cenários Cucumber que testem os "happy paths" (caminhos felizes) das seguintes funcionalidades:

1. **Part 1**: Adicionar filmes manualmente ao sistema
2. **Part 2**: Filtrar filmes por rating MPAA (G, PG, PG-13, R)
3. **Part 3**: Ordenar filmes por título e data de lançamento

## 🛠️ Tecnologias Utilizadas

- **Ruby on Rails 8.0.3**
- **Cucumber**: Framework para testes BDD
- **Capybara**: Simulação de interação do usuário
- **Database Cleaner**: Limpeza do banco de dados entre testes
- **RSpec**: Expectations/matchers

## 📁 Estrutura do Projeto

```
features/
├── add_movie.feature              # Cenário para adicionar filmes
├── filter_movie_list.feature      # Cenários para filtrar por rating
├── sort_movie_list.feature        # Cenários para ordenação
├── step_definitions/
│   ├── movie_steps.rb            # Steps específicos de domínio
│   └── web_steps.rb              # Steps gerais de navegação
└── support/
    ├── env.rb                    # Configuração do Cucumber
    └── paths.rb                  # Mapeamento de rotas
```

## 🚀 Como Executar

### Pré-requisitos

```bash
bundle install
```

### Executar todos os testes

```bash
bundle exec cucumber
```

### Executar uma feature específica

```bash
bundle exec cucumber features/add_movie.feature
bundle exec cucumber features/filter_movie_list.feature
bundle exec cucumber features/sort_movie_list.feature
```

### Executar um cenário específico

```bash
bundle exec cucumber features/sort_movie_list.feature:24  # Linha do cenário
```

## ✅ Resultados dos Testes

Todos os **5 cenários** passaram com sucesso:

```
5 scenarios (5 passed)
46 steps (46 passed)
0m0.540s
```

### Cenários Implementados

#### 1. Add a Movie (Part 1)
✅ Teste declarativo para adicionar um filme manualmente

#### 2. Filter by Ratings (Part 2)
✅ Restringir a filmes com ratings "PG" ou "R"
✅ Exibir todos os filmes quando todos os ratings estão selecionados

#### 3. Sort Movies (Part 3)
✅ Ordenar filmes alfabeticamente por título
✅ Ordenar filmes por data de lançamento crescente

## 🔑 Conceitos BDD Aplicados

### Steps Declarativos vs Imperativos

❌ **Imperativo** (BAD):
```gherkin
When I fill in "title" with "Inception"
And I fill in "rating" with "PG-13"
And I click "Save"
```

✅ **Declarativo** (GOOD):
```gherkin
Given the following movies exist:
  | title     | rating | release_date |
  | Inception | PG-13  | 16-Jul-2010  |
```

### Vantagens da Abordagem Declarativa

1. **Mais legível**: Foca no "O QUE" ao invés de "COMO"
2. **Mais manutenível**: Mudanças na UI não quebram os testes
3. **Reutilizável**: Steps podem ser usados em múltiplos cenários
4. **Documentação viva**: Serve como especificação do sistema

## 📊 Estrutura dos Arquivos

### Features (Cenários)

Cada arquivo `.feature` segue a estrutura Gherkin:

```gherkin
Feature: [Descrição da funcionalidade]
  As a [tipo de usuário]
  So that [objetivo]
  I want to [ação]
  
  Background: [Pré-condições comuns]
    Given [contexto inicial]
  
  Scenario: [Nome do cenário]
    When [ação do usuário]
    Then [resultado esperado]
```

### Step Definitions

- **movie_steps.rb**: Steps específicos do domínio de filmes
  - `Given the following movies exist:` - Cria múltiplos filmes via tabela
  - `Then X seed movies should exist` - Verifica quantidade no banco
  - `Then I should see all of the movies` - Verifica todos os filmes visíveis

- **web_steps.rb**: Steps genéricos de navegação web
  - `Given I am on [page]` - Navegação
  - `When I follow [link]` - Clica em link
  - `When I check/uncheck [ratings]` - Manipula checkboxes
  - `Then I should see "[text]" before "[other text]"` - Verifica ordem

## 🔧 Configurações Importantes

### Database Cleaner

```ruby
DatabaseCleaner.strategy = :transaction

Before do
  DatabaseCleaner.start
end

After do
  DatabaseCleaner.clean
end
```

Garante que cada cenário inicia com banco de dados limpo.

### Paths Helper

```ruby
def path_to(page_name)
  case page_name
  when /^the RottenPotatoes home\s?page$/
    movies_path
  when /^the Create New Movie page$/
    new_movie_path
  # ...
  end
end
```

Mapeia nomes legíveis para rotas do Rails.

## 📝 Dados de Teste

Os cenários utilizam os seguintes filmes de exemplo:

| Título                  | Rating | Data de Lançamento |
|-------------------------|--------|-------------------|
| Aladdin                 | G      | 25-Nov-1992       |
| The Terminator          | R      | 26-Oct-1984       |
| When Harry Met Sally    | R      | 21-Jul-1989       |
| The Help                | PG-13  | 10-Aug-2011       |
| Chocolat                | PG-13  | 5-Jan-2001        |
| Amelie                  | R      | 25-Apr-2001       |
| 2001: A Space Odyssey   | G      | 6-Apr-1968        |
| The Incredibles         | PG     | 5-Nov-2004        |
| Raiders of the Lost Ark | PG     | 12-Jun-1981       |
| Chicken Run             | G      | 21-Jun-2000       |

## 🎓 Aprendizados

### 1. BDD vs TDD

- **TDD**: Testa implementação (foco técnico)
- **BDD**: Testa comportamento (foco no negócio)

### 2. Linguagem Ubíqua

Os testes BDD usam linguagem que stakeholders entendem:
- "As a movie fan" ← Papel do usuário
- "I want to add movies" ← Intenção
- "So that I can share" ← Valor de negócio

### 3. Living Documentation

Os arquivos `.feature` servem como:
- Especificação executável
- Documentação sempre atualizada
- Contrato entre dev e negócio

## 🐛 Troubleshooting

### Erro: "undefined method 'have_content'"

Certifique-se de que RSpec está no Gemfile:
```ruby
gem 'rspec-rails'
```

### Erro: "DatabaseCleaner strategy not set"

Verifique `features/support/env.rb`:
```ruby
require 'database_cleaner'
require 'database_cleaner/active_record'
DatabaseCleaner.strategy = :transaction
```

### Testes falhando inconsistentemente

Execute com estratégia `:truncation`:
```ruby
DatabaseCleaner.strategy = :truncation
```

## 📚 Referências

- [Cucumber Documentation](https://cucumber.io/docs/cucumber/)
- [Capybara Documentation](https://rubydoc.info/github/teamcapybara/capybara)
- [BDD Best Practices](https://cucumber.io/docs/bdd/)
- [Gherkin Syntax](https://cucumber.io/docs/gherkin/reference/)

## 👨‍💻 Autor

Desenvolvido como parte do curso de Engenharia de Software - UnB

---

**Nota**: Este projeto demonstra a aplicação prática de BDD com Cucumber em uma aplicação Rails, seguindo as melhores práticas de testes declarativos e reutilizáveis.
