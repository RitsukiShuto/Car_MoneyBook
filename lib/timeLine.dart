import 'package:flutter/material.dart';

class timeLine_Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: ListTile(
            title: Text('Time Line'),
            subtitle: Text('MODEL:XXXXXXXX'),
          ),
        ),
        /*
        Align(
          alignment: Alignment.centerLeft,
          child: Icon(
            Icons.notifications,
            color: Colors.grey[800],
          ),
        )
        */
      ],
    );
  }
}

class customCard extends StatefulWidget {
  @override
  _customCard createState() => _customCard();
}

class _customCard extends State<customCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Container(
        height: 48,
        width: 48,
      ),
      elevation: 10,
    );
  }
}

class timeLine extends StatefulWidget {
  @override
  _timeLine createState() => _timeLine();
}

class _timeLine extends State<timeLine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: cardPageView(),
        ),
      ),
    );
  }

  Widget cardPageView() {
    return Container(
      padding: EdgeInsets.only(top: 48),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          timeLine_Header(),
          Expanded(
            child: ListView(
              children: [
                customCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
