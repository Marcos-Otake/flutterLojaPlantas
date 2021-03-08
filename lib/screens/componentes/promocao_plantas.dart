import 'package:flutter/material.dart';
import 'package:otakehouse/screens/componentes/title_with_more_btn.dart';
import 'package:otakehouse/constantes.dart';
import 'package:otakehouse/screens/detalhes/componentes/detalhes_screen.dart';
import 'package:otakehouse/screens/detalhes/componentes/detalhes_screen2.dart';

class PromocaoCards extends StatelessWidget {
  const PromocaoCards({
    Key key,
    this.image,
    this.title,
    this.preco,
    this.press,
  }) : super(key: key);

  final String image, title;
  final int preco;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(image),
          // Image.asset("assets/images/vaso_25_preto.png"),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23),
                    )
                  ]),
              child: Row(
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: "$title".toUpperCase(),
                      style: Theme.of(context).textTheme.button,
                    ),
                  ])),
                  Spacer(),
                  Text(
                    'R\$ ' + preco.toStringAsFixed(2),
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class PromocoesPlantas extends StatelessWidget {
  const PromocoesPlantas({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          PromocaoCards(
            image: "assets/images/vaso_25_fundotrans.png",
            title: "Vaso +\nSuculenta",
            preco: 45,
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetalhesScreen(),
                  ));
            },
          ),
          PromocaoCards(
            image: "assets/images/vaso_25_preto.png",
            title: "Vaso +\nSuculenta",
            preco: 45,
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetalhesScreen2(),
                  ));
            },
          ),
          PromocaoCards(
            image: "assets/images/vaso_base_35_lista.png",
            title: "Vaso +\nSuculenta",
            preco: 45,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    Key key,
    this.title,
    this.press,
  }) : super(key: key);
  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleWithCustomUnderline(text: title),
          Spacer(),
          // FlatButton(
          //   shape: RoundedRectangleBorder(
          //     borderRadius: BorderRadius.circular(20)),
          //   color: kPrimaryColor,
          // onPressed: press,
          // child: Text("Mais", style: TextStyle(
          //   color: Colors.white
          // ),),
          // ),

          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetalhesScreen(),
                  ));
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed))
                    return Theme.of(context)
                        .colorScheme
                        .primary
                        .withOpacity(0.1);
                  return kPrimaryColor; // Use the component's default.
                },
              ),
            ),
            child: Text(
              "Mais..",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}
