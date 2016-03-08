# Testando aplicações Rails.

Recomendamos TDD. Isso realmente [melhora a qualidade do seu código](http://www.extremeprogramming.org/rules/testfirst.html).
Independente de você estar desenvolvendo com TDD ou não, esperamos algo bem próximo de 100% de cobertura de testes.

Para melhor padronizar os nossos sistemas Rails, seguimos as seguintes regras:
* Framework de testes: [rspec-rails](https://github.com/rspec/rspec-rails), com [shoulda-matchers](https://github.com/thoughtbot/shoulda-matchers) e [factory-girl-rails](https://github.com/thoughtbot/factory_girl_rails)
* Testes que acessam aplicações externas (webservices) com [vcr](https://github.com/vcr/vcr)
* Testes de email com [email-spec](https://github.com/email-spec/email-spec)
