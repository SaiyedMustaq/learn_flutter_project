import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:learn_flutter/color/ColorPlate.dart';
import 'package:learn_flutter/widgets/BaseWidget.dart';
import 'package:learn_flutter/widgets/info_cart.dart';


//get device details
/**https://medium.com/flutter-community/the-best-flutter-responsive-ui-pattern-ba52875d70cd**/
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseWidget(builder: (context, sizeingInformation) {
      return Scaffold(
        appBar: buildAppBar(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                sizeingInformation.toString(),
                style: TextStyle(fontSize: 25),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: conPrimaryColor.withOpacity(0.10),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)),
                ),
                child: Wrap(
                  runSpacing: 10,
                  spacing: 25,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 12, bottom: 0, top: 10),
                      child: InfoChart(
                        title: "Confirmed Case",
                        iconColor: Color(0xFF88FC00),
                        effectedNum: 1258,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 12, bottom: 10, top: 10),
                      child: InfoChart(
                        title: "Total Death",
                        iconColor: Color(0xFF882D55),
                        effectedNum: 75,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 12, bottom: 20, top: 0),
                      child: InfoChart(
                        title: "Total Recover",
                        iconColor: Color(0xFF5856C),
                        effectedNum: 689,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 12, bottom: 10, top: 0),
                      child: InfoChart(
                        title: "New Case",
                        iconColor: Color(0xFF5856DC),
                        effectedNum: 65,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Preventions",
                        style: Theme.of(context)
                            .textTheme
                            .title
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      buildRowPreventions(),
                      HelpCard()
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      );
    });
  }

  Row buildRowPreventions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Preventions(
            svgSrc: "assets/hand_washing.svg",
            mHeight: 60,
            mWidth: 50,
            title: "Wash Hand"),
        Preventions(
            svgSrc: "assetsface_mask.svg",
            mHeight: 60,
            mWidth: 50,
            title: "Face Mask"),
        Preventions(
          svgSrc: "assets/clean.svg",
          title: "Clean Disinfect",
          mHeight: 60,
          mWidth: 50,
        )
      ],
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: conWhiteColor,
      leading: IconButton(
        icon: SvgPicture.asset(
          "assets/menu.svg",
          height: 30,
          width: 30,
          color: Colors.green[800],
        ),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          iconSize: 12.0,
          icon: SvgPicture.asset(
            "assets/search.svg",
            height: 30,
            width: 30,
            color: Colors.green[800],
          ),
          onPressed: () {},
        )
      ],
    );
  }
}

class HelpCard extends StatelessWidget {
  const HelpCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      height: 150,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * .4,
                top: 20,
                right: 20),
            height: 130,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xFF60B203), Color(0xFF1B5895)]),
                borderRadius: BorderRadius.circular(20)),
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "Dial 911 for \nMedical help \n",
                    style: Theme.of(context)
                        .textTheme
                        .title
                        .copyWith(color: Colors.white)),
                TextSpan(
                    text: "If any symtoms appear",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(color: Colors.white)),
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: SvgPicture.asset(
              "assets/bonnet.svg",
              height: 100,
              width: 100,
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child:
                SvgPicture.asset("assets/bacteria.svg", height: 50, width: 50),
          )
        ],
      ),
    );
  }
}

class Preventions extends StatelessWidget {
  final String svgSrc;
  final String title;
  final double mHeight;
  final double mWidth;

  const Preventions(
      {Key key, this.svgSrc, this.title, this.mHeight, this.mWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          SvgPicture.asset(svgSrc, height: mHeight, width: mWidth),
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .body2
                .copyWith(color: conPrimaryColor),
          )
        ],
      ),
    );
  }
}
