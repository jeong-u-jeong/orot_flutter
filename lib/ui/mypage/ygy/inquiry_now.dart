import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:orot/controller/mypage/alarm_list_controller.dart';
// import 'package:orot/controller/mypage/inquiry/inquiry_now_controller.dart';

import 'package:orot/controller/register/welcome_to_new_controller.dart';
import 'package:orot/global_asset/app_less_back.dart';
import 'package:orot/global_asset/common.dart';
import 'package:orot/global_asset/global_style.dart';
import 'package:orot/global_asset/app_center_title.dart';
import 'package:orot/ui/mypage/notice/notice_list.dart';


class InquiryNowPage extends GetView<NoticeList> {
  const InquiryNowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 24.h, bottom: 48.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InputForm(
              txt: '성함',
              hint: '본명을 입력하세요',
              color: Colors.transparent,
            ),
            InputForm(
              txt: '이메일',
              hint: '이메일을 입력하세요',
              color: GlobalStyle.orot_primary,
            ),

            CategoryForm(),

            InputForm(
              txt: '제목',
              hint: '제목을 입력하세요',
              color: GlobalStyle.orot_primary,
            ),




            Padding(
              padding: EdgeInsets.only(top: 24.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('내용', style: TextStyle(
                    color: GlobalStyle.orot_black,
                    fontSize: 16.sp,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w600,
                  ),),
                  Container(
                    margin: EdgeInsets.only(top: 5.h, left: 3.w),
                    width: 4.w,
                    height: 4.h,
                    decoration: BoxDecoration(
                      color: GlobalStyle.orot_primary,
                      shape: BoxShape.circle,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 8.h),
              height: 187.h,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: GlobalStyle.orot_gray_lightest,
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: TextField(
                // onChanged: (value) {
                //   // controller.onNameChange(value);
                // },
                textAlignVertical: TextAlignVertical.top,
                expands: true,
                maxLines: null,
                style: GlobalStyle.setTextStyle(
                    'h6', 'regular', GlobalStyle.orot_black),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 24.w),
                  counterText: '',
                  border: InputBorder.none,
                  hintText: '내용을 입력해주세요',
                  hintStyle: TextStyle(
                    color: GlobalStyle.orot_gray_dark,
                    fontSize: 16.sp,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),



            Container(height: 24.h,),
            Text('첨부파일', style: TextStyle(
                fontSize: 16.sp,
                color: GlobalStyle.orot_black
            ),),
            Text('이미지 파일(GIF, PNG, JPG)을 기준으로 최대 00MB이하,', style: TextStyle(
                fontSize: 12.sp,
                color: GlobalStyle.orot_gray_darkest
            ),),
            Text('최대 3개까지 등록 가능합니다.', style: TextStyle(
                fontSize: 12.sp,
                color: GlobalStyle.orot_gray_darkest
            ),),

            Container( // **-----------이미지 업로드------------- **
              margin: EdgeInsets.only(top: 8.h),
              height: 48.h,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: GlobalStyle.orot_gray_lightest,
                borderRadius: BorderRadius.circular(24.0),
              ),
            ),

            Info(
                title: '운영시간',
                subtitle: '평일 10:00 - 18:00',
                endtitle: '점심시간 12:00 - 13:00 / 토,일,공휴일 휴무'
            ),
            Info(
                title: '상담 이용방법',
                subtitle: '진행 중인 문의가 많을 경우 응답이 지연될 수 있습니다.',
                endtitle: '최대한 빠르게 도움 드릴 수 있도록 노력하겠습니다.'
            ),

            Container(height: 24.h,),
            Term(),

            GestureDetector(
              onTap: () {

              },
              child: Container(
                margin: EdgeInsets.only(top: 24.h),
                width: double.infinity,
                height: 48.h,
                decoration: BoxDecoration(
                  color: GlobalStyle.orot_gray_dark,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Center(child: Text('문의')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class InputForm extends StatelessWidget {
  const InputForm({Key? key, required this.txt, required this.hint, required this.color}) : super(key: key);

  final String txt, hint;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 24.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(txt,
                style: TextStyle(
                  color: GlobalStyle.orot_black,
                  fontSize: 16.sp,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w600,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5.h, left: 3.w),
                width: 4.w,
                height: 4.h,
                decoration: BoxDecoration(
                  color: color,
                  shape: BoxShape.circle,
                ),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 8.h),
          height: 48.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: GlobalStyle.orot_gray_lightest,
            borderRadius: BorderRadius.circular(25.r),
          ),
          child: TextField(
            // onChanged: (value) {
            //   // controller.onNameChange(value);
            // },
            textAlign: TextAlign.left,
            maxLength: 10,
            style: TextStyle(
              color: GlobalStyle.orot_black,
              fontSize: 16.sp,
              fontFamily: 'Pretendard',
              fontWeight: FontWeight.w500,
            ),
            // GlobalStyle.setTextStyle(
            //     'h6', 'regular', GlobalStyle.orot_black),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 24.w),
              counterText: '',
              border: InputBorder.none,
              hintText: hint,
              hintStyle: TextStyle(
                color: GlobalStyle.orot_gray_dark,
                fontSize: 16.sp,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }
}


class CategoryForm extends StatefulWidget {
  const CategoryForm({Key? key}) : super(key: key);

  @override
  State<CategoryForm> createState() => _CategoryFormState();
}

class _CategoryFormState extends State<CategoryForm> {
  // String dropdownvalue = '건강기록';
  String? dropdownvalue;

  var category = [
    '건강기록',
    '감정기록',
    '식단기록',
    '고위험 임산부',
    '임산부',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 24.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('카테고리', style: TextStyle(
                color: GlobalStyle.orot_black,
                fontSize: 16.sp,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w600,
              ),),
              Container(
                margin: EdgeInsets.only(top: 5.h, left: 3.w),
                width: 4.w,
                height: 4.h,
                decoration: BoxDecoration(
                  color: GlobalStyle.orot_primary,
                  shape: BoxShape.circle,
                ),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 8.h),
          height: 48.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: GlobalStyle.orot_gray_lightest,
            borderRadius: BorderRadius.circular(24.0),
          ),
          child: DropdownButton(
            hint: Padding(
              padding: EdgeInsets.only(left: 24.w),
              child: Text('선택 안 함', style: TextStyle(
                color: GlobalStyle.orot_gray_dark,
                fontSize: 16.sp,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w500,
              ),),
            ),
            value: dropdownvalue,
            icon: Padding(
              padding: EdgeInsets.only(right: 24.w),
              child: Icon(Icons.keyboard_arrow_down),
            ),
            items: category.map((String items) {
              return DropdownMenuItem(
                value: items,
                child: Padding(
                  padding: EdgeInsets.only(left: 24.w),
                  child: Text(items, style: TextStyle(
                      color: GlobalStyle.orot_gray_dark,
                      fontSize: 16.sp,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w500,
                  ),),
                ),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                dropdownvalue = newValue ?? "";
              });
            },
            isExpanded: true,
            underline: Container(),
            style: TextStyle(
                fontSize: 16.sp,
                color: GlobalStyle.orot_black,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w500,
            ),
            dropdownColor: GlobalStyle.orot_gray_lightest,
            iconEnabledColor: GlobalStyle.orot_gray_dark,
          ),
        ),
      ],
    );
  }
}







class Info extends StatelessWidget {
  const Info({Key? key, required this.title, required this.subtitle, required this.endtitle}) : super(key: key);

  final String title, subtitle, endtitle;


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(height: 24.h,),
        Text(title, style: TextStyle(
          fontSize: 16.sp,
          color: GlobalStyle.orot_black,
        ),),
        Text(subtitle, style: TextStyle(
            fontSize: 12.sp,
            color: GlobalStyle.orot_gray_darkest
        ),),
        Text(endtitle, style: TextStyle(
            fontSize: 12.sp,
            color: GlobalStyle.orot_gray_darkest
        ),),
      ],
    );
  }
}


class Term extends StatefulWidget {
  const Term({Key? key}) : super(key: key);

  @override
  State<Term> createState() => _TermState();
}

class _TermState extends State<Term> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 1,
          child: GestureDetector(
            onTap: () {

            },
            child: Container(
                child: Icon(Icons.check_rounded, color: GlobalStyle.orot_gray_light, size: 24.sp,)
            ),
          ),
        ),
        Expanded(
          child: Flexible(
            flex: 6,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 5,
                  child: Container(
                      child: Text(' [필수] 개인정보 수집 및 이용약관 동의', style: TextStyle(
                          fontSize: 14.sp,
                          color: GlobalStyle.orot_gray_darkest
                      ),)
                  ),
                ),
                GestureDetector(
                  onTap: () {

                  },
                  child: Flexible(
                    flex: 1,
                    child: Container(
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: GlobalStyle.orot_gray_darkest,
                        size: 16.sp,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

