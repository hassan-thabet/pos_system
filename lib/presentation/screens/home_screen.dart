import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:pos_system/presentation/widgets/custom_statistics_card.dart';

import '../widgets/custom_list_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  getFormattedDate(_date) {
    var inputFormat = DateFormat('yyyy-MM-dd HH:mm');
    var inputDate = inputFormat.parse(_date);
    var outputFormat = DateFormat('dd-MM-yyyy');
    return outputFormat.format(inputDate);
  }

  @override
  Widget build(BuildContext context) {
    //double width = MediaQuery.of(context).size.width;
    //double height = MediaQuery.of(context).size.height;

    return Scaffold(
      //backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Store Name',
          style: TextStyle(
              fontFamily: 'Handlee',
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Center(
                child: Text(
              getFormattedDate(DateTime.now().toString()) +
                  ' - ' +
                  DateFormat.jm().format(DateTime.now()),
              style: const TextStyle(fontSize: 18.0),
            )),
          ),
        ],
        elevation: 0.0,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: Center(
                child: Column(
                  children: const [
                    CircleAvatar(
                      radius: 52,
                      foregroundImage:
                          AssetImage("assets/images/user_image.jpg"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Username'),
                  ],
                ),
              ),
            ),
            const CustomListTile('Dashboard', Icons.home_outlined),
            const CustomListTile('Reports', Icons.receipt_long_rounded),
            const CustomListTile('Categories', Icons.category_outlined),
            const CustomListTile('Products', Icons.widgets_outlined),
            const CustomListTile(
                'Inventory Management', Icons.inventory_2_outlined),
            const CustomListTile('Price Rules', Icons.monetization_on_outlined),
            const CustomListTile('Gift Cards', Icons.card_giftcard),
            const Divider(),
            const CustomListTile('Customers', Icons.group_outlined),
            const CustomListTile('Employees', Icons.account_circle_outlined),
            const Divider(),
            const CustomListTile('Settings', Icons.settings_outlined),
            const CustomListTile('Logout', Icons.login),
          ],
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CustomStatisticsCard('Total Sales', '23',
                      Icons.add_shopping_cart_outlined, Colors.blueAccent),
                  CustomStatisticsCard(
                      'Products', '14', Icons.stream, Colors.redAccent),
                  CustomStatisticsCard(
                      'Inventory', '2', Icons.details, Colors.amber),
                  CustomStatisticsCard('Total Sales', '3341 LE',
                      Icons.dashboard_rounded, Colors.green),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
