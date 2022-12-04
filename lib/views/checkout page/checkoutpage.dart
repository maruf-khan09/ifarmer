import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ifarmer/utils/colors.dart';
import 'package:ifarmer/utils/dimensions.dart';
import 'package:ifarmer/utils/routes.dart';
import 'package:ifarmer/views/checkout%20page/orderedItem.dart';
import 'package:ifarmer/views/custom%20widgets/custom_appbar.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  final GlobalKey<ScaffoldState> _checkoutKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          scaffoldkey: _checkoutKey,
          drawer: false,
          profile: true,
          title: "Checkout"),
      body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            margin: const EdgeInsets.all(Dimensions.MARGIN_SIZE_DEFAULT),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                "Order",
                style: TextStyle(
                    fontSize: Dimensions.FONT_SIZE_OVER_LARGE,
                    fontWeight: FontWeight.w700,
                    color: IFarmerColors.primaryColor),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                    vertical: Dimensions.MARGIN_SIZE_SMALL),
                height: 1,
                width: double.infinity,
                color: Colors.grey,
              ),
              OrderedItem(),
              Container(
                margin: const EdgeInsets.symmetric(
                    vertical: Dimensions.MARGIN_SIZE_SMALL),
                height: 1,
                width: double.infinity,
                color: Colors.grey,
              ),
              SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total:",
                      style: TextStyle(
                          fontSize: Dimensions.FONT_SIZE_LARGE,
                          fontWeight: FontWeight.w700,
                          color: IFarmerColors.primaryColor),
                    ),
                    Text(
                      "৳85000",
                      style: TextStyle(
                          fontSize: Dimensions.FONT_SIZE_LARGE,
                          fontWeight: FontWeight.w700,
                          color: IFarmerColors.primaryColor),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Get.offAndToNamed(productpage);
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: IFarmerColors.primaryColor,
                      borderRadius: BorderRadius.circular(6)),
                  height: 56,
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 80),
                  child: const Center(
                    child: Text(
                      "Place Order",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: Dimensions.FONT_SIZE_OVER_LARGE),
                    ),
                  ),
                ),
              )
            ]),
          )),
    );
  }
}
