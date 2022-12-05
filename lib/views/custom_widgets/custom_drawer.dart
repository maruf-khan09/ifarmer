import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:ifarmer/utils/colors.dart';
import 'package:ifarmer/utils/dimensions.dart';
import 'package:ifarmer/utils/routes.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  bool expanded = false;
  @override
  void initState() {
    super.initState();
  }

  void attendanceTileExpandedStatus() {
    setState(() {
      expanded = !expanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Scaffold(
          backgroundColor: IFarmerColors.backgroundColor,
          appBar: AppBar(
            backgroundColor: IFarmerColors.primaryColor,
            automaticallyImplyLeading: false,
            centerTitle: false,
            actions: [
              InkWell(
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.arrow_back_ios_new,
                      size: 18, color: Colors.white),
                ),
                onTap: () {
                  Get.back();
                },
              )
            ],
            leadingWidth: 40,
            title: const SizedBox(),
          ),
          body: Column(
            children: [
              Container(
                height: 120,
                decoration: const BoxDecoration(
                    color: IFarmerColors.primaryColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5))),
                padding: const EdgeInsets.symmetric(
                    horizontal: Dimensions.MARGIN_SIZE_DEFAULT),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    false
                        ? CircleAvatar(
                            radius: 30.0,
                            backgroundImage: NetworkImage(""),
                            backgroundColor: Colors.transparent,
                          )
                        : CircleAvatar(
                            radius: 30.0,
                            child: Image.asset("assets/images/cancelled.gif"),
                            backgroundColor: Colors.transparent,
                          ),
                    SizedBox(
                      width: Dimensions.MARGIN_SIZE_SMALL,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            child: const Text(
                          "name",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        )),
                        Container(
                            child: const Text(
                          "name",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ))
                      ],
                    ),
                  ],
                ),
              ),
              ListView(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                children: [
                  ListTile(
                      dense: true,
                      title: const Text(
                        'Home',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      leading: SvgPicture.asset(
                        "assets/images/home.svg",
                        color: Colors.black,
                      ),
                      minLeadingWidth: 2,
                      onTap: () {}),
                  ListTile(
                      dense: true,
                      title: const Text(
                        'Profile',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      leading: SvgPicture.asset(
                        "assets/images/profile.svg",
                        color: Colors.black,
                      ),
                      minLeadingWidth: 2,
                      onTap: () {
                        Get.toNamed(profilepage);
                      }),
                  ListTile(
                    dense: true,
                    title: const Text(
                      'Order History',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    leading: SvgPicture.asset(
                      "assets/images/orderhis.svg",
                      color: Colors.black,
                    ),
                    minLeadingWidth: 2,
                    onTap: () async {},
                  ),
                  ListTile(
                    dense: true,
                    title: const Text(
                      'Logout',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    leading: SvgPicture.asset("assets/images/logout.svg"),
                    minLeadingWidth: 2,
                    onTap: () {},
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
