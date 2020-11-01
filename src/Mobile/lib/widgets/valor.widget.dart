import 'package:flutter/material.dart';

class Valor extends StatelessWidget {
  final String valor;

  Valor({@required this.valor});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(valor),
      content: SingleChildScrollView(
        child: Text(textosValores[valor]),
      ),
    );
  }

  static const textosValores = {
    //Atitude de Dono
    'Atitude de Dono': 'A “Atitude de dono” significa colocar interesses da empresa à frente de interesses individuais. ' +
        'Ou seja, o todo é maior do que a simples soma das partes. ' +
        'A ideia é que possamos gerar uma constante justiça interna na Pris, ' +
        'na qual os colaboradores tenham assegurados o respeito aos seus direitos, assim como toda a empresa.\n\n' +
        'Você deve assumir responsabilidades dentro do seu âmbito de trabalho e arcar com as consequências, ' +
        'sem adotar a postura do “isso não é problema meu”.\n\n' +
        'Ser “dono” significa propor sugestões de forma proativa, mesmo para questões que não foi solicitado, ' +
        'se preocupar de forma legítima com a satisfação do cliente, afinal ele quem nos permite existir, ' +
        'respeitar e ajudar os colegas de trabalho, ajudando a criar um ambiente positivo e de crescimento, ' +
        'e refletir constantemente sobre a melhora da Pris, seja em sua área de trabalho, seja de forma geral.\n\n' +
        'Ser “dono” também significa zelar pelas condições de trabalho de todos e todas, ' +
        'respeitando as diferenças entre cada indivíduo da Pris, sempre buscando a inclusão das pessoas.\n\n' +
        'Mas, atenção: ter “atitude de dono” não significa que que você deva ou possa agir sozinho. ' +
        'Afinal, somos vários “donos” aqui na Pris. Dialogue sempre!',

    //Autogestão
    'Autogestão': 'Prezamos muito o valor da “Autogestão” em nossa empresa. ' +
        'Tanto que não há chefes, diretores, gerentes, etc, em nossa estrutura organizacional. ' +
        'Todos somos coletivamente responsáveis pelo bom andamento da empresa e, portanto, também por nossas ações e dinâmica de trabalho.\n\n' +
        'Você deve sempre estar atento para cumprir de forma proativa, autônoma e competente suas tarefas, respeitando as decisões, ' +
        'regras e acordos firmados coletivamente. Afinal, toda a empresa depende de sua melhor performance para alcançar os melhores resultados.\n\n' +
        'Não termos chefes não significa que não tenhamos lideranças. ' +
        'As lideranças se formam de maneira orgânica, e na Pris sempre são criadas pela qualidade do trabalho e pelo respeito aos valores que uma pessoa apresenta. ' +
        'Ou seja, quanto mais dedicado e competente em sua “autogestão” você for, mais respeitado e mais importante para a empresa você será.\n\n' +
        'Outra coisa importante é que não ter um superior não significa você poder fazer o que bem entender. ' +
        'Temos regras de decisão e responsabilidades bem definidas na estrutura de círculos. ' +
        'Devemos seguí-las ou, se não concordamos, podemos sempre propor mudanças. Mas, enquanto não há a mudança, devemos nos autogerir respeitando as regras.\n\n' +
        'Algumas dicas de como se “autogerir”: \n\n' +
        '- caso não concorde com decisões tomadas, elaborar proposta de mudança do que foi combinado, ' +
        'justificando com argumentos objetivos, tendo em vista o propósito e metas da Pris\n\n' +
        '- gerencie suas entregas de forma clara e organizada, compartilhando informações com todos os impactados' +
        '- sempre balanceie seu desenvolvimento profissional, capacitação e desenvolvimento pessoal',

    //Transparência
    'Transparência': 'Ser “transparente” é algo muito importante para a Pris. ' +
        'Afinal, em uma estrutura organizacional como a nossa, todos devemos ter acesso ao máximo de informações possível, ' +
        'de forma a nos capacitarmos para decisões e ações.\n\n' +
        'Nossos processo internos, nossas instalações físicas-espaciais, os sistemas e softwares que utilizamos na empresa, ' +
        'tudo é pensado e desenvolvido para facilitar essa transparência e gerar interdependência e conexão.\n\n' +
        'Portanto, busque sempre:\n' +
        '- Comunicar aos colegas informações relevantes\n' +
        '- Dar feedback constante (e imediato, quando pertinente) em situações de desconforto, \n' +
        'utilizando as melhores práticas da Comunicação Não Violenta e Radical Candor\n' +
        '- Aceitar críticas de forma natural, não misturando questões profissionais com pessoais\n' +
        '- Tratar os demais de forma inclusiva e respeitosa\n\n' +
        'Além, alimente corretamente e constantemente suas tarefas e afazeres nos sistemas. ' +
        'Só assim podemos saber se tudo está em dia, se as coisas estão andando no ritmo ideal, ' +
        'se estamos sobrecarregados de atividades… A “transparência” não serve para punir, mas para que possamos melhorar sempre!',

    //Horizontalidade
    'Horizontalidade': 'Na Pris somos todos diferentes, porém somos todos iguais. Não entendeu? A gente explica melhor.\n\n' +
        'Prezamos e respeitamos a diversidade social, pessoal, intelectual, de gênero, político-partidária, religiosa, futebolística, entre tantas outras. ' +
        'Gostamos da diferença, pois é através dela que podemos aprender e melhorar como seres humanos e profissionais.\n\n' +
        'Ao mesmo tempo, ninguém na Pris será tratado de forma distinta: todos temos responsabilidades, direitos e deveres, ' +
        'e somos todos “donos” da empresa (lembra-se do valor inicial?). ' +
        'Um exemplo interessante é nosso processo decisório: ele não funciona por votação, com a maioria vencendo sempre;' +
        ' e também não funciona na base do consenso, com a exigência que todos concordem que a decisão é a melhor e votem por unanimidade.\n\n' +
        'Ou seja, trate as pessoas sem diferenciá-las de acordo com o nível de responsabilidade, experiência profissional e de vida, ' +
        'e identidades, como gênero, etnia, sexualidade, idade, etc. ' +
        'Ouça e considere as opiniões de todos os colaboradores e colaboradoras envolvidos em alguma questão ou projeto, ' +
        'independente de sua posição na empresa, e sempre dialogue com os demais ouvindo seus argumentos e justificando seus pontos de vista.\n\n' +
        'O respeito a essa “horizontalidade” é condição fundamental para o melhor trabalho e a ótima convivência em nosso ambiente de trabalho.',

    //Vontade de Aprender e Ensinar
    'Vontade de Aprender e Ensinar': 'Na Pris nós respeitamos o saber. Por quê? ' +
        'Porque somos uma empresa de nicho, que atua em setores nos quais o profundo e amplo conhecimento significa mais sucesso e melhores resultados. ' +
        'Somos especialistas, e queremos que as pessoas saibam disso e reconheçam nossa expertise.\n\n' +
        'Portanto, estude! Inclusive, separamos um tempo especial para isso no seu horário de trabalho, o chamado “10%”.\n\n' +
        'Agora, não basta estudar: você precisa aplicar seus conhecimentos na empresa, e precisa ensinar o que aprendeu aos colegas! ' +
        'Afinal, o conhecimento é algo em constante evolução, e o diálogo sobre ele é fundamental. ' +
        'Como disse Paulo Freire, “ninguém se educa a si mesmo, os homens [e mulheres] se educam entre si“.\n\n' +
        'Portanto, esteja sempre disponível e proativo para estudar novos assuntos relevantes para os interesses da empresa, ' +
        'para orientar colegas em temas de seu domínio, e esteja aberto para discussões e questionamentos técnicos de forma natural.\n\n' +
        'Outro ponto importante é estar sempre aberto a aprender sobre as pessoas que formam nossa equipe Pris, ' +
        'prestando atenção às suas histórias e experiências, aprendendo a viver com a diferença de forma empática e inclusiva.',

    //Altruísmo
    'Altruísmo': 'Ser “altruísta” é algo profundo. Não basta ser educado e gentil na superfície, da “boca-pra-fora”. ' +
        'É fundamental que genuinamente você se preocupe com os demais e busque contribuir para o sucesso e felicidade de colegas, ' +
        'clientes, parceiros e fornecedores.\n\n' +
        'Isso significa ajudar as pessoas quando elas estiverem enfrentando problemas ou dificuldades, ' +
        'e também contar com elas quando for você a viver alguma situação desconfortável. ' +
        'Significa se dedicar às mentorias, como mentor ou mentorado, gerando evolução pessoal e profissional. ' +
        'Estar à disposição dos colegas sempre que for possível (por exemplo, quando sua carga de trabalho estiver menor).\n\n' +
        'Além dos vários exemplos de “altruísmo” citados no texto, uma das ações mais importantes da Pris é a prática da Meditação Transcendental ' +
        '(inclusive, incentivada oficialmente pela empresa). A MT colabora com a coerência cerebral de cada praticante, ' +
        'permite conexões profundas entre os seres humanos, e equilibra mente e corpo.\n\n' +
        'Portanto, pratique sempre a empatia, o cuidado com o outro, que naturalmente esse valor do “altruísmo” será gerado!'
  };
}
