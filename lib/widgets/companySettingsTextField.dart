import 'package:flutter/material.dart';

import '../pages/filter/FilterItems.dart';
import '../utils/colorUtil.dart';

class CompanySettingsTextField extends StatelessWidget {
  String hintText;
  String img;
  String Sufimg;
  bool enable;
  double borderRadius;
  EdgeInsets margin;
  Color color;
  double? width;
  CompanySettingsTextField(
      {required this.hintText,
      required this.img,
      required this.Sufimg,
      this.enable = true,
      this.borderRadius = 4.0,
      this.margin = const EdgeInsets.only(left: 0),
      this.color = Colors.white,
      this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: color,
      ),
      alignment: Alignment.centerLeft,
      margin: margin,
      width: width,
      child: TextField(
        enabled: enable,
        textAlign: TextAlign.left,
        maxLines: 1,
        style: TextStyle(
          fontSize: 16,
          fontFamily: 'RR',
          color: Color(0xff7F7F7F),
        ),
        decoration: InputDecoration(
          fillColor: Color(0xffff0000),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: BorderSide(color: Color(0xffE4E4E4))),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorUtil.themeColor),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          border: InputBorder.none,
          errorBorder: InputBorder.none,
          focusedErrorBorder: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(
              fontSize: 15, fontFamily: 'RR', color: Color(0xffB6B6B6)),
          prefixIcon: img.isEmpty
              ? Container(
                  height: 0,
                  width: 0,
                )
              : Container(
                  margin: EdgeInsets.only(
                    left: 0,
                  ),
                  alignment: Alignment.center,
                  child: Image.asset(
                    img,
                    width: 20,
                    color: Color(0xffB6B6B6),
                    fit: BoxFit.cover,
                  ),
                ),
          contentPadding:
              EdgeInsets.symmetric(vertical: enable ? 5 : 10, horizontal: 0),
          prefixIconConstraints: BoxConstraints(
              maxHeight: 50,
              maxWidth: img.isEmpty ? 20 : 50,
              minWidth: img.isEmpty ? 20 : 40,
              minHeight: 40),
          suffixIcon: Sufimg.isEmpty
              ? Container(
                  height: 0,
                  width: 0,
                )
              : Container(
                  margin: EdgeInsets.only(
                    right: 15,
                  ),
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => FilterItems()),
                        // );
                      },
                      child: Image.asset(
                        Sufimg ?? "",
                        width: 20,
                        color: Color(0xffB6B6B6),
                        fit: BoxFit.cover,
                      )),
                ),
          suffixIconConstraints: BoxConstraints(
              maxHeight: 50,
              maxWidth: Sufimg.isEmpty ? 20 : 50,
              minWidth: Sufimg.isEmpty ? 20 : 40,
              minHeight: 40),
        ),
      ),
    );
  }
}
