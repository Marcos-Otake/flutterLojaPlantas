import 'package:flutter/material.dart';

import '../../constantes.dart';


class DestaquesPlantas extends StatelessWidget {
  const DestaquesPlantas({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          DestaquesPlantasCards(
            image: "assets/images/vaso_base_25_lista.png",
            press: (){},
          ),
           DestaquesPlantasCards(
            image: "assets/images/vaso_base_35.png",
            press: (){},
          ),
           DestaquesPlantasCards(
            image: "assets/images/vaso_decorado.png",
            press: (){},
          ),
        ],
      ),
    );
  }
}

class DestaquesPlantasCards extends StatelessWidget {
  const DestaquesPlantasCards({
    Key key,
    this.image,
    this.press,
  }) : super(key: key);

  final String image;
  final Function press;

  

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
          child: Container(
        margin: EdgeInsets.only(
          left:kDefaultPadding,
           top: kDefaultPadding / 2,
           bottom: kDefaultPadding / 2,
           ),
        width: size.width * 0.8,
        height:  185,
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image)
          )
        ),
      ),
    );
  }
}