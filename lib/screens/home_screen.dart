import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gap/gap.dart';
import 'package:tiket/db/hotel_list.dart';
import 'package:tiket/screens/components/ticket_view.dart';
import 'package:tiket/utils/app_styles.dart';

import '../db/ticket_list.dart';
import 'components/HotelItemView.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const Gap(40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Tabea..",
                            style: Styles.headLineStyle3,
                          ),
                          const Gap(5),
                          Text("Pesan Tiket", style: Styles.headLineStyle1),
                        ],
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            image: const DecorationImage(
                                fit: BoxFit.fitHeight,
                                image: AssetImage("assets/images/img_1.png"))),
                      )
                    ],
                  ),
                  const Gap(25),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFF4F6FD)),
                    child: Row(
                      children: [
                        const Icon(FluentSystemIcons.ic_fluent_search_regular,
                            color: Color(0xFFBFC205)),
                        Text(
                          "Cari",
                          style: Styles.headLineStyle4,
                        )
                      ],
                    ),
                  ),
                  const Gap(40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Jadwal Kapal Terdekat",
                        style: Styles.headLineStyle2,
                      ),
                      InkWell(
                          onTap: () {
                            Fluttertoast.showToast(
                                msg: "Lihat seluruh jadwal keberangkatan",
                                toastLength: Toast.LENGTH_SHORT);
                          },
                          child: Text(
                            "Lihat semua",
                            style: Styles.textStyle
                                .copyWith(color: Styles.primaryColor),
                          ))
                    ],
                  )
                ],
              ),
            ),
            const Gap(8),
            SingleChildScrollView(
              padding: const EdgeInsets.only(left: 16),
              scrollDirection: Axis.horizontal,
              child: Row(
                children:
                    ticketList.map((e) => TicketView(tickets: e)).toList(),
              ),
            ),
            const Gap(15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hotel",
                    style: Styles.headLineStyle2,
                  ),
                  Text(
                    "Lihat Semua",
                    style: Styles.headLineStyle3,
                  ),
                ],
              ),
            ),
            const Gap(15),
            SingleChildScrollView(
                padding: const EdgeInsets.only(left: 16),
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: hotelList
                        .map((e) => HotelItemView(hotel: e))
                        .toList())),
            const Gap(20),
          ],
        ),
      ),
    );
  }
}
