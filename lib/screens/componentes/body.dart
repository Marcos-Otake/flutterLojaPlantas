import 'package:flutter/material.dart';
import 'package:otakehouse/constantes.dart';
import 'package:otakehouse/screens/componentes/promocao_plantas.dart';
import 'destaques_plantas.dart';
import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //fornecerá a altura e largura total de nossa tela
    Size size = MediaQuery.of(context).size;
    // scroll para dispositivos pequenos
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSeachBox(size: size),
          TitleWithMoreBtn(
            title: "Promoções Imperdíveis",
            press: (){ },),
            PromocoesPlantas(),
            TitleWithMoreBtn(
              title: "Em Destaque!",
              press: () {},
            ),
            DestaquesPlantas(),
           SizedBox(height: kDefaultPadding) 
        ],
      ),
    );
  }
}


