import 'package:flutter/material.dart';
import '../../../shared/styles/text_body_style.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BodyText('kien'),
    );
  }
}
