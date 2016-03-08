# Testando aplicações Rails.

Recomendamos TDD. Isso realmente [melhora a qualidade do seu código](http://www.extremeprogramming.org/rules/testfirst.html).
Independente de você estar desenvolvendo com TDD ou não, esperamos algo bem próximo de 100% de cobertura de testes.

Aprender a testar bem é um processo longo, que anda lado a lado com boas práticas. Peça ajuda ao seu líder técnico para explicar o que você deveria estar testando (TUDO! Ou bem perto disso), e como você deveria estar fazendo isso.

Para melhor padronizar os nossos sistemas Rails, seguimos as seguintes regras:
* Framework de testes: [rspec-rails](https://github.com/rspec/rspec-rails), com [shoulda-matchers](https://github.com/thoughtbot/shoulda-matchers) e [factory-girl-rails](https://github.com/thoughtbot/factory_girl_rails)
* Testes que acessam aplicações externas (webservices) com [vcr](https://github.com/vcr/vcr)
* Testes de email com [email-spec](https://github.com/email-spec/email-spec)

Para verificar a cobertura de nossos testes, usamos a gem [simplecov](https://github.com/colszowka/simplecov)

Para facilitar o setup de todas essas ferramentas, o nosso Projeto Padrão Rails ([link no gitlab](https://sistemas.uff.br/sti/git/cds/projeto_padrao_rails)) já vem com tudo isso configurado.

Um bom guia para testes em Rails pode ser lido no próprio [Rails Guides](http://guides.rubyonrails.org/testing.html)

Todas as aplicações devem ter:
* Testes Unitários, tipicamente em `specs/models/` onde os modelos e outras classes são testadas unitariamente. Temos um [exemplo](/samples/model.rb) pronto. 
* Testes de Controller, em `specs/controllers/` onde realizamos testes funcionais de nossos controllers. Também temos um [exemplo](/samples/controller.rb) disso.
* Feature tests, em `specs/features` onde realizamos testes de funcionalidades do sistema. Sim, [tá mastigadinho também](http://guides.rubyonrails.org/testing.html).

E testes de rota? Vale a pena ler uma [postagem no blog da He:Labs sobre](http://helabs.com/blog/2014/03/18/routes-to-spec-or-not-to-spec-in-a-rails-app/).
Nossa recomendação é: se você está apenas usando `resources :recurso`, não cobraremos isso. Se você está adicionando várias opções e etc, por que não? 
