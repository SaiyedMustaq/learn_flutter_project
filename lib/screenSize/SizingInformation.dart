


import 'package:flutter/widgets.dart';

import 'DeviceScreenType.dart';

class SizeInformation{

  final Orientation orientation;
  final DeviceScreenType deviceScreenType;
  final Size screenSize;
  final Size localWidgetSize;

  SizeInformation({
    this.orientation,
    this.deviceScreenType,
    this.screenSize,
    this.localWidgetSize
  });

  String toString(){
    return 'Orientation:- $orientation DeviceType:- $deviceScreenType ScreenSize:- $screenSize LocalWidgetSize:- $localWidgetSize';
  }

}