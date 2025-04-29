import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketView({super.key,required this.ticket});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: AppLayout.getHeight(context, 200),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(context, 16)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /*To show the black or grey part idk of the card ticket*/
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF2d2d2b),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppLayout.getHeight(context,21)),
                  topRight: Radius.circular(AppLayout.getHeight(context,21)),
                ),
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(context,16)),
              child: Column(
                children: [
                  Row(
                    //2d2d2b
                    children: [
                      Text(
                        ticket['from']['code'],
                        style: Styles.headlineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      Expanded(child: Container()),
                      ThickContainer(),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: AppLayout.getHeight(context,24),
                              child: LayoutBuilder(
                                builder: (
                                  BuildContext context,
                                  BoxConstraints constraints,
                                ) {
                                  print(
                                    "The width is ${constraints.constrainWidth()}",
                                  );
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                      (constraints.constrainWidth() / 6)
                                          .floor(),
                                      (index) => SizedBox(
                                        width: 3,
                                        height: 1,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      ThickContainer(),
                      Expanded(child: Container()),
                      Text(
                        ticket['to']['code'],
                        style: Styles.headlineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Gap(1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(context,100),
                        child: Text(
                          ticket['from']['name'],
                          style: Styles.headlineStyle4.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Text(
                        ticket['flying_time'],
                        style: Styles.headlineStyle4.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(context,100),
                        child: Text(
                          ticket['to']['name'],
                          textAlign: TextAlign.end,
                          style: Styles.headlineStyle4.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            /*Now to show the remaining part of the card ticket*/
            Container(
              
              decoration: BoxDecoration(
                color: Color(0xFFD3D3D3),
                // borderRadius: BorderRadius.only(
                //   bottomRight: Radius.circular(21),
                //   bottomLeft: Radius.circular(21),
                // ),
              ),

              // Add child widgets here
              child: Row(
                children: [
                  
                  SizedBox(
                    height: AppLayout.getHeight(context,20),
                    width: AppLayout.getWidth(context,10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Color(0xFFeeedf2),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(AppLayout.getHeight(context,20)),
                          bottomRight: Radius.circular(AppLayout.getHeight(context,20)),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: LayoutBuilder(
                        builder: (
                          BuildContext context,
                          BoxConstraints constraints,
                        ) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) => SizedBox(
                                width: AppLayout.getWidth(context,5),
                                height: AppLayout.getHeight(context,1),
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: Styles.blackColor,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                    width: 15,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Color(0xFFeeedf2),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(AppLayout.getHeight(context,20)),
                          bottomLeft: Radius.circular(AppLayout.getHeight(context,20)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            /* bottom part of the container*/
            Container(
              
              decoration: BoxDecoration(
                color: Color(0xFFD3D3D3),
                border: Border(
                  left: BorderSide(color: Color(0xFF2d2d2b), width: AppLayout.getHeight(context,2)),
                  right: BorderSide(color: Color(0xFF2d2d2b), width: AppLayout.getHeight(context,2)),
                  bottom: BorderSide(color: Color(0xFF2d2d2b), width: AppLayout.getHeight(context,2)),
                ),
                
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(AppLayout.getHeight(context,21)),
                  bottomRight: Radius.circular(AppLayout.getHeight(context,21)),
                ),
              ),
              padding: EdgeInsets.only(left:AppLayout.getHeight(context,16), top:AppLayout.getHeight(context,10), right: AppLayout.getHeight(context,16), bottom: AppLayout.getHeight(context,16)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ticket['date'],
                            style: Styles.headlineStyle3.copyWith(
                              color: Styles.blackColor,
                            ),
                          ),
                          Gap(5),
                          Text(
                            "Date",
                            style: Styles.headlineStyle4.copyWith(
                              color: Styles.blackColor,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            ticket['departure_time'],
                            style: Styles.headlineStyle3.copyWith(
                              color: Styles.blackColor,
                            ),
                          ),
                          Gap(5),
                          Text(
                            "Time",
                            style: Styles.headlineStyle4.copyWith(
                              color: Styles.blackColor,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            ticket['number'].toString(),
                            style: Styles.headlineStyle3.copyWith(
                              color: Styles.blackColor,
                            ),
                          ),
                          Gap(5),
                          Text(
                            "Number",
                            style: Styles.headlineStyle4.copyWith(
                              color: Styles.blackColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
