import 'package:aps8/app/modules/shared/models/data_model.dart';
import 'package:dio/dio.dart';

import '../models/data_model.dart';

class AuthRepository {
  final Dio dio;

  AuthRepository({required this.dio}) {
    dio.options.receiveTimeout = 36000;
    dio.options.baseUrl = 'http://localhost:5001/';
  }

//----------------------------------------------------------------------------
  Future<List<DataModel>> getData() async {
    try {
      Response response = await dio.get('api/Iso').catchError((e) {});

      List<DataModel> dataModels = [];

      (response.data as List).forEach((element) {
        dataModels.add(DataModel.fromJson(element));
      });

      return dataModels;
      // return data.map((e) => DataModel.fromJson(e)).toList();
    } catch (e) {
      print(e);
      return [];
    }
  }
//----------------------------------------------------------------------------
}

final List<Map<String, dynamic>> data = [
  {
    "title": "ISO 14.000",
    "description":
        "ISO 14000 é constituído por uma série de normas que determinam diretrizes para garantir que determinada empresa (pública ou privada) pratique a gestão ambiental. Estas normas são conhecidas pelo Sistema de Gestão Ambiental (SGA), que é definido pela ISO (International Organization for Standardization).\r\nO principal objetivo da ISO 14000 e de suas normas é garantir o equilíbrio e proteção ambiental, prevenindo a poluição e os potenciais problemas que esta poderia trazer para a sociedade e economia.\r\nPara que uma empresa garanta o seu Certificado ISO 14000, ela deve se comprometer com as leis previstas na legislação ambiental de seu país. Este certificado simboliza que determinada empresa tem preocupação com a natureza e possui responsabilidades com o meio ambiente. Atualmente, este tipo de perfil empresarial colabora para a valorização dos produtos ou serviços da companhia e da marca.\r\nAlém de se comprometer em cumprir a legislação ambiental do país que pertence, a empresa deverá treinar seus funcionários para seguirem todas essas normas, identificando e procurando soluções para todos os prováveis problemas que a empresa possa estar causando para o meio ambiente, diminuindo assim o seu impacto ambiental.",
    "urlVideo":
        "https://www.youtube.com/watch?v=mq-DND_Mw-U&ab_channel=IFROCampusPortoVelhoZonaNorte"
  },
  {
    "title": "ISO 14.001",
    "description":
        "A ABNT NBR ISO 14001 especifica os requisitos de um Sistema de Gestão Ambiental e permite a uma organização desenvolver uma estrutura para a proteção do meio ambiente e rápida resposta às mudanças das condições ambientais. A norma leva em conta aspectos ambientais influenciados pela organização e outros passíveis de serem controlados por ela.\r\nA implementação dessa norma deve ser buscada por empresas que desejam estabelecer ou aprimorar um Sistema de Gestão Ambiental, estar seguras sobre políticas ambientais praticadas ou demonstrar estar de acordo com práticas sustentáveis a clientes e a organizações externas.\r\nPensando pela ótica da sustentabilidade, não faz sentido uma empresa ter uma atuação apenas ecologicamente correta e não atuar com a gestão ambiental de forma estratégica, pensando no desenvolvimento sustentável da empresa.\r\nE foi nesse foco que a mudança da versão da ISO 14001 foi planejada. A nova versão de 2015 incorpora, além de questões estratégicas, a preocupação com a cadeia de valor, ciclo de vida, entre outras mudanças.",
    "urlVideo":
        "https://www.youtube.com/watch?v=Ud5BGdO3olY&ab_channel=CronosQuality"
  },
  {
    "title": "ISO 14.004",
    "description":
        "A ISO 14004 representa uma norma da série ISO 14000, caso da ISO 14001 permitindo às empresas que já possuem (ou não) um Sistema de gestão ambiental a obterem melhorias quanto à questão ambiental.\r\nEssa norma de qualidade não emite de forma direta uma certificação, ou seja, uma empresa não pode obter exclusivamente esta certificação. Essa forma funciona basicamente como um guia que detalha a metodologia, mostrando as diretrizes gerais sobre princípios, sistemas e técnicas de apoio.\r\nAssim como ocorre com as ISO 14001 e ISO 9001, as diretrizes estabelecidas na norma ISO 14004 podem ser aplicadas a qualquer tipo de empresa/organização, independente do seu tamanho, tipo, localização, tempo de mercado ou especificidade. A versão mais recente da norma saiu em fevereiro de 2018.\r\nA norma ISO 14004 visa orientar o estabelecimento quanto à implementação, manutenção e melhoria de SGA, além de toda sua coordenação com outros sistemas de gestão ambiental, através da indicação de um processo que possibilite à empresa identificar os aspectos ambientais significativos, recomendando também a verificação de melhores instrumentos que visam minimizar os impactos causados pelos seus aspectos ambientais.",
    "urlVideo":
        "https://www.youtube.com/watch?v=WtB5GtpxPS4&ab_channel=EMSmastery"
  },
  {
    "title": "ISO 14.010",
    "description":
        "ISO 14010: são normas sobre as Auditorias Ambientais. São elas que asseguram credibilidade a todo processo de certificação ambiental, visando as auditorias de terceiras partes, nas quais se verificam os compromissos estabelecidos pela empresa em seu Sistema de Gestão Ambiental.\r\nO objetivo geral da ISO 14000 é fornecer assistência para as organizações na implantação ou no aprimoramento de um Sistema de Gestão Ambiental (SGA). Ela é consistente com a meta de “Desenvolvimento Sustentável” e é compatível com diferentes estruturas culturais, sociais e organizacionais.\r\nPara obter a certificação ISO 14001 é necessário entrar em contato com um dos Organismos de Certificação de Sistemas de Gestão Ambiental acreditado pelo INMETRO.\r\nPara obter a certificação ambiental a empresa precisa adequar seus processos para alcançar a sustentabilidade. Entre essas práticas estão a geração, manejo, transporte, tratamento e disposição final dos resíduos. Além do reaproveitamento e diminuição da quantidade de resíduos.",
    "urlVideo":
        "https://www.youtube.com/watch?v=IQnXz5n2Lwg&t=3s&ab_channel=GabrielBetancourt"
  },
  {
    "title": "ISO 14.031",
    "description":
        "A NBR ISO 14031, proposta pela Associação Brasileira de Normas Técnicas – ABNT, surge em 2004 como uma ferramenta de gestão ambiental com o objetivo de medir e analisar o desempenho ambiental de uma empresa. Os resultados obtidos são comparados às metas definidas no estabelecimento do sistema de gestão ambiental e, dessa forma, é possível avaliar as melhorias alcançadas.\r\nPara mensurar isso, indicadores de desempenho ambiental são selecionados pela empresa. Eles devem deixar mais tangível uma tendência ou fenômeno que não seja imediatamente detectável. Além disso, devem informar o progresso em relação ao alcance de uma meta.\r\nOutras características inerentes aos indicadores são: serem específicos a uma determinada área; serem relevantes; cientificamente válidos; de fácil comprovação; e terem custos de medição compatíveis aos objetivos da avaliação.\r\nEmpresas que desejam ter prosperidade no mercado e alcançar bons resultados perante os consumidores, investidores e concorrência devem, cada vez mais, buscar aperfeiçoar seu desempenho ambiental. Isso pode ser alcançado mediante o controle sobre atividades, produtos e serviços que tem potencial de gerar impactos ambientais.",
    "urlVideo":
        "https://www.youtube.com/watch?v=XoGugp2bGoQ&ab_channel=BSIGroup"
  },
  {
    "title": "ISO 14.020",
    "description":
        "Estabelecida pelo ISO 14020, a rotulagem ambiental tem como principal objetivo trazer informações relevantes para os consumidores, disponibilizando-as nos rótulos dos produtos. A ideia é garantir um consumo consciente e que esteja em harmonia com o meio ambiente e com a preservação ambiental.\r\nUm produto ou serviço para comunicar informação acerca dos seus aspectos ambientais. A Rotulagem Ambiental, também conhecida como Selo Verde, já é praticada em vários países, como Alemanha, Suécia, Japão, Canadá e Holanda, mas com formas de abordagem e objetivos diferentes.\r\nO mecanismo de rotulagem ambiental baseia-se em informações disponibilizadas nos rótulos de embalagens para que os consumidores possam optar por adquirir produtos de menor impacto ambiental em relação aos produtos concorrentes disponíveis no mercado.\r\nPrograma de rotulagem ambiental incentiva produtos menos impactantes ao meio ambiente. ... A Declaração Ambiental de Produto é um documento que resume o seu perfil ambiental, fornecendo informações sobre seus aspectos ambientais de forma padronizada e objetiva.",
    "urlVideo":
        "https://www.youtube.com/watch?v=4mnKIXWT32Y&ab_channel=Jh%C3%A9ssicaViana"
  },
  {
    "title": "ISO 14.040",
    "description":
        "A Avaliação do Ciclo de Vida (ACV) é uma técnica desenvolvida para mensuração dos possíveis impactos ambientais causados como resultado da fabricação e utilização de determinado produto ou serviço. A abordagem sistêmica da ACV é conhecida como do “berço ao túmulo”, na qual são levantados os dados em todas as fases do ciclo de vida do produto. O ciclo de vida se refere a todas as etapas de produção e uso do produto, relativas à extração das matérias-primas, passando pela produção, distribuição até o consumo e disposição final, contemplando também reciclagem e reuso quando for o caso.\r\nisto se fala sobre mudanças climáticas e emissões de CO2, porém, esses não são os únicos tipos de impactos ambientais possíveis no processo produtivo. A produção de qualquer produto pode atingir o meio ambiente de diferentes formas. Neste sentido, os fluxos de matéria e energia envolvidos no ciclo de vida de um produto são medidos e relacionados a diversas categorias de impactos ambientais. Ao final, é possível compreender quais danos ou benefícios da fabricação e uso de um produto específico.",
    "urlVideo":
        "https://www.youtube.com/watch?v=tMH-bQxJXtg&ab_channel=BraosOswaldo"
  }
];
