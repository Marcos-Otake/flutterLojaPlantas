import 'package:flutter/material.dart';
import 'package:otakehouse/constantes.dart';
import 'card_image_icons.dart';
import 'title_and_preco.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size  = MediaQuery.of(context).size;
    return SingleChildScrollView(
          child: Column(
        children: [
          CardImageAndIcons(size: size),
          TitleAndPreco(
            title: "Arranjo Médio",
            preco: 65,
          ),
          SizedBox(height: kDefaultPadding),
          Row(
            children: [
              SizedBox(width: size.width / 2,
              height:  84,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                  )
                ),
                color: kPrimaryColor,
                onPressed: () {}, 
                child: Text("Comprar",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
                ),
               ),
              ),
              Expanded(
                child: FlatButton(onPressed: () {},
                 child: Text("Descrição"),
               ),
              ),
            ],
          ),        
        ],
      ),
    );
  }
}



