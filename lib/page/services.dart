import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transcard/constants/app_textstyle.dart';
import 'package:transcard/constants/color_constants.dart';
import 'package:transcard/data/card_data.dart';
import 'package:transcard/widgets/my_card.dart';

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    // padding: EdgeInsets.all(20),
                    child: ListView.separated(
                        shrinkWrap: true,
                        itemCount: myCards.length,
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: 20,
                          );
                        },
                        itemBuilder: (context, index) {
                          return MyCard(
                            card: myCards[index],
                          );
                        }),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Недавние поездки",
                        style: GoogleFonts.montserrat(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Column(children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 72,
                          height: 72,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xffeff1f3)),
                          child: const Icon(Icons.directions_bus),
                        ),
                        Column(
                          children: [
                            Text(
                              "Автобус 71А",
                              style: GoogleFonts.montserrat(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            Text("28 Дек 2023 7:01",
                                style: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xff989898)))
                          ],
                        ),
                        Text("₽21",
                            style: GoogleFonts.montserrat(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.green))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 72,
                          height: 72,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xffeff1f3)),
                          child: const Icon(Icons.directions_bus),
                        ),
                        Column(
                          children: [
                            Text(
                              "Автобус 71А",
                              style: GoogleFonts.montserrat(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            Text("28 Дек 2023 15:23",
                                style: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xff989898)))
                          ],
                        ),
                        Text("₽21",
                            style: GoogleFonts.montserrat(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.green))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 72,
                          height: 72,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xffeff1f3)),
                          child: const Icon(Icons.directions_bus),
                        ),
                        Column(
                          children: [
                            Text(
                              "Автобус 71А",
                              style: GoogleFonts.montserrat(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            Text("28 Дек 2023 7:01",
                                style: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xff989898)))
                          ],
                        ),
                        Text("₽21",
                            style: GoogleFonts.montserrat(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.green))
                      ],
                    ),
                  ),
                ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
