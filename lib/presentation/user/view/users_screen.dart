import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store_rest_api/model/UsersModel.dart';
import 'package:store_rest_api/presentation/home_screen/constants/constant.dart';
import 'package:store_rest_api/presentation/resources/strings_manager.dart';
import 'package:store_rest_api/presentation/user/widget/user_widget.dart';

import '../../../services/api/api_handler.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen({Key? key}) : super(key: key);

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.users),
        ),
        body: FutureBuilder<List<UsersModel>>(
            future: APIHandler.getUsers(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.data == null) {
                return const Center(
                  child: Text('No Products added Yet'),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text('an error occurred ${snapshot.error}'),
                );
              }
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (ctx, index) {
                  return ChangeNotifierProvider.value(
                    value: snapshot.data![index],
                    child:  const UserWidget(),
                  );
                },
              );
            }));
  }
}