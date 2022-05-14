import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wall_pic_app/base/enums/request_status.dart';
import 'package:wall_pic_app/config/constans.dart';
import 'package:wall_pic_app/ui/presenters/home_page/home_page_cubit.dart';
import 'package:wall_pic_app/ui/presenters/home_page/home_page_state.dart';
import 'package:wall_pic_app/ui/presenters/home_page/image_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider<HomePageCubit>(
          create: (_) => HomePageCubit(HomePageState())..getPhotoList(1),
          child: BlocConsumer<HomePageCubit, HomePageState>(
            listener: (context, state) {
              if (state.requestStatus == AsyncRequestStatus.error) {
                showSnackBar(context, true, 'error,');
              }
            },
            builder: (context, state) => Column(
              children: [
                _appBar(),
                SizedBox(
                  height: 20.h,
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    margin: EdgeInsets.fromLTRB(
                      16.w,
                      0,
                      16.w,
                      16.h,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: state.requestStatus ==
                              AsyncRequestStatus.submitting
                          ? Center(
                              child: CircularProgressIndicator(
                                color: Colors.black,
                              ),
                            )
                          : state.photos != null
                              ? ImageList(
                                  state: state,
                                )
                              : SizedBox(
                                  child: Center(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(
                                          Icons
                                              .signal_cellular_connected_no_internet_4_bar_sharp,
                                          size: 140,
                                        ),
                                        RichText(
                                          text: new TextSpan(
                                            children: [
                                              new TextSpan(
                                                text: 'Try again ...',
                                                style: new TextStyle(
                                                  color: Colors.blue,
                                                  overflow: TextOverflow.clip,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 34
                                                ),
                                                recognizer:
                                                    new TapGestureRecognizer()
                                                      ..onTap = () {
                                                        context
                                                            .read<HomePageCubit>()
                                                            .getPhotoList(1);
                                                      },
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container _appBar() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 8.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
        shape: BoxShape.rectangle,
        color: HexColor('#FFFFFF'),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0.0, 6.0),
            blurRadius: 20.0,
            spreadRadius: 0,
            color: Colors.black12,
          ),
        ],
      ),
      child: Image.asset(
        'assets/icons/logo_text.png',
        height: 40.h,
      ),
    );
  }
}
