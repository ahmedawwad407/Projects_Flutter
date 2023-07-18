import 'package:f_project/layout/news_app/cubit/cubit.dart';
import 'package:f_project/layout/shope_app/cubit/cubit.dart';
import 'package:f_project/layout/shope_app/cubit/states.dart';
import 'package:f_project/modules/News_app/search_screen/search_screen.dart';
import 'package:f_project/shared/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShopSettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ShopAppCubit, ShopAppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = ShopAppCubit.getHomeCubit(context);
        return Scaffold(
          body: Center(
            child: Text(
              'Setting Screen',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ),
        );
      },
    );
  }
}
