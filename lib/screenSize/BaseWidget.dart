import 'package:flutter/widgets.dart';
import 'package:learn_flutter/ui/utils.dart';

import 'SizingInformation.dart';

class BaseWidget extends StatelessWidget {
  final Widget Function(BuildContext context, SizeInformation sizeInformation)
  builder;

  const BaseWidget({Key key, this.builder}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    return LayoutBuilder(builder: (context, boxSizing) {
      var sizingInformation = SizeInformation(
        orientation: mediaQuery.orientation,
        deviceScreenType: getDeviceType(mediaQuery),
        screenSize: mediaQuery.size,
        localWidgetSize: Size(boxSizing.maxWidth, boxSizing.maxHeight),
      );    return builder(context, sizingInformation);
    });

  }
}
