import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding/constants.dart';

class SubsidyItem extends StatelessWidget {
  const SubsidyItem({
    Key? key,
    required this.index,
    required this.subsidyList,
  }) : super(key: key);

  final int index;
  final List<Subsidy> subsidyList;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        // Navigator.push(
        //     context,
        //     PageTransition(
        //         child: DetailPage(
        //           plantId: subsidyList[index].plantId,
        //         ),
        //         type: PageTransitionType.bottomToTop));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Constants.primaryColor.withOpacity(.1),
          borderRadius: BorderRadius.circular(10),
        ),
        height: 80.0,
        padding: const EdgeInsets.only(left: 10, top: 10),
        margin: const EdgeInsets.only(bottom: 10, top: 10),
        width: size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 80.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                    color: Constants.primaryColor.withOpacity(.8),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipOval(
                        child: CachedNetworkImage(
                          imageUrl: subsidyList[index].imageURL,
                          // width: 70,
                          // height: 70,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                  ),
                ),
                // Positioned(
                //   bottom: 5,
                //   left: 0,
                //   right: 0,
                //   child: SizedBox(
                //     height: 80.0,
                //     width: 50,
                //     child: ClipOval(
                //       child: Image.network(
                //         subsidyList[index].imageURL,
                //         width: 80,
                //         height: 80,
                //       ),
                //     ),
                //   ),
                // ),
                Positioned(
                  bottom: 5,
                  left: 80,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        subsidyList[index].description.substring(0, 20) + '...',
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        subsidyList[index].name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Constants.blackColor,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // Container(
            //   padding: const EdgeInsets.only(right: 10),
            //   child: Text(
            //     '₹' + subsidyList[index].amount,
            //     style: TextStyle(
            //       fontWeight: FontWeight.bold,
            //       fontSize: 18.0,
            //       color: Constants.primaryColor,
            //     ),
            //     overflow: TextOverflow.ellipsis,
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
