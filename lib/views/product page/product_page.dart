import 'package:flutter/material.dart';
import 'package:ifarmer/utils/dimensions.dart';
import 'package:ifarmer/views/custom_widgets/custom_appbar.dart';
import 'package:ifarmer/views/custom_widgets/custom_drawer.dart';
import 'package:ifarmer/views/product%20page/productItem.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final GlobalKey<ScaffoldState> _productKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _productKey,
      drawer: const CustomDrawer(),
      appBar: CustomAppBar(
          scaffoldkey: _productKey,
          drawer: true,
          profile: true,
          title: "Welcome,name"),
      body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/samplebanner.png",
                width: double.infinity,
                fit: BoxFit.fill,
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: Dimensions.MARGIN_SIZE_DEFAULT,
                    left: Dimensions.MARGIN_SIZE_DEFAULT),
                child: const Text(
                  "Products",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: Dimensions.FONT_SIZE_OVER_LARGE,
                      color: Color(0xFF031C06)),
                ),
              ),
              GridView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                primary: false,
                physics: const ScrollPhysics(),
                padding: const EdgeInsets.all(20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.68,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15),
                itemBuilder: (context, index) => InkWell(
                  onTap: () {},
                  child: ProductItem(),
                ),
                itemCount: 20,
              )
            ],
          )),
    );
  }
}
