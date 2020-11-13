import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constant/Contant.dart';
import '../widgets/CircleImageWidget.dart';
import '../widgets/ExpandableCardPanelWidget.dart';

class AboutTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  CircleImageWidget(),
                  Flexible(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Saiyed Mustaq",
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Mo:-7041702096",
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text(
                                'Skills : ',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontStyle: FontStyle.italic),
                                textScaleFactor: 2,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text(
                                'Java, Kotlin',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontStyle: FontStyle.italic),
                                textScaleFactor: 2,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text(
                                'Experiences : ',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontStyle: FontStyle.italic),
                                textScaleFactor: 2,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Text(
                              '2.2',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontStyle: FontStyle.italic),
                              textScaleFactor: 2,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              ExpandableCardPanelWidget(title: "Employee Information",subTitle: ""),
              ExpandableCardPanelWidget(title: "Key Skills",subTitle: ""),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: githubClick,
                    child: Card(
                      child: SocialButton(
                          image: "assets/github.png",
                          buttonText: "Github",
                          textColor: Colors.black),
                    ),
                  ),
                  InkWell(
                    onTap: linkdinClick,
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.all(0.8),
                        child: SocialButton(
                            image: "assets/linkedin.png",
                            buttonText: "Linkdin",
                            textColor: Colors.blue[900]),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: instagramClick,
                    child: Card(
                      child: SocialButton(
                          image: "assets/instagram.png",
                          buttonText: "Instagram",
                          textColor: Colors.pink),
                    ),
                  ),
                  InkWell(
                    onTap: facebookClick,
                    child: Card(
                      child: SocialButton(
                          image: "assets/facebook.png",
                          buttonText: "Facebook",
                          textColor: Colors.blue[600]),
                    ),
                  )
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
  void githubClick() async{
    if(await canLaunch(Constant.PROFILE_GITHUB)){
      await launch(Constant.PROFILE_GITHUB);

    }else{
      throw 'Could not launch ${""}';
    }
  }

  void linkdinClick() async{
    if(await canLaunch(Constant.PROFILE_GITHUB)){
          await launch(Constant.PROFILE_GITHUB);
    }else{
    throw 'Could not launch ${""}';
    }
  }

  void instagramClick() async{
    if(await canLaunch(Constant.PROFILE_INSTAGRAM)){
      await launch(Constant.PROFILE_INSTAGRAM);

    }else{
    throw 'Could not launch ${""}';
    }
  }

  void facebookClick() async{
    if(await canLaunch(Constant.PROFILE_FACEBOOK)){
      await launch(Constant.PROFILE_FACEBOOK);
    }else{
    throw 'Could not launch ${""}';
    }
  }
}

class ExpandableWidget extends StatefulWidget{

  final bool isExpanded;
  final Widget collapsedChild;
  final Widget expandedChild;

  const ExpandableWidget({Key key, this.isExpanded, this.collapsedChild, this.expandedChild}) : super(key: key);

  @override
  State<StatefulWidget> createState()=>_ExpandableCardContainerState();


}
class _ExpandableCardContainerState extends State<ExpandableWidget> {
  @override
  Widget build(BuildContext context) {
    return new AnimatedContainer(
      duration: new Duration(milliseconds: 200),
      curve: Curves.easeInOut,
      child: widget.isExpanded ? widget.expandedChild : widget.collapsedChild,
    );
  }
}

class SocialButton extends StatelessWidget {
  final String image;
  final String buttonText;
  final Color textColor;

  const SocialButton({Key key, this.image, this.buttonText, this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          // ignore: missing_required_param
          child: FlatButton.icon(
              icon: SizedBox(
                width: 40,
                height: 40,
                child: Image.asset(image),
                //child: Image.asset("assets/github.png"),
              ),
              label: Text(
                buttonText,
                //"Github",
                style: TextStyle(color: textColor, fontSize: 20),
              )),
        ),
      ],
    );
  }
}
