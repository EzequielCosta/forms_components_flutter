import 'package:flutter/material.dart';

class InfoContent extends StatelessWidget {
  InfoContent({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Teste"),
        Expanded(
          child: Text(
            "Todos os dados armazenados no aplicativo Calculadora de tempo,tais como configurações e histórico de cálculos realizados, ficam todos salvos exclusivamente no próprio dispositivo do Usuário. A Calculadora de tempo faz uso de alguns serviços de terceiros para veiculação de propagandas,coleta de estatísticas de uso, serviços de backup e de pagamento. E esses serviços fornecidos por terceiros podem coletar alguns dados, por exemplo: Cookies; Dados de uso; identificação do dispositivo exclusivo para publicidade (ID ou IDFA do Google Advertiser, por exemplo); informações do dispositivo; geografia; número de Usuários; número de sessões; duração da sessão; compras no aplicativo; aberturas do aplicativo; atualizações do aplicativo; primeiras inicializações; sistemas operacionais; dados de pagamento; país; todos dados que partilha durante o uso do serviço; registros do dispositivo; identificador único universal (UUID); informações do travamento; nome de Usuário; e-mail; vários tipos de dados. Detalhes completos sobre cada tipo de Dados Pessoais coletados são fornecidos nas seções dedicadas desta política de privacidade ou por textos explicativos específicos exibidos antes da coleta de dados.Os Dados Pessoais poderão ser fornecidos livremente pelo Usuário, ou, no caso dos dados de utilização, coletados automaticamente ao se utilizar a Calculadora de tempo.",
          ),
        )
      ],
    );
  }
}
