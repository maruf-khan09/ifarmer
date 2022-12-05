import 'package:flutter/material.dart';
import 'package:ifarmer/utils/colors.dart';
import 'package:ifarmer/utils/dimensions.dart';

class CustomDialog extends StatefulWidget {
  final String titile;
  final String body;
  final String imagePath;
  final Function onButtonTap;
  final String buttonName;

  const CustomDialog(
      {super.key,
      required this.body,
      required this.imagePath,
      required this.onButtonTap,
      required this.titile,
      required this.buttonName});

  @override
  State<CustomDialog> createState() => _CustomDialogState();
}

class _CustomDialogState extends State<CustomDialog> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: AlertDialog(
        // backgroundColor: IFarmerColors.backgroundColor,
        content: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              alignment: Alignment.center,
              // child: SvgPicture.asset(widget.imagePath),
              child: Image.asset(
                widget.imagePath,
                height: 125.0,
                width: 125.0,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Center(
                child: Text(
              widget.titile,
              style: Theme.of(context).textTheme.titleLarge,
            )),
            const SizedBox(
              height: 16,
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                  horizontal: Dimensions.MARGIN_SIZE_DEFAULT),
              child: Text(
                widget.body,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ],
        ),
        actions: [
          InkWell(
            onTap: (() => widget.onButtonTap()),
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.fromLTRB(
                  Dimensions.MARGIN_SIZE_DEFAULT,
                  Dimensions.MARGIN_SIZE_DEFAULT,
                  Dimensions.MARGIN_SIZE_DEFAULT,
                  Dimensions.MARGIN_SIZE_DEFAULT * 2),
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                  color: IFarmerColors.primaryColor,
                  borderRadius: BorderRadius.circular(6)),
              child: const Text(
                "OK",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
