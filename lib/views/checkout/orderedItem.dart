import 'package:flutter/material.dart';
import 'package:ifarmer/utils/colors.dart';
import 'package:ifarmer/utils/dimensions.dart';

class OrderedItem extends StatefulWidget {
  const OrderedItem({super.key});

  @override
  State<OrderedItem> createState() => _OrderedItemState();
}

class _OrderedItemState extends State<OrderedItem> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            "assets/images/fruitsample.png",
            height: 80,
            width: 100,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            width: Dimensions.MARGIN_SIZE_DEFAULT,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 140,
                child: const Text(
                  "Title Title Title Title Title Title Title",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: Dimensions.FONT_SIZE_LARGE,
                      overflow: TextOverflow.ellipsis),
                  maxLines: 2,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.6,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Text(
                          "৳85000/",
                          style: TextStyle(
                              color: IFarmerColors.priceColor,
                              fontSize: Dimensions.FONT_SIZE_LARGE),
                        ),
                        Text(
                          "unit",
                          style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: Dimensions.FONT_SIZE_SMALL),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        InkWell(
                            onTap: () {
                              if (count > 1) {
                                setState(() {
                                  count--;
                                });
                              }
                            },
                            child: const Icon(Icons.remove)),
                        Container(
                            alignment: Alignment.center,
                            height: 30,
                            // width: 50,
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            decoration: const BoxDecoration(
                                color: IFarmerColors.quantitybgcolor),
                            child: Text(
                              "$count",
                              style: const TextStyle(
                                  fontSize: Dimensions.FONT_SIZE_LARGE,
                                  fontWeight: FontWeight.w500),
                            )),
                        InkWell(
                            onTap: () {
                              setState(() {
                                count++;
                              });
                            },
                            child: const Icon(Icons.add)),
                      ],
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
