import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/home_controller.dart';

part 'home_screen.children.dart';
class HomeScreen extends GetView<HomeController>{
  const HomeScreen ({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
   return Scaffold(body: Container());
  }

}