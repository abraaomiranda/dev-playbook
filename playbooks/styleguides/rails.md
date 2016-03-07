# Guia de estilos para Rails
Esse guia foi levemente adaptado do [guia de rails da thoughtbot](https://github.com/thoughtbot/guides/tree/master/style/rails)

## Boas práticas gerais
Antes de falar dos guias de estilo base, é importante falar sobre manter qualidade de código.
Uma coisa que ajuda muito a manter a qualidade de código é tentar seguir as 4 regras de desenvolvimento da Sandi Metz.
* Classes não devem ser maiores que 100 linhas de código.
* Métodos não deveriam passar de 5 linhas de código.
* Métodos não deveriam aceitar mais que 4 parâmetros. Hash options são parâmetros.
* Controllers deveriam instanciar no máximo um objeto.

Uma regra é mais importante que essas 4, e essa regra é que todas essas regras podem ser quebradas com aprovação de outro desenvolvedor.
Seguir essas regras irá forçar diversas boas práticas e design patterns no desenvolvedor.

## Modelos
* Ordene as associações de ActiveRecord por tipo (belongs_to, depois has_many), etc. Ordene cada uma delas por nome.
* Ordene as validações por nome da coluna. Agrupe validações da mesma coluna para facilitar a leitura.
* Ordene primeiro as constantes, depois as associações, depois as validações, depois os escopos, métodos de classe, e por último métodos públicos.
* Métodos privados, sejam de classe ou de instância, devem vir por último.
* [Exemplo de um modelo organizado](rails/samples/models.rb)
* EVITE CALLBACKS QUE REFERENCIEM OUTROS MODELOS.

## Controllers
* use `private` para definir métodos internos de controllers.
* Ordene primeiro os before_actions, depois as actions, depois os métodos privados.
* Mantenha o seu controller o mais simples o possível. Extraia complexidades.
* [Exemplo de um controller organizado](rails/samples/controllers.rb)

## Helpers
* Evite. Ao máximo. Application Helper para métodos de view a serem utilizados no sistema todo são OK, de resto, considere um decorator ou presenter.

## Rails em geral
* Nomeie initializers com o nome da gem. Precisa de um initializer pra gem `bullet`? config/initializers/bullet.rb
* Limpe o seu spec_helper e rails_helper. Se deseja incluir alguma funcionalidade, separe um módulo em spec/support e o inclua no helper.
* Use `render 'partial'`, ao invés de `render partial: 'partial'`
* Procure extrair módulos em namespaces no sistema.
* Use sempre `link_to` para requisições `get` e `button_to` para requisições `post`
* Evite observers. [Aqui tem uma boa fonte (em inglês)](http://samuelmullen.com/2013/05/the-problem-with-rails-callbacks/) sobre o assunto.
* Quando uma classe sua não referencia nenhuma classe do seu banco diretamente - típicamente as com `NomeClasse < ActiveRecord::Base` - e poderia ser reutilizado em outro contexto, considere usar a pasta `lib`

## Migrações
* Considere sempre utilizar índices ao fazer relacionamentos.
* Informe `default: ''` para colunas strings com `null: false`. A validação irá pegar para você.
* Considere usar cache_columns quando for importante para o seu sistema informar object.relation.count

## Rotas
* Evite rotas com `member` ou `collection`. Provavelmente você consegue extraí-las em algo melhor.
