import 'dart:io';

import 'package:app_mobile/modules/profile/acount_infos/state/acount_infos_state.dart';
import 'package:app_mobile/shared/styles/body_style/body_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app_mobile/resource/assets_constant/icon_constants.dart';
import 'package:app_mobile/resource/assets_constant/images_constants.dart';
import 'package:app_mobile/shared/constants/colors.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../shared/services/shared_pre.dart';
import '../cubit/acount_infos_cubit.dart';

class AcountInfoScreen extends StatefulWidget {
  const AcountInfoScreen({Key? key}) : super(key: key);

  @override
  _AcountInfoScreenState createState() => _AcountInfoScreenState();
}

class _AcountInfoScreenState extends State<AcountInfoScreen> {
  late AcountInfoCubit _cubit;
  late File profilePicFile;
  String name = '';
  String phone = '';
  String address = '';
  late SharedPreferences sharedPreferences;
  @override
  void initState() {
    super.initState();
    // _cubit = AcountInfoCubit();
    name = UserSimplePreferences.getUsername() ?? '';
    phone = UserSimplePreferences.getPhone() ?? '';
    address = UserSimplePreferences.getAddress() ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          appBar: AppBar(
              backgroundColor: AppColors.gradient2BackgroundColor,
              elevation: 0.2,
              leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios_rounded,
                  color: Color(0xffffffff),
                ),
                iconSize: 25,
                onPressed: () {
                  Get.back();
                },
              )),
          body: Container(
            height: Get.height,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    tileMode: TileMode.clamp,
                    stops: [0.4, 1.0],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topLeft,
                    colors: [
                      AppColors.gradient1BackgroundColor,
                      AppColors.gradient2BackgroundColor
                    ])),
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: SizedBox(
                            height: 50,
                            child: Text(
                              'Edit your information'.toUpperCase(),
                              style: Textbody4.defaultStyle.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 24),
                            ),
                          ),
                        ),
                        Container(
                          width: Get.width,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 6),
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(5)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '-- Fullname',
                                style: Textbody1.defaultStyle.copyWith(
                                    color: AppColors.primaryHintColorLight),
                              ),
                              TextFormField(
                                initialValue: name,
                                cursorColor: Colors.white,
                                cursorHeight: 20,
                                style: Textbody3.defaultStyle,
                                decoration: const InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.transparent),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: AppColors
                                              .colorLight,
                                          width: 2),
                                    ),
                                    hintText: 'Your name',
                                    hintStyle: Textbody3.defaultStyle),
                                onChanged: (name) =>
                                    setState(() =>this.name = name),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: Get.width,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 6),
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(5)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '-- Phone',
                                style: Textbody1.defaultStyle.copyWith(
                                    color: AppColors.primaryHintColorLight),
                              ),
                              TextFormField(
                                keyboardType: TextInputType.phone,
                                initialValue: name,
                                cursorColor: Colors.white,
                                cursorHeight: 20,
                                style: Textbody3.defaultStyle,
                                decoration: const InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.transparent),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: AppColors
                                              .colorLight,
                                          width: 2),
                                    ),
                                    hintText: 'Your phone',
                                    hintStyle: Textbody3.defaultStyle),
                                onChanged: (phone) =>
                                    setState(() => this.phone = phone),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: Get.width,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 6),
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(5)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '-- Address',
                                style: Textbody1.defaultStyle.copyWith(
                                    color: AppColors.primaryHintColorLight),
                              ),
                              TextFormField(
                                initialValue: name,
                                cursorColor: Colors.white,
                                cursorHeight: 20,
                                style: Textbody3.defaultStyle,
                                decoration: const InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.transparent),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: AppColors
                                              .colorLight,
                                          width: 2),
                                    ),
                                    hintText: 'Your address',
                                    hintStyle: Textbody3.defaultStyle),
                                onChanged: (address) =>
                                    setState(() => this.address = address),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    width: Get.width,
                    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: const Center(
                        child: Text('SAVE', style: Textbody3.defaultStyle)),
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            tileMode: TileMode.clamp,
                            stops: [0.4, 1.0],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topLeft,
                            colors: [
                              AppColors.gradient2BackgroundColor,
                              AppColors.gradient1BackgroundColor,
                            ]),
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                            width: 0.2, color: AppColors.colorLight)),
                  ),
                  onTap: () async {
                    await UserSimplePreferences.setUsername(name);
                    await UserSimplePreferences.setPhone(phone);
                    await UserSimplePreferences.setAddress(address);
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      backgroundColor: AppColors.colorDark,
                      content: Text(
                        "Update successfully!!!",
                        style: Textbody1.defaultStyle,
                      ),
                      duration: Duration(milliseconds: 1000),
                    ));
                    Get.back();

                  },
                )
              ],
            ),
          ),
        ));
        
  }
}
