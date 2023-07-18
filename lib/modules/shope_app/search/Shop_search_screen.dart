import 'package:f_project/layout/shope_app/cubit/cubit.dart';
import 'package:f_project/layout/shope_app/cubit/states.dart';
import 'package:f_project/shared/components/components.dart';
import 'package:f_project/shared/styles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShopSearchScreen extends StatelessWidget {
  var searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return BlocConsumer<ShopAppCubit,ShopAppStates>(
      listener: (context,state){},
      builder: (context,state){
       // var cubit = ShopAppCubit.getHomeCubit(context);
//        var list = ShopAppCubit.getHomeCubit(context).searchFilter;

        return Scaffold(
          appBar: AppBar(
            title: Text('salla'),
          ),
          body:  Column(
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: TextFormField(
                  style: TextStyle(
                    color: defaultColor,
                  ),
                  controller: searchController,
                  keyboardType: TextInputType.text,
                  validator: (value){
                    if(value!.isEmpty){
                     return "Field can't be empty";
                    }
                    return null;
                  },
                    onChanged: (value){
//                    cubit.getDataSearch(value);
                    },
                  decoration: InputDecoration(
                    fillColor: defaultColor,
                      labelText: 'Search',
                    labelStyle: TextStyle(
                      color: defaultColor
                    ),
                    hoverColor: Colors.green,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                      ),
                  )
                  ),
              ),
              // Expanded(
              //     child: listView(list,isSearch: true)
              // )
            ],
          ),
        );
      }
    );
  }
}
