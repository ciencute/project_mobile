import 'package:flutter/material.dart';


class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget(
      {this.textController,
      this.onChangeData,
      Key? key,
      this.hintText,
      this.hintStyle,
      this.isRequired = false,
      this.isRequiredIconSearch = true,
      this.styleTextSearch = true})
      : super(key: key);

  final TextEditingController? textController;
  final String? hintText;
  final TextStyle? hintStyle;
  final Function(String)? onChangeData;
  final bool? isRequired;
  final bool? isRequiredIconSearch;
  final bool? styleTextSearch;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: 
           BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: const Color(0xFFF4F5F7),),
      child: TextField(
        onChanged: onChangeData,
        controller: textController,
        maxLines: 1,
        style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 16),
        decoration: InputDecoration(
          contentPadding:
              isRequiredIconSearch! ? null : const EdgeInsets.only(left: 12),
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          hintText: hintText,
          hintStyle: hintStyle ??
              const TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
          prefixIcon: isRequiredIconSearch!
              ? Icon(
                  Icons.search,
                  color: const Color(0xff333333).withOpacity(0.5),
                )
              : null,
          suffixIcon: isRequired!
              ? Icon(
                  Icons.gps_fixed_rounded,
                  color: const Color(0xff333333).withOpacity(0.5),
                )
              : null,
        ),
      ),
    );
  }
}
