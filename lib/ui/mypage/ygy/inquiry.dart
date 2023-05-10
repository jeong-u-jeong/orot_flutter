import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:orot/controller/mypage/alarm_list_controller.dart';
import 'package:orot/controller/mypage/notice_list_controller.dart';
// import 'package:orot/controller/mypage/inquiry/inquiry_controller.dart';

import 'package:orot/controller/register/welcome_to_new_controller.dart';
import 'package:orot/global_asset/app_less_back.dart';
import 'package:orot/global_asset/common.dart';
import 'package:orot/global_asset/global_style.dart';
import 'package:orot/global_asset/app_center_title.dart';
import 'package:orot/ui/mypage/ygy/inquiry_now.dart';
// import 'package:orot/ui/mypage/inquiry/inquiry_now.dart';


class InquiryPage extends GetView<NoticeListController> {
  const InquiryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: GestureDetector(
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: GlobalStyle.orot_black,
              size: 18.sp,
            ),
          ),
          bottom: TabBar(
            labelColor: GlobalStyle.orot_black,
            unselectedLabelColor: GlobalStyle.orot_gray_light,
            indicatorColor: GlobalStyle.orot_primary,
            tabs: [
              Tab(text: '문의하기'),
              Tab(text: '문의내역'),
            ],
          ),
          centerTitle: true,
          title:
          Text('1:1 문의하기', style: TextStyle(
            color: GlobalStyle.orot_black,
            fontSize: 18.sp,
          ),),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              InquiryNowPage(),
              Text('문의내역'),
            ],
          ),
        ),
      ),
    );
  }
}
