import 'package:flutter/material.dart';

import 'liste.dart';


class Test4View extends StatefulWidget {
  const Test4View({Key? key, required this.cllbckCons, required this.listItem})
      : super(key: key);
  final Function(String str) cllbckCons;
  final Liste listItem;
  @override
  _Test4ViewState createState() => _Test4ViewState();
}

class _Test4ViewState extends State<Test4View> {
  String sent = "aaa";
  @override
  void initState() {
    //widget.cllbckCons();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      title: Text(widget.listItem.prop1),
      leading: CircleAvatar(child: Icon(Icons.account_box)),
      trailing: IconButton(
          onPressed: () {
            widget.cllbckCons(widget.listItem.prop3);
          },
          icon: const CircleAvatar(
            child: Icon(Icons.delete_rounded),
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
          )),
      subtitle: Text(widget.listItem.prop2),
      onTap: () {
        print("dıklandı => " + widget.listItem.prop1);
      },
    );
  }
}
