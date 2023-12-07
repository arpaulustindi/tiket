import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gap/gap.dart';
import 'package:tiket/utils/app_layout.dart';
import 'package:tiket/utils/app_styles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(20),
              vertical: AppLayout.getHeight(20)),
          children: [
            Gap(AppLayout.getHeight(40)),
            Text("Hai\nmau ke mana?",
                style: Styles.headLineStyle1
                    .copyWith(fontSize: AppLayout.getHeight(35))),
            Gap(AppLayout.getHeight(40)),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                      Radius.circular(AppLayout.getHeight(50))),
                  color: const Color(0xFFF4F6FD)),
              child: Row(
                children: [
                  Container(
                      width: size.width * 0.44,
                      padding: EdgeInsets.symmetric(
                          vertical: AppLayout.getHeight(17)),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(AppLayout.getHeight(50))),
                          color: Colors.white),
                      child: Center(
                        child: Text(
                          "Kapal",
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.black),
                        ),
                      )),
                  Container(
                      width: size.width * 0.44,
                      padding: EdgeInsets.symmetric(
                          vertical: AppLayout.getHeight(17)),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(AppLayout.getHeight(50))),
                      ),
                      child: Center(
                        child: Text(
                          "Hotel",
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.grey),
                        ),
                      ))
                ],
              ),
            ),
            Gap(AppLayout.getHeight(20)),
            Container(
              padding: EdgeInsets.all(AppLayout.getHeight(15)),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                      Radius.circular(AppLayout.getHeight(15)))),
              child: Row(
                children: [
                  const Icon(Icons.directions_boat),
                  Gap(AppLayout.getWidth(10)),
                  Text(
                    "Berangkat",
                    style: Styles.headLineStyle3.copyWith(color: Colors.black),
                  )
                ],
              ),
            ),
            Gap(AppLayout.getHeight(15)),
            Container(
              padding: EdgeInsets.all(AppLayout.getHeight(15)),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                      Radius.circular(AppLayout.getHeight(15)))),
              child: Row(
                children: [
                  const Icon(Icons.location_city),
                  Gap(AppLayout.getWidth(10)),
                  Text(
                    "Tiba",
                    style: Styles.headLineStyle3.copyWith(color: Colors.black),
                  )
                ],
              ),
            ),
            Gap(AppLayout.getHeight(30)),
            //ticket btn
            InkWell(
              onTap: () {
                Fluttertoast.showToast(
                    msg: "Temukan Tiket", toastLength: Toast.LENGTH_SHORT);
              },
              child: Container(
                padding: EdgeInsets.all(AppLayout.getHeight(20)),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(
                        Radius.circular(AppLayout.getHeight(15)))),
                child: Center(
                    child: Text(
                  "Temukan Tiket",
                  style: Styles.headLineStyle3.copyWith(color: Colors.white),
                )),
              ),
            ),
            Gap(AppLayout.getHeight(30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Jadwal Keberangkatan",
                    style: Styles.headLineStyle2.copyWith(color: Colors.black)),
                Text(
                  "Lihat semua",
                  style: Styles.headLineStyle3,
                )
              ],
            ),
            Gap(AppLayout.getHeight(30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: AppLayout.getHeight(400),
                  padding: EdgeInsets.all(AppLayout.getHeight(15)),
                  width: size.width * 0.42,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                          Radius.circular(AppLayout.getHeight(15)))),
                  child: Column(
                    children: [
                      Container(
                        height: AppLayout.getHeight(190),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeight(12)),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/sit.jpg"))),
                      ),
                      Gap(AppLayout.getHeight(8)),
                      Text(
                        "Diskon 20% untuk pembelian Kamar KM Saint Marry ",
                        style:
                            Styles.headLineStyle2.copyWith(color: Colors.black),
                      )
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: AppLayout.getHeight(200),
                          width: size.width * 0.44,
                          padding: EdgeInsets.all(AppLayout.getHeight(15)),
                          decoration: BoxDecoration(
                              color: const Color(0xFF3ABBBB),
                              borderRadius: BorderRadius.all(
                                  Radius.circular(AppLayout.getHeight(15)))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Megaria",
                                style: Styles.headLineStyle2
                                    .copyWith(color: Colors.white),
                              ),
                              Gap(AppLayout.getHeight(8)),
                              Text(
                                "Diskon dengan Megaria card",
                                style: Styles.headLineStyle2.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          right: -40,
                          top: -20,
                          child: Container(
                            padding: EdgeInsets.all(AppLayout.getHeight(25)),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 18, color: const Color(0xFF189999))),
                          ),
                        )
                      ],
                    ),
                    Gap(AppLayout.getHeight(15)),
                    Stack(
                      children: [
                        Container(
                          height: AppLayout.getHeight(200),
                          width: size.width * 0.44,
                          padding: EdgeInsets.all(AppLayout.getHeight(15)),
                          decoration: BoxDecoration(
                              color: Colors.deepOrange,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(AppLayout.getHeight(15)))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Bank BNI",
                                style: Styles.headLineStyle2
                                    .copyWith(color: Colors.white),
                              ),
                              Gap(AppLayout.getHeight(8)),
                              Text(
                                "Diskon dengan pembelian melalui BNI",
                                style: Styles.headLineStyle2.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          right: -40,
                          top: -20,
                          child: Container(
                            padding: EdgeInsets.all(AppLayout.getHeight(25)),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 18, color: Colors.deepOrangeAccent)),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
