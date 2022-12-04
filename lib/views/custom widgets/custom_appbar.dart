import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:ifarmer/utils/colors.dart';
import 'package:ifarmer/utils/dimensions.dart';
import 'package:ifarmer/utils/shared_pref.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final GlobalKey<ScaffoldState> scaffoldkey;
  bool drawer;
  bool profile;

  String title;

  CustomAppBar(
      {Key? key,
      required this.scaffoldkey,
      required this.drawer,
      required this.profile,
      required this.title})
      : super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();

  @override
  Size get preferredSize {
    return const Size.fromHeight(56.0);
  }
}

class _CustomAppBarState extends State<CustomAppBar> {
  final SharedPref _sharedPref = SharedPref();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: IFarmerColors.primaryColor,
        leading: widget.drawer
            ? InkWell(
                child: const Icon(Icons.menu),
                onTap: () {
                  widget.scaffoldkey.currentState!.openDrawer();
                },
              )
            : InkWell(
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  size: 18,
                ),
                onTap: () {
                  Get.back(result: true);
                }),
        iconTheme: const IconThemeData(color: Colors.white),
        titleTextStyle: const TextStyle(
            fontSize: Dimensions.FONT_SIZE_OVER_LARGE,
            color: Colors.white,
            fontWeight: FontWeight.w600),
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(4.0),
            child: Container(
              color: IFarmerColors.primaryColor,
              height: 2.0,
            )),
        title: Container(
          margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
          child: Text(widget.title),
        ),
        centerTitle: true,
        titleSpacing: 0.0,
        actions: [
          widget.profile
              ? InkWell(
                  onTap: () {
                    //  Get.toNamed(cartPage);
                  },
                  child: Center(
                    child: Stack(
                      children: [
                        //will be profile image
                        SvgPicture.asset(
                          "assets/images/cart.svg",
                        ),
                      ],
                    ),
                  ),
                )
              : const SizedBox.shrink(),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
