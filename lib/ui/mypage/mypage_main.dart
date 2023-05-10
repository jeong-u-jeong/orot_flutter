import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:orot/controller/mypage/mypage_main_controller.dart';
import 'package:orot/global_asset/app_less_back.dart';
import 'package:orot/global_asset/common.dart';
import 'package:orot/global_asset/global_style.dart';
import 'package:flutter_switch/flutter_switch.dart';

//PageId :li01010000p
class MypageMain extends GetView<MypageMainController> {
  MypageMain({Key? key}) : super(key: key);
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppLessBack(),
      body: SafeArea(
        bottom: false,
        child: Container(
          color: GlobalStyle.orot_bg,
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20.w, right: 20.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        // IoT
                        SvgPicture.asset(
                          'images/svg/lot.svg',
                        ),

                        GestureDetector(
                          child: Container(
                            alignment: Alignment.centerRight,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                            ),
                            height: 40.h,
                            width: 40.w,
                            child: SvgPicture.asset(
                              'images/svg/btn_nm_setting.svg',
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.centerRight,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                            ),
                            height: 40.h,
                            width: 40.w,
                            child: SvgPicture.asset(
                              'images/svg/btn_all_leave_medium.svg',
                            ),
                          ),
                        ),

                        // 사각형 3702
                      ],
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 8.h),
                      width: Get.width,
                      height: 3.h,
                      decoration: BoxDecoration(
                        color: GlobalStyle.orot_bg,
                        boxShadow: [
                          BoxShadow(
                              color: const Color(0xfff5f7fa),
                              offset: Offset(0, 1),
                              blurRadius: 3,
                              spreadRadius: 0)
                        ],
                      ))
                ],
              ),
              Expanded(
                  child: Container(
                height: Get.height,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 24.h),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 20.w, right: 20.w),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '김동국님\n오늘도 건강한 하루 보내세요!',
                                  style: GlobalStyle.setTextStyle(
                                      'h20',
                                      'semi_bold',
                                      GlobalStyle.orot_gray_darkest),
                                ),
                                Container(
                                  width: 48,
                                  height: 48,
                                  decoration: BoxDecoration(
                                    color: GlobalStyle.orot_gray_lighter,
                                    shape: BoxShape.circle,
                                  ),
                                )
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 16.h),
                            ),
                            Row(
                              children: [
                                // 사각형 3581
                                Container(
                                  width: 104,
                                  height: 24,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                    border: Border.all(
                                        color: GlobalStyle.orot_gray_lighter,
                                        width: 1),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        'images/svg/user.svg',
                                      ),
                                      Container(width: 2.w),
                                      Text(
                                        '내정보 확인',
                                        style: GlobalStyle.setTextStyle(
                                            'h8',
                                            'medium',
                                            GlobalStyle.orot_gray_darkest),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 8.w,
                                ),
                                Container(
                                  width: 104,
                                  height: 24,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                    border: Border.all(
                                        color: GlobalStyle.orot_gray_lighter,
                                        width: 1),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        'images/svg/siren.svg',
                                      ),
                                      Container(width: 2.w),
                                      Text(
                                        '응급상황 정보',
                                        style: GlobalStyle.setTextStyle(
                                            'h8',
                                            'medium',
                                            GlobalStyle.orot_gray_darkest),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Container(
                              height: 24.h,
                            ),
                            Container(
                              height: 88.w,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  border: Border.all(
                                      color: const Color(0xffcfdae6),
                                      width: 0.4000000059604645),
                                  color: GlobalStyle.orot_gray_lightest),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    child: Container(
                                      height: 1.sh,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          border: Border(
                                            right: BorderSide(
                                              // POINT
                                              color:
                                                  GlobalStyle.orot_gray_lighter,
                                              width: 0.4.w,
                                            ),
                                          ),
                                          color:
                                              GlobalStyle.orot_gray_lightest),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 14.h,
                                          ),
                                          SvgPicture.asset(
                                            'images/svg/ic_mp_local.svg',
                                          ),
                                          Container(
                                            height: 8.h,
                                          ),
                                          Text(
                                            '출산지원정보',
                                            style: GlobalStyle.setTextStyle(
                                                'h8',
                                                'semi_bold',
                                                GlobalStyle.orot_gray_darkest),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    child: Container(
                                      height: 1.sh,
                                      decoration: BoxDecoration(
                                          border: Border(
                                            right: BorderSide(
                                              // POINT
                                              color:
                                                  GlobalStyle.orot_gray_lighter,
                                              width: 0.4.w,
                                            ),
                                          ),
                                          color:
                                              GlobalStyle.orot_gray_lightest),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 14.h,
                                          ),
                                          SvgPicture.asset(
                                            'images/svg/ic_mp_bookmark.svg',
                                          ),
                                          Container(
                                            height: 8.h,
                                          ),
                                          Text(
                                            '북마크',
                                            style: GlobalStyle.setTextStyle(
                                                'h8',
                                                'semi_bold',
                                                GlobalStyle.orot_gray_darkest),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    child: Container(
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 14.h,
                                          ),
                                          SvgPicture.asset(
                                            'images/svg/ic_mp_checklist.svg',
                                          ),
                                          Container(
                                            height: 8.h,
                                          ),
                                          Text(
                                            '체크리스트',
                                            style: GlobalStyle.setTextStyle(
                                                'h8',
                                                'semi_bold',
                                                GlobalStyle.orot_gray_darkest),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 24.h),
                      ),
                      Container(
                          width: 1.sw,
                          height: 8,
                          decoration:
                              BoxDecoration(color: const Color(0xfff5f7fa))),
                      Container(
                        padding:
                            EdgeInsets.only(top: 26.h, left: 20.w, right: 20.w),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'images/svg/lock.svg',
                                  width: 14.w,
                                ),
                                Container(width: 1.w),
                                Text(
                                  '인증 및 보안',
                                  style: GlobalStyle.setTextStyle('h6',
                                      'medium', GlobalStyle.orot_gray_darker),
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 24.h),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text('앱 화면 잠금',
                                      style: GlobalStyle.setTextStyle('h4',
                                          'medium', GlobalStyle.orot_black)),
                                ),
                                FlutterSwitch(
                                  width: 32.0.w,
                                  height: 18.0.h,
                                  toggleSize: 14.0,
                                  value: status,
                                  borderRadius: 30.0,
                                  showOnOff: false,
                                  activeColor: GlobalStyle.orot_primary,
                                  inactiveColor: GlobalStyle.orot_gray_lighter,
                                  onToggle: (val) {
                                    setState(() {
                                      status = val;
                                    });
                                  },
                                )
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 24.h),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text('앱 잠금 비밀번호 변경',
                                      style: GlobalStyle.setTextStyle('h4',
                                          'medium', GlobalStyle.orot_black)),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 24.h),
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 24.h),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text('앱 잠금 생체인증 등록',
                                      style: GlobalStyle.setTextStyle('h4',
                                          'medium', GlobalStyle.orot_black)),
                                ),
                                FlutterSwitch(
                                  width: 32.0.w,
                                  height: 18.0.h,
                                  toggleSize: 14.0,
                                  value: status,
                                  borderRadius: 30.0,
                                  showOnOff: false,
                                  activeColor: GlobalStyle.orot_primary,
                                  inactiveColor: GlobalStyle.orot_gray_lighter,
                                  onToggle: (val) {
                                    setState(() {
                                      status = val;
                                    });
                                  },
                                )
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 24.h),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          width: 1.sw,
                          height: 8,
                          decoration:
                              BoxDecoration(color: const Color(0xfff5f7fa))),
                      Container(
                        padding:
                            EdgeInsets.only(top: 26.h, left: 20.w, right: 20.w),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'images/svg/customer-service.svg',
                                  width: 14.w,
                                ),
                                Container(width: 2.w),
                                Text(
                                  '고객센터',
                                  style: GlobalStyle.setTextStyle('h6',
                                      'medium', GlobalStyle.orot_gray_darker),
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 24.h),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text('공지사항',
                                  style: GlobalStyle.setTextStyle(
                                      'h4', 'medium', GlobalStyle.orot_black)),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 24.h),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text('사용설명 페이지',
                                  style: GlobalStyle.setTextStyle(
                                      'h4', 'medium', GlobalStyle.orot_black)),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 24.h),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text('고객지원',
                                  style: GlobalStyle.setTextStyle(
                                      'h4', 'medium', GlobalStyle.orot_black)),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 24.h),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text('앱정보',
                                  style: GlobalStyle.setTextStyle(
                                      'h4', 'medium', GlobalStyle.orot_black)),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 24.h),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text('서비스 해지',
                                  style: GlobalStyle.setTextStyle(
                                      'h4', 'medium', GlobalStyle.orot_black)),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 48.h),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}

void setState(Null Function() param0) {}
