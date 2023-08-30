import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/core/store.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../models/cart.dart';
import '../../models/catalog.dart';
import '../themes.dart';

class AddToCart extends StatelessWidget {
  final Item catalog;
  AddToCart({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [AddMutation, RemoveMutation]);

    final CartModel _cart = (VxState.store as MyStore).cart;
    // final CatalogModel _catalog = (VxState.store as MyStore).catalog;

    bool isInCart = _cart.items.contains(catalog) ?? false;
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(MyTheme.darkBlue),
            shape: MaterialStateProperty.all(const StadiumBorder())),
        onPressed: () {
          if (!isInCart) {
            // isInCart = isInCart.toggle();
            // _cart.catalog = _catalog;
            // _cart.add(catalog);
             AddMutation(catalog);
            // setState(() {});
          }
        },
        child:
            isInCart ? Icon(Icons.done) : Icon(CupertinoIcons.cart_badge_plus));
  }
}
