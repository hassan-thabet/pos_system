import 'package:flutter/material.dart';

class CustomStatisticsCard extends StatelessWidget {
  final String title;
  final String count;
  final IconData iconData;
  final Color colorData;

  const CustomStatisticsCard(
      this.title, this.count, this.iconData, this.colorData,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      height: height / 6,
      width: width / 5,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(6),
          bottomLeft: Radius.circular(6),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: const TextStyle(
                    color: Colors.black87,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
              Text(
                count,
                style: const TextStyle(color: Colors.blue, fontSize: 22),
              ),
            ],
          )),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
              color: colorData,
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(6),
                  bottomRight: Radius.circular(6)),
            ),
            height: double.maxFinite,
            child: Icon(
              iconData,
              color: Colors.white,
            ),
          )),
        ],
      ),
    );
  }
}
