import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_first_flutter_app/core/store.dart';
import 'package:my_first_flutter_app/models/cart.dart';
import 'package:my_first_flutter_app/models/catalog.dart';
import 'dart:convert';
import 'package:my_first_flutter_app/utils/routes.dart';
import 'package:my_first_flutter_app/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
import '../widgets/home_widgets/catalog_header.dart';
import '../widgets/home_widgets/catalog_list.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String name = "Flutter";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final _cart = (VxState.store as MyStore).cart;
    // final dumyList = List.generate(5, (index) => CatalogModel.items[0]);
    return Scaffold(
       backgroundColor: MyTheme.creamColor,
        floatingActionButton: VxBuilder(
          mutations: {AddMutation, RemoveMutation},
          builder: (context, store, status) => FloatingActionButton(
            onPressed: () => Navigator.pushNamed(context, MyRoutes.cartRoute),
            backgroundColor: MyTheme.darkBlue,
            child: Icon(CupertinoIcons.cart),

          ).badge(color: Vx.red500, size: 20, count: _cart.items.length, textStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        ),
        body: SafeArea(
          child: Container(
              padding: Vx.m32,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CatalogHeader(),
                  if (CatalogModel.items != null &&
                      CatalogModel.items.isNotEmpty)
                    CatalogList().py16().expand()
                  else
                    const CircularProgressIndicator()
                        .centered()
                        .py16()
                        .expand(),
                ],
              )),
        )
        // appBar: AppBar(title: const Text("Catalog App")),
        // body: Padding(
        //     padding: const EdgeInsets.all(16.0),
        //     child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
        //         ? GridView.builder(
        //             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //               crossAxisCount: 2,
        //               mainAxisSpacing: 16,
        //               crossAxisSpacing: 16,
        //             ),
        //             itemBuilder: (context, index) {
        //               final item = CatalogModel.items[index];
        //               return Card(
        //                   clipBehavior: Clip.antiAlias,
        //                   shape: RoundedRectangleBorder(
        //                       borderRadius: BorderRadius.circular(10)),
        //                   child: GridTile(
        //                     header: Container(
        //                       padding: const EdgeInsets.all(12),
        //                       decoration: const BoxDecoration(
        //                         color: Colors.deepPurple,
        //                       ),
        //                       child: Text(
        //                         item.name,
        //                         style: const TextStyle(color: Colors.white),
        //                       ),
        //                     ),
        //                     footer: Container(
        //                       padding: const EdgeInsets.all(12),
        //                       decoration: const BoxDecoration(
        //                         color: Colors.pink,
        //                       ),
        //                       child: Text(
        //                         item.price.toString(),
        //                         style: const TextStyle(color: Colors.white),
        //                       ),
        //                     ),
        //                     child: Image.network(item.image),
        //                   ));
        //             },
        //             itemCount: CatalogModel.items.length,
        //           )
        //         // ? ListView.builder(
        //         //     itemCount: CatalogModel.items.length,
        //         //     itemBuilder: (context, index) =>
        //         //         ItemWidget(item: CatalogModel.items[index]),
        //         //   )
        //         : const Center(
        //             child: CircularProgressIndicator(),
        //           )),
        // drawer: MyDrawer(),
        );
  }
}
