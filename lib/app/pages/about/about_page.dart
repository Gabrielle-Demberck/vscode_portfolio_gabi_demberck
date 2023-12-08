import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: 500,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Um pouco sobre mim',
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.start,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
              'Olá, sou Gabrielle, uma desenvolvedora apaixonada por tecnologia com uma jornada profissional que abrange 2 anos de experiência em desenvolvimento mobile e 3 anos em full-stack. Minha expertise abrange uma variedade de tecnologias, incluindo Flutter, HTML, CSS, JavaScript e React, permitindo-me criar soluções inovadoras e eficientes.  Como mulher na área da tecnologia, estou comprometida em promover diversidade e inclusão. Minha abordagem centrada no usuário reflete minha paixão por criar experiências excepcionais, e minha habilidade em trabalhar em ambientes colaborativos e ágeis me permite contribuir efetivamente para equipes multidisciplinares.Estou sempre em busca de desafios que me permitam expandir meu conhecimento e aprimorar minhas habilidades. Se você procura uma desenvolvedora comprometida, orientada para resultados e apaixonada por inovação, estou animada para contribuir para o sucesso da sua equipe. Mal posso esperar para discutir como minhas habilidades e experiência podem agregar valor ao seu projeto. Estou aberta a oportunidades e entusiasmada para discutir como posso agregar valor ao seu projeto. Entre em contato aqui. Obrigada por visitar meu site e conhecer um pouco mais sobre mim.'),
        ],
      ),
    );
  }
}
