import 'package:flutter/material.dart';
import '../../../constantes.dart';


class TitleAndPreco extends StatelessWidget {
  const TitleAndPreco({
    Key key,
    this.title,
    this.preco,
  }) : super(key: key);

  final String title;
  final int preco; 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding),
      child: Row(
        children: [
          RichText(text: TextSpan(
            children: [
              TextSpan(
                text: "$title",
                style:  Theme.of(context).textTheme.headline4.copyWith(
                  color: kTextColor,
                  fontWeight: FontWeight.bold
                ),
                ),
               
            ]
          ),
          ),
          Spacer(),
          Text("R\$ " + preco.toStringAsFixed(2),
          style: Theme.of(context).
          textTheme.headline5.copyWith(
            color: kPrimaryColor),
          )
        ],
      ),
    );
  }
}