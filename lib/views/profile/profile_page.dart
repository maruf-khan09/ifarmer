import 'package:flutter/material.dart';
import 'package:ifarmer/utils/colors.dart';
import 'package:ifarmer/utils/dimensions.dart';
import 'package:ifarmer/views/custom_widgets/custom_appbar.dart';
import 'package:ifarmer/views/custom_widgets/custom_drawer.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final GlobalKey<ScaffoldState> _profileKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      key: _profileKey,
      appBar: CustomAppBar(
          scaffoldkey: _profileKey,
          drawer: true,
          profile: false,
          title: "Profile"),
      body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                height: 100,
                decoration: const BoxDecoration(
                    color: IFarmerColors.primaryColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5))),
                padding: const EdgeInsets.symmetric(
                    horizontal: Dimensions.MARGIN_SIZE_DEFAULT,
                    vertical: Dimensions.MARGIN_SIZE_DEFAULT),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                      width: Dimensions.MARGIN_SIZE_DEFAULT,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            child: const Text(
                          "name",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        )),
                        Container(
                            child: const Text(
                          "address",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ))
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(Dimensions.MARGIN_SIZE_DEFAULT),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Name:",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: Dimensions.MARGIN_SIZE_DEFAULT,
                        ),
                        Text(
                          "data",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: Dimensions.MARGIN_SIZE_SMALL,
                    ),
                    Row(
                      children: [
                        Text(
                          "Contact:",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: Dimensions.MARGIN_SIZE_DEFAULT,
                        ),
                        Text(
                          "data",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: Dimensions.MARGIN_SIZE_SMALL,
                    ),
                    Row(
                      children: [
                        Text(
                          "NID Number:",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: Dimensions.MARGIN_SIZE_DEFAULT,
                        ),
                        Text(
                          "data",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: Dimensions.MARGIN_SIZE_SMALL,
                    ),
                    Row(
                      children: [
                        Text(
                          "Shop Address:",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: Dimensions.MARGIN_SIZE_DEFAULT,
                        ),
                        Text(
                          "data",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: Dimensions.MARGIN_SIZE_SMALL,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "NID Photos:",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: Dimensions.MARGIN_SIZE_DEFAULT,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          height: 100,
                          child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              primary: false,
                              shrinkWrap: true,
                              itemBuilder: ((context, index) {
                                return Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                          width: 0.6,
                                          color: IFarmerColors.primaryColor)),
                                  height: 100,
                                  width: 100,
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(5)),
                                    child: Image.asset(
                                      "assets/images/fruitsample.png",
                                      height: 100,
                                      width: 100,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                );
                              }),
                              separatorBuilder: (context, index) {
                                return const SizedBox(
                                  width: 10,
                                );
                              },
                              itemCount: 2),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: Dimensions.MARGIN_SIZE_SMALL,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Shop Photos:",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: Dimensions.MARGIN_SIZE_DEFAULT,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          height: 100,
                          child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              primary: false,
                              shrinkWrap: true,
                              itemBuilder: ((context, index) {
                                return Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                          width: 0.6,
                                          color: IFarmerColors.primaryColor)),
                                  height: 100,
                                  width: 100,
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(5)),
                                    child: Image.asset(
                                      "assets/images/fruitsample.png",
                                      height: 100,
                                      width: 100,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                );
                              }),
                              separatorBuilder: (context, index) {
                                return const SizedBox(
                                  width: 10,
                                );
                              },
                              itemCount: 1),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: Dimensions.MARGIN_SIZE_SMALL,
                    ),
                    const Text(
                      "*If you need anykind of changes please contact with call center.",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
