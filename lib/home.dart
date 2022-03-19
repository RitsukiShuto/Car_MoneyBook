import 'package:flutter/material.dart';

class _PostsHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: ListTile(
            title: Text('Home'),
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

class _Post extends StatelessWidget {
  final String name;
  final String message;
  final String textReason;
  final Color colorPrimary;
  final Color colorPositive;
  final String textPositive;
  final Color colorNegative;
  final String textNegative;

  const _Post({
    Key? key,
    required this.name,
    required this.message,
    required this.textReason,
    required this.colorPrimary,
    required this.colorPositive,
    required this.textPositive,
    required this.colorNegative,
    required this.textNegative,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Card(
        elevation: 8,
        shadowColor: Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            ListTile(
              leading: ClipOval(
                child: Container(
                  color: colorPrimary,
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      name.substring(0, 1),
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
              ),
              title: Text(name),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 72),
                  Container(
                    width: 16,
                    height: 16,
                    decoration: BoxDecoration(
                      border: Border.all(color: colorPrimary, width: 4),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  SizedBox(width: 8),
                  Flexible(child: Text(message)),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: colorPrimary, width: 2),
                      ),
                    ),
                    child: Text(
                      textReason,
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                  ),
                  SizedBox(width: 24),
                  Expanded(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: colorNegative,
                      ),
                      onPressed: () {},
                      child: Text(textNegative),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: colorPositive,
                        backgroundColor: colorPositive.withOpacity(0.2),
                      ),
                      onPressed: () {},
                      child: Text(textPositive),
                    ),
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

class _PostGreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _Post(
      name: 'FUEL CONSUMTION',
      message: '10km/L',
      textReason: 'Learn More',
      colorPrimary: Colors.greenAccent, // アイコン
      colorPositive: Colors.blueAccent,
      textPositive: 'Check',
      colorNegative: Colors.blueAccent,
      textNegative: 'Edit',
    );
  }
}

class _PostRed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _Post(
      name: 'ENGINE OIL',
      message: '2 month ago.',
      textReason: 'Learn More',
      colorPrimary: Colors.deepOrangeAccent,
      colorPositive: Colors.blueAccent,
      textPositive: 'Check',
      colorNegative: Colors.blueAccent,
      textNegative: 'Edit',
    );
  }
}

class _PostBlue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _Post(
      name: 'VEHICLE INSPECTION',
      message: 'Next vehicle inspection :\nYYYYY/MM/DD.',
      textReason: 'Learn More',
      colorPrimary: Colors.blueAccent,
      colorPositive: Colors.blueAccent,
      textPositive: 'Check',
      colorNegative: Colors.blueAccent,
      textNegative: 'Edit',
    );
  }
}

class _PostYellow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _Post(
      name: 'FUEL COSTS',
      message: '¥000,000/00L',
      textReason: 'Learn More',
      colorPrimary: Colors.limeAccent.shade400,
      colorPositive: Colors.blueAccent,
      textPositive: 'Check',
      colorNegative: Colors.blueAccent,
      textNegative: 'Edit',
    );
  }
}

class PostList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 48),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          _PostsHeader(),
          Expanded(
            child: ListView(
              children: [
                _PostGreen(),
                _PostYellow(),
                _PostRed(),
                _PostBlue(),
                _PostGreen(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
