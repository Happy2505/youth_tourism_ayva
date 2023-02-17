import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PersonalInformationWidget extends StatelessWidget {
  const PersonalInformationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView(
        children: [
          Stack(children: [
            Positioned(
              top: 15,
              left: 15,
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.arrow_back_rounded,
                    size: 28,
                  )),
            ),
            const Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'Согласие',
                  style: TextStyle(height: 2.5, fontSize: 22),
                )),
          ]),
          Column(
            children: const [
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  'на обработку и передачу персональных данных пользователя',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w500
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  '    В соответствии со статьями 23, 24 Конституции Российской Федерации, Федеральным законом от 27.07.2006 № 152-ФЗ «О персональных данных», Правилами обработки персональных данных, размещенными на сайте студтуризм.рф по адресу: https://студтуризм.рф (далее - Правила обработки ПДн), Я, субъект персональных данных, именуемый в дальнейшем Пользователь, отправляя информацию через формы обратной связи (далее, каждая из них и все в совокупности - Форма, Формы) при прохождении процедуры регистрации в целях использования сайта студтуризм.рф и его сервисов (далее - Сайт, Сервис), и в дальнейшем при использовании Сайта и/или его Сервисов, даю согласие на обработку и передачу моих персональных данных (далее - Согласие) свободно, своей волей и в своем интересе на следующих условиях:',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                    letterSpacing: 1.25
                  ),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  '    1. Согласие выдано Международному молодежному центру Федерального государственного автономного образовательного учреждения высшего образования "Российский университет дружбы народов" (ММЦ ФГАОУВО «РУДН», ИНН 7728073720, ОГРН 1027739189323), расположенному по адресу: 117198, г. Москва, ул. Миклухо-Маклая, д. 6 (далее - Оператор). 2. Согласие выдано на обработку и передачу персональных и иных данных, указанных Пользователем в Формах путем заполнения соответствующих текстовых полей и/или прикрепленных к Формам файлов, а именно следующих категорий:',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.25
                  ),
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
