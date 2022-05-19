import 'package:flutter/material.dart';
import 'package:form_components/pages/politics_of_privacy/politics_of_privacy.dart';
import 'package:form_components/widgets/info_content.dart';

class PoliticOfPrivacyState extends State<PoliticOfPrivacy> {
  bool _check1 = false;
  bool _check2 = false;
  bool _check3 = false;
  bool? _check4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Politic of Privacy")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Text(
                "Politic of Privacy",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30),
              ),
            ),
            Text(
              "Todos os dados armazenados no aplicativo Calculadora de tempo,tais como configurações e histórico de cálculos realizados, ficam todos salvos exclusivamente no próprio dispositivo do Usuário. A Calculadora de tempo faz uso de alguns serviços de terceiros para veiculação de propagandas,coleta de estatísticas de uso, serviços de backup e de pagamento. E esses serviços fornecidos por terceiros podem coletar alguns dados, por exemplo: Cookies; Dados de uso; identificação do dispositivo exclusivo para publicidade (ID ou IDFA do Google Advertiser, por exemplo); informações do dispositivo; geografia; número de Usuários; número de sessões; duração da sessão; compras no aplicativo; aberturas do aplicativo; atualizações do aplicativo; primeiras inicializações; sistemas operacionais; dados de pagamento; país; todos dados que partilha durante o uso do serviço; registros do dispositivo; identificador único universal (UUID); informações do travamento; nome de Usuário; e-mail; vários tipos de dados. Detalhes completos sobre cada tipo de Dados Pessoais coletados são fornecidos nas seções dedicadas desta política de privacidade ou por textos explicativos específicos exibidos antes da coleta de dados.Os Dados Pessoais poderão ser fornecidos livremente pelo Usuário, ou, no caso dos dados de utilização, coletados automaticamente ao se utilizar a Calculadora de tempo.O Google Analytics é um serviço de análise de uso fornecido pela Google LLC ou pela Google Ireland Limited, dependendo do local a partir do qual a Calculadora de tempo for utilizado. ('Google'). O Google utiliza os dados coletados para acompanhar e examinar o uso deste aplicativo (Calculadora de tempo) para preparar relatórios sobre atividades e compartilhá-los com outros serviços do Google. O Google pode usar os dados coletados para contextualizar e personalizar os anúncios de sua própria rede de publicidade. Dados Pessoais coletados: Cookies; identificação do dispositivo exclusivo para publicidade (ID ou IDFA do Google Advertiser, por exemplo); Dados de uso.Os Dados Pessoais dos Usuários podem ser utilizados para fins jurídicos pelo Proprietário em juízo ou nas etapas conducentes à possível ação jurídica decorrente de uso indevido deste aplicativo ou dos Serviços relacionados.O Usuário declara estar ciente de que o Proprietário poderá ser obrigado a revelar os Dados Pessoais mediante solicitação das autoridades governamentais.",
              textAlign: TextAlign.center,
            ),
            CheckboxListTile(
                title: Text(
                    "Aceito compartilhar dados para melhoria do aplicativo"),
                value: _check1,
                controlAffinity: ListTileControlAffinity.leading,
                onChanged: (value) {
                  setState(
                    () {
                      _check1 = value!;
                      _check4 = checkIfAllCheckboxWasChecked();
                    },
                  );
                }),
            CheckboxListTile(
                title: Text(
                    "Aceito compartilhar dados de aplicativos instalados no dispositivos"),
                value: _check2,
                controlAffinity: ListTileControlAffinity.leading,
                onChanged: (value) => {
                      setState(
                        () {
                          _check2 = value!;
                          _check4 = checkIfAllCheckboxWasChecked();
                        },
                      )
                    }),
            CheckboxListTile(
                title:
                    Text("Aceito compartilhar dados para fins de propaganda"),
                value: _check3,
                controlAffinity: ListTileControlAffinity.leading,
                onChanged: (value) => {
                      setState(
                        () {
                          _check3 = value!;
                          _check4 = checkIfAllCheckboxWasChecked();
                        },
                      )
                    }),
            CheckboxListTile(
                title: Text("Aceitar todos os itens acima"),
                value: _check4,
                tristate: true,
                controlAffinity: ListTileControlAffinity.leading,
                onChanged: (value) => {
                      setState(
                        () {
                          _check4 = value;
                          _check1 = value ?? false;
                          _check2 = value ?? false;
                          _check3 = value ?? false;
                        },
                      )
                    }),
          ],
        ),
      ),
    );
  }

  bool? checkIfAllCheckboxWasChecked() {
    //if (_check1 == null || _check2 == null || _check3 == null) return null;
    return (_check1 && _check2 && _check3) ? true : null;
  }
}
