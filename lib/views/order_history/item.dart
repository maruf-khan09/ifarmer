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
          padding: const EdgeInsets.all(2),
          alignment: Alignment.center,
          width: 100,
          decoration: BoxDecoration(
              color: IFarmerColors.quantitybgcolor,
              borderRadius: BorderRadius.circular(5)),
          child: Text(
            widget.type.toString(),
            style: const TextStyle(
                color: IFarmerColors.priceColor, fontWeight: FontWeight.w600),
          ),
        );
      case "Cancelled":
        return Container(
          padding: const EdgeInsets.all(2),
          alignment: Alignment.center,
          width: 100,
          decoration: BoxDecoration(
              color: IFarmerColors.cancelBgColor,
              borderRadius: BorderRadius.circular(5)),
          child: Text(
            widget.type.toString(),
            style: const TextStyle(
                color: IFarmerColors.cancelstatusColor,
                fontWeight: FontWeight.w600),
          ),
        );
      case "On Progress":
        return Container(
          padding: const EdgeInsets.all(2),
          alignment: Alignment.center,
          width: 100,
          decoration: BoxDecoration(
              color: IFarmerColors.onprogressBgColor,
              borderRadius: BorderRadius.circular(5)),
          child: Text(
            widget.type.toString(),
            style: const TextStyle(
                color: IFarmerColors.onprogressColor,
                fontWeight: FontWeight.w600),
          ),
        );
      case "Order Placed":
        return Container(
          padding: const EdgeInsets.all(2),
          alignment: Alignment.center,
          width: 100,
          decoration: BoxDecoration(
              color: IFarmerColors.orderplacedBGColor,
              borderRadius: BorderRadius.circular(5)),
          child: Text(
            widget.type.toString(),
            style: const TextStyle(
                color: IFarmerColors.orderplaceColor,
                fontWeight: FontWeight.w600),
          ),
        );
      case "Delivered":
        return Container(
          padding: const EdgeInsets.all(2),
          alignment: Alignment.center,
          width: 100,
          decoration: BoxDecoration(
              color: IFarmerColors.quantitybgcolor,
              borderRadius: BorderRadius.circular(5)),
          child: Text(
            widget.type.toString(),
            style: const TextStyle(
                color: IFarmerColors.primaryColor, fontWeight: FontWeight.w600),
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
