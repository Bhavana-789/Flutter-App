import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          // buttonPadding: Vx.mOnly(right: 20),
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.red700.xl4.bold.xl.make(),
            ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(MyTheme.darkBlue),
                        shape:
                            MaterialStateProperty.all(const StadiumBorder())),
                    onPressed: () {},
                    child: "Add to cart".text.make())
                .wh(120, 50)
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(tag: Key(catalog.image), child: Image.network(catalog.image))
                .h32(context),
            Expanded(
                child: VxArc(
              height: 30.0,
              arcType: VxArcType.convey,
              edge: VxEdge.top,
              child: Container(
                color: Colors.white,
                width: context.screenWidth,
                child: Column(
                  children: [
                    catalog.name.text.xl4.color(MyTheme.darkBlue).bold.make(),
                    catalog.desc.text.xl.textStyle(context.captionStyle).make(),
                    10.heightBox,
                    "The services are provided \" As is \". We make no representation or warranty of any kind whatsoever to you or any other person relating in any way to the services, including any part thereof, or any website or other content or service that may be accessible directly or indirectly through the services "
                        .text
                        .textStyle(context.captionStyle)
                        .make()
                    .p12()
                  ],
                ).py64(),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
