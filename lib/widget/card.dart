import 'package:e_chardham_yatra/pages/DetailPage.dart';
import 'package:e_chardham_yatra/values/dimens.dart';
import 'package:e_chardham_yatra/widget/title.dart';
import 'package:flutter/material.dart';
import 'package:e_chardham_yatra/place_data.dart';

class DestinationCard extends StatelessWidget {
  Place place;
  DestinationCard({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      color: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimens.cornerRadius)),
      child: InkWell(
          borderRadius: BorderRadius.circular(AppDimens.cornerRadius),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailPage(place: place)));
          },
          child: Column(children: [
            Container(
              margin: const EdgeInsets.all(4),
              height: AppDimens.cardHeight,
              width: AppDimens.cardWidth,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(AppDimens.cornerRadius),
                  child: Hero(
                      tag: place.tag,
                      child: Image.asset(
                        place.displayImage,
                        fit: BoxFit.cover,
                      ))),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppDimens.cornerRadius)),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              smallTitle(place.title),
              const SizedBox(
                width: 10,
              ),
              // ClipRRect()
              //   borderRadius: BorderRadius.circular(8),
              //   child: Material(
              //     color: Colors.blue[100],
              //     child: InkWell(
              //       child: const Padding(
              //         padding: EdgeInsets.all(0),
              //         child: Icon(
              //           Icons.arrow_right_sharp,
              //         ),
              //       ),
              //       onTap: () {
              //         Navigator.push(
              //             context,
              //             MaterialPageRoute(
              //                 builder: (context) => DetailPage(place: place)));
              //       },
              //     ),
              //   ),
              // )
            ])
          ])),
    );
  }
}
