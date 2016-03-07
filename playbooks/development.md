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

## Refatoração

Acreditamos fortemente no lema de Red-Green-Refactoring, e sabemos que a refatoração é uma parte fundamental do desenvolvimento. Sempre que terminar uma funcionalidade, pense 'Como eu posso melhorar isso?'. Tente ao máximo não deixar para depois, pois é muito fácil um projeto rápidamente virar um elefante branco no qual ninguém tem coragem de mexer, mesmo com cobertura forte! Caso acredite que um módulo inteiro possa ser melhorado, converse com a sua equipe! Talvez seja possível parar um sprint ou parte dele para refazer uma parte inteira do sistema que ficou complexa. Qualidade não é negociável para nós, e todos devem trabalhar para melhorar cada vez mais os nossos softwares :) Seja pro-ativo (leia-se: Encha o saco mesmo!)

## Code Reviews

Revisões de código. Primeiro, é bom salientar que uma revisão de código não é apenas para desenvolvedores novos. Todo desenvolvedor deveria ter seu código revisado por um outro desenvolvedor. Além de ser um momento em que muitos bugs podem ser encontrados antes de entrarem em produção, a troca de experiência desse momento pode ser enorme. Tem dúvidas de porque alguém fez alguma coisa de uma certa forma? Pergunte. Tem dúvidas sobre como desenvolver uma funcionalidade diferentes? Pergunte!
Infelizmente, ainda não possuímos um fluxo de trabalho com git que force a revisão de código, e atualmente dependemos da proatividade de todos da equipe para que as revisões sejam feitas. Experimente com a sua equipe formas de revisões de código e nos ajude a evoluir esse quesito!

## Integração contínua

No momento, estamos estudando começar a trabalhar com integração contínua diretamente no Gitlab, pois nossos esforços anteriores com o Jenkins não atenderam todas as nossas necessidades. De qualquer forma, desejamos que o desenvolvedor rode os testes do sistema antes de realizar um commit, verificando se tudo está passando, e verificando a cobertura de código. Temos ferramentas como simplecov para Rails para auxiliar na verificação da cobertura de código. Em breve, a nossa ferramenta de integração contínua rodará todos os testes do sistema, permitindo merges para homologação e produção apenas de commits que não quebrem nenhum teste! :D

## Qualidade de Código

Sugerimos algumas coisas a serem feitas para garantir a qualidade do código e a performance dos nossos sistemas! Além do code-review e pair programming, temos alguns checkups simples que você pode fazer para analizar o seu código. Acesse os nossos (guias de qualidade de código)[qualityguides/main.md]
