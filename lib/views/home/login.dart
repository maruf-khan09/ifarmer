import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:ifarmer/utils/colors.dart';
import 'package:ifarmer/utils/dimensions.dart';
import 'package:ifarmer/utils/routes.dart';
import 'package:ifarmer/views/custom%20widgets/custom_appbar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<ScaffoldState> _homeKey = GlobalKey();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  GlobalKey<FormFieldState> phoneKey = GlobalKey();
  GlobalKey<FormFieldState> passKey = GlobalKey();
  var _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          scaffoldkey: _homeKey, drawer: false, profile: false, title: "LOGIN"),
      body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Form(
            child: Container(
              margin: const EdgeInsets.all(Dimensions.MARGIN_SIZE_DEFAULT),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              margin:
                                  const EdgeInsets.only(top: 40, bottom: 20),
                              child: SvgPicture.asset(
                                  "assets/images/ifarmerhome.svg")),
                          const Text(
                            "Please login to move forward",
                            style: TextStyle(
                                fontSize: Dimensions.FONT_SIZE_DEFAULT,
                                color: Color(0xFF505050)),
                          )
                        ]),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        top: Dimensions.MARGIN_SIZE_EXTRA_LARGE,
                        bottom: Dimensions.MARGIN_SIZE_EXTRA_SMALL),
                    child: const Text(
                      "Phone Number",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: Dimensions.FONT_SIZE_LARGE,
                          color: Color(0xFF031C06)),
                    ),
                  ),
                  TextFormField(
                    obscureText: false,
                    controller: phoneController,
                    key: phoneKey,
                    // inputFormatters: <TextInputFormatter>[
                    //   FilteringTextInputFormatter.allow(
                    //       RegExp(r'^[a-zA-Z0-9.@ ]+$'))
                    // ],
                    keyboardType: TextInputType.phone,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "phone number is required";
                      } else {
                        return null;
                      }
                    },
                    onChanged: (value) => phoneKey.currentState!.validate(),
                    decoration: InputDecoration(
                      hintText: "e.g. 01674157022",
                      contentPadding:
                          const EdgeInsets.fromLTRB(15.0, 5.0, 5.0, 5.0),
                      hintStyle: const TextStyle(
                          fontSize: 12.0, color: Color(0xFF616161)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: const BorderSide(
                            color: Color(0xFF616161), width: 2.0),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        top: Dimensions.MARGIN_SIZE_EXTRA_LARGE,
                        bottom: Dimensions.MARGIN_SIZE_EXTRA_SMALL),
                    child: const Text(
                      "Password",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: Dimensions.FONT_SIZE_LARGE,
                          color: Color(0xFF031C06)),
                    ),
                  ),
                  TextFormField(
                    obscureText: _obscureText,
                    controller: passController,
                    key: passKey,
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "requiredField";
                      } else if (value.length < 8) {
                        return "passwordDesc";
                      }
                    },
                    onChanged: (value) => passKey.currentState!.validate(),
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                        icon: Icon(
                          _obscureText == true
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Colors.black,
                        ),
                      ),
                      hintText: "Password",
                      contentPadding:
                          const EdgeInsets.fromLTRB(15.0, 5.0, 5.0, 5.0),
                      hintStyle: const TextStyle(
                          fontSize: 12.0, color: Color(0xFF616161)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: const BorderSide(
                            color: Color(0xFF616161), width: 2.0),
                      ),
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
                          "LOGIN",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: Dimensions.FONT_SIZE_OVER_LARGE),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
