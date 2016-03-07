# Guia de estilos para Ruby
Esse guia foi levemente adaptado do [guia de rails da thoughtbot](https://github.com/thoughtbot/guides/tree/master/style/rails)

## Boas práticas gerais
TODO: Preencher

## Modelos
TODO: Preencher

## Controllers
TODO: Preencher

## Decorators/Concerns/Padrões em geral
TODO: Preencher

## Rails
* use `private` para definir métodos internos de controllers.
* nomeie initializers com o nome da gem. Precisa de um initializer pra gem `bullet`? config/initializers/bullet.rb
* Ordene as associações de ActiveRecord por tipo (belongs_to, depois has_many), etc. Ordene cada uma delas por nome.
* Ordene as validações por nome da coluna. Agrupe validações da mesma coluna para facilitar a leitura.
* Ordene primeiro as constantes, depois as associações, depois as validações, depois os escopos, métodos de classe, e por último métodos públicos.
* Métodos privados, sejam de classe ou de instância, devem vir por último.
* [Exemplo de um modelo organizado](rails/samples/models.rb)
* Use `render 'partial'`, ao invés de `render partial: 'partial'`
* Procure extrair módulos em namespaces no sistema.
* Use sempre `link_to` para requisições `get` e `button_to` para requisições `post`
* Mantenha o seu controller o mais simples o possível. Extraia complexidades.

## Migrações
TODO: Preencher

## Rotas
* evite rotas com `member` ou `collection`. Provavelmente você consegue extraí-las em algo melhor.
TODO: Preencher mais
