import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wall_pic_app/base/enums/request_status.dart';
import 'package:wall_pic_app/ui/router/router.dart';

import 'splash_cubit.dart';
import 'splash_state.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: BlocProvider<SplashCubit>(
          create: (_) => SplashCubit(SplashState())..startTimer(),
          child: Center(
            child: BlocListener<SplashCubit, SplashState>(
              listener: (context, state) {
                if(state.requestStatus == AsyncRequestStatus.success){
                  Navigator.of(context)
                      .pushReplacementNamed(AppRoutes.HOME_PAGE);
                }
              },
              child: Image.asset('assets/icons/logo.png',height: 200,),
            ),
          ),
        ),
      ),
    );
  }
}
