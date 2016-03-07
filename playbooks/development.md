# Playbook de Desenvolvimento.

Esse playbook foi criado com as nossas práticas do dia-a-dia e com ajuda inspiracional do [playbook da thoughtbot(em inglês)](https://playbook.thoughtbot.com/#developing).

Acreditamos fortemente em [Extreme Programming](https://en.wikipedia.org/wiki/Extreme_programming), trabalhando com sprints de 15 dias para entregas de requisitos. Isso nos ajuda a trabalhar melhor, mantendo a qualidade do sistema e deixando nossos desenvolvedores felizes. :) 
Para as nossas práticas, nomes como Kent Beck, Martin Fowler, Bob Martin e Sandi Metz são muito importantes para nós.

## Controle de Versão

Trabalhamos com [Git](http://git-scm.com/) para controle de versão, pois adoramos a facilidade de branching e merging que ele nos dá. Temos o nosso [repositório público no github](https://github.com/sti-uff), onde está atualmente esse guia, e o nosso repositório privado para desenvolvimento, o [Gitlab](https://about.gitlab.com/). Ainda não utilizamos tudo o que o Gitlab nos permite, mas estamos trabalhando nisso! Caso você ainda não tenha acesso ao [nosso repositório de gitlab](https://sistemas.uff.br/sti/git/), informe o seu mentor/gerente.

Trabalhamos com 3 branches principais, a 'master' para desenvolvimento, 'homologacao' para homologarmos o sistema com o cliente e a branch de 'producao'. A princípio você trabalhará na master, podendo criar suas próprias branches conforme a tarefa demandar. Em breve pretendemos começar a trabalhar com pull requests, então possívelmente revisaremos as nossas branches. Os merges para homologação e produção costumam ser feitos pelo líder técnico da equipe, responsável por revisar o seu código. Note que uma revisão de código NÃO É para censurar o desenvolvedor, e sim auxiliá-lo em sua evolução pessoal, tal como melhorar a qualidade do sistema. :)

## Guia de estilo de código

Acreditamos que um guia de estilo de código é fundamental a uma equipe. Um código é usualmente escrito uma vez e lido diversas vezes, portanto quanto mais claro e padronizado for o seu código, melhor será para todos que trabalharem com ele, agora ou futuramente.
Temos guias pequenos de estilos de código para [ruby](styleguides/ruby.md) e [rails](styleguides/rails.md). Planejamos liberar guias para Java e PHP futuramente.

## Pair Programming

Não existe nada melhor que pair programming para um desenvolvedor. Duas mentes pensam melhor que uma, e um código desenvolvido por duas pessoas obviamente é melhor que o desenvolvido por uma só, além de toda a troca de experiência instantânea que ocorre durante o pair programming. Porém, sabemos que nem sempre é possível trabalhar dessa forma. Caso você esteja com dificuldades para desenvolver uma tarefa, ou creia que ela seja extremamente crítica e você precisa de mais um olho sobre o código, solicite um pair programming com alguém da sua equipe, você sentirá os benefícios na hora!

## Test-Driven Development (TDD)

Sabemos das dificuldades de uma pessoa iniciando na linguagem (ou até mesmo experts nela) com TDD, e a sua equipe estará sempre disponível para ajudar.
Por que TDD? Citando o Playbook da Thoughtbot:

Benefícios para a empresa:

    Entregar valor mais rápido
    Todo código que vai a produção provavelmente está funcionando
    Adaptações são rápidas
  
Benefícios de código:

    Testes e código ficam mais legíveis
    Interface pública limpa e bem definida
    Desacoplamento de código.

Benefícios de processo:

    Regressão fácil
    Refatoração sem medo. Você saberá no que a sua mudança impacta.

Acesse o nosso [guia de testes Rails](testing/rails/main.md) para exemplos. Entendemos que nem todos conseguem começar com TDD, e o nosso objetivo é que sistemas novos devem ter 100% de cobertura de testes. Ainda não consegue fazer TDD? Tudo bem! Mas entregar código não testado é inaceitável, peça ajuda ao seu líder técnico para te dar aulas bases de como testar. :)
