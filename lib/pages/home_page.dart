import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter_app/main.dart';

import '../provider/listProvider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final providerList = Provider.of<ListProvider>(context);
    // TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 70, left: 20),
            child: Row(
              children: [
                const Icon(Icons.menu, size: 30, color: Colors.black54),
                Expanded(child: Container()),
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.blue[100],
                      borderRadius: BorderRadius.circular(8.0)),
                  child: Image.asset(
                    "assets/images/profile.png",
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 25,
          ),
          //tababr
          // Container(
          //   child: Align(
          //     alignment: Alignment.centerLeft,
          //     child: TabBar(
          //         labelPadding: const EdgeInsets.only(left: 20, right: 20),
          //         controller: _tabController,
          //         labelColor: Colors.black,
          //         unselectedLabelColor: Colors.grey,
          //         isScrollable: true,
          //         indicatorSize: TabBarIndicatorSize.label,
          //         tabs: const [
          //           Center(child: Tab(text: "Notes")),
          //           Center(child: Tab(text: "Todo")),
          //           Center(child: Tab(text: "Blog")),
          //         ]),
          //   ),
          // ),
          // Container(
          //   padding: const EdgeInsets.only(left: 20),
          //   height: 300,
          //   width: double.maxFinite,
          //   child: TabBarView(controller: _tabController, children: [
          //     Text("Welcome to Notes List "),
          //     Text("Welcome to ToDo List"),
          //     Text("Welcome to  My Blog"),
          //   ]),
          // ),

          Expanded(
            child: GridView.builder(
                itemCount: providerList.dataList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 4.0,
                    mainAxisSpacing: 4.0),
                itemBuilder: (context, index) {
                  return Text(
                    providerList.dataList[index].description,
                  );
                }),
          )
        ],
      ),
    );
  }
}
