import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ifarmer/utils/colors.dart';
import 'package:ifarmer/utils/dimensions.dart';
import 'package:ifarmer/utils/routes.dart';

class ProductItem extends StatefulWidget {
  const ProductItem({super.key});

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 0.5, color: IFarmerColors.primaryColor),
          borderRadius: BorderRadius.circular(4)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // CachedNetworkImage(imageUrl: "")
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(4), topRight: Radius.circular(4)),
            child: Image.asset(
              "assets/images/samplebanner.png",
              height: 140,
              fit: BoxFit.fitHeight,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
                horizontal: Dimensions.MARGIN_SIZE_SMALL, vertical: 5),
            child: const Text(
              "Titleasdasdsadassasdasdsasdadasdasdaddass",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontSize: Dimensions.FONT_SIZE_LARGE,
                  fontWeight: FontWeight.w500,
                  color: IFarmerColors.primaryColor),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(Dimensions.MARGIN_SIZE_SMALL, 0,
                Dimensions.MARGIN_SIZE_SMALL, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "৳85000/",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: Dimensions.FONT_SIZE_LARGE,
                      fontWeight: FontWeight.w500,
                      color: IFarmerColors.priceColor),
                ),
                Text(
                  "Unit",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: Dimensions.FONT_SIZE_EXTRA_SMALL,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[700]),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Get.toNamed(checkoutpage);
            },
            child: Container(
              decoration: BoxDecoration(
                  color: IFarmerColors.primaryColor,
                  borderRadius: BorderRadius.circular(6)),
              height: 30,
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(Dimensions.MARGIN_SIZE_SMALL, 0,
                  Dimensions.MARGIN_SIZE_SMALL, Dimensions.MARGIN_SIZE_SMALL),
              child: const Center(
                child: Text(
                  "Order",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: Dimensions.FONT_SIZE_DEFAULT),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
