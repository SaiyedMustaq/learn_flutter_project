import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:learn_flutter/color/ColorPlate.dart';

import 'line_chart.dart';


class InfoChart extends StatelessWidget {
  const InfoChart({
    Key key,
    this.title,
    this.effectedNum,
    this.iconColor,
  }) : super(key: key);

  final int effectedNum;
  final Color iconColor;
  final String title;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          width: constraints.maxWidth / 2 - 24,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(8)),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: iconColor.withOpacity(0.45),
                          shape: BoxShape.circle),
                      child: SvgPicture.asset(
                        "assets/running.svg",
                        height: 15,
                        width: 15,  
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(color: conTextColor),
                          children: [
                            TextSpan(
                                text: "$effectedNum \n",
                                style: Theme.of(context)
                                    .textTheme
                                    .display1
                                    .copyWith(fontWeight: FontWeight.bold)),
                            TextSpan(
                              text: "People",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  height: 2),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(child: LineReportChart())
                  ],
                ),
              ),
            ],
          ),
        );
      },
    ); 
  }
}