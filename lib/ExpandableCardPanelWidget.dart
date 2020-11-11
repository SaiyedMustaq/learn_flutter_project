import 'package:flutter/material.dart';

class ExpandableCardPanelWidget extends StatelessWidget {
  final String title;
  final String subTitle;

  const ExpandableCardPanelWidget({Key key, this.title, this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.blue,
            border: Border.all(color: Colors.blue, width: 1)),
        child: ExpansionTile(
          expandedCrossAxisAlignment: CrossAxisAlignment.center,
          expandedAlignment: Alignment.center,
          tilePadding: EdgeInsets.symmetric(horizontal: 5),
          maintainState: false,
          childrenPadding: EdgeInsets.symmetric(vertical: 5),
          backgroundColor: Colors.blue,
          title: Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
          children: <Widget>[UnorderedListItem("")],
        ),
      ),
    );
  }
}

class EmployeeInfo {
  final String startDate;
  final String endDate;
  final String companyName;

  EmployeeInfo({
    @required this.companyName,
    @required this.startDate,
    @required this.endDate,
  });
}

final List<EmployeeInfo> employeeList = [
  EmployeeInfo(companyName: "", startDate: "", endDate: "")
];

class UnorderedListItem extends StatelessWidget {
  final String text;

  UnorderedListItem(this.text);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          flex: 40,
          child: Padding(
            padding: EdgeInsets.only(left: 15.0, top: 5.0),
            child: Text(
              text,
              style: TextStyle(fontSize: 15.0, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}

class StarDisplay extends StatelessWidget {
  final int value;

  const StarDisplay({Key key, this.value = 0})
      : assert(value != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return Icon(
          index < value ? Icons.star : Icons.star_border,
        );
      }),
    );
  }
}
