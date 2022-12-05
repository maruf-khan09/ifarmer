import 'package:flutter/material.dart';
import 'package:ifarmer/utils/colors.dart';

class Completion extends StatefulWidget {
  final String type;
  const Completion({super.key, required this.type});

  @override
  State<Completion> createState() => _CompletionState();
}

class _CompletionState extends State<Completion> {
  _createView(String type) {
    switch (type) {
      case "Confirmed":
        return Container(
          alignment: Alignment.center,
          width: 100,
          decoration: BoxDecoration(
              color: IFarmerColors.quantitybgcolor,
              borderRadius: BorderRadius.circular(5)),
          child: Text(
            widget.type.toString(),
            style: const TextStyle(color: IFarmerColors.priceColor),
          ),
        );
      case "Cancelled":
        return Container(
          alignment: Alignment.center,
          width: 100,
          decoration: BoxDecoration(
              color: IFarmerColors.cancelBgColor,
              borderRadius: BorderRadius.circular(5)),
          child: Text(
            widget.type.toString(),
            style: const TextStyle(color: IFarmerColors.cancelstatusColor),
          ),
        );
      case "On Progress":
        return Container(
          alignment: Alignment.center,
          width: 100,
          decoration: BoxDecoration(
              color: IFarmerColors.onprogressBgColor,
              borderRadius: BorderRadius.circular(5)),
          child: Text(
            widget.type.toString(),
            style: const TextStyle(color: IFarmerColors.onprogressColor),
          ),
        );
      case "Order Placed":
        return Container(
          alignment: Alignment.center,
          width: 100,
          decoration: BoxDecoration(
              color: IFarmerColors.orderplacedBGColor,
              borderRadius: BorderRadius.circular(5)),
          child: Text(
            widget.type.toString(),
            style: const TextStyle(color: IFarmerColors.orderplaceColor),
          ),
        );
      case "Delivered":
        return Container(
          alignment: Alignment.center,
          width: 100,
          decoration: BoxDecoration(
              color: IFarmerColors.quantitybgcolor,
              borderRadius: BorderRadius.circular(5)),
          child: Text(
            widget.type.toString(),
            style: const TextStyle(color: IFarmerColors.primaryColor),
          ),
        );

      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return _createView(widget.type);
  }
}
