// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_catalog/models/catalog.dart';

import '../widgets/home_widgets/add_to_cart.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "${catalog.language}".text.bold.xl2.make(),
            book(
              catalog: catalog,
            ).wh(100, 40)
          ],
        ).p16(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.name),
              child: Image.network(catalog.image),
            ).p32(),
            Expanded(
                child: VxArc(
              height: 30.0,
              edge: VxEdge.TOP,
              arcType: VxArcType.CONVEY,
              child: Container(
                color: context.cardColor,
                width: context.screenWidth,
                child: Column(
                  children: [
                    catalog.name.text.xl3.color(context.theme.primaryColor).bold.make(),
                    catalog.desc.text
                        .textStyle(context.captionStyle)
                        .make()
                        .p12(),
                    10.heightBox,
                    "Currency : ${catalog.currency}".text.lg.bold.make(),
                    // "Book your Ticket to Experince the diversity of ${catalog.name}"
                    //     .text
                    //     .textStyle(context.captionStyle)
                    //     .make().p16(),
                  ],
                ).py32(),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
