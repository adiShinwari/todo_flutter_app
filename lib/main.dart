import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter_app/nav_bar_pages.dart/main_page.dart';
import 'package:todo_flutter_app/provider/listProvider.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ListProvider(),
      child: const GetMaterialApp(
        title: "Todo App",
        debugShowCheckedModeBanner: false,
        home: MainPage(),
      ),
    );
  }
}
