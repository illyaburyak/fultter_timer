import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  final int index;
  final Function callback;

  const BottomNavBar({Key key, this.index, this.callback}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    _BuildNavBaritem(Icon icon, String title) {
      return BottomNavigationBarItem(
        icon: Padding(
          padding: const EdgeInsets.all(10),
          child: icon,
        ),
        label: title,
      );
    }

    return BottomNavigationBar(
      elevation: 0,
      currentIndex: widget.index,
      unselectedFontSize: 14,
      selectedFontSize: 15,
      unselectedItemColor: Theme.of(context).accentColor,
      backgroundColor: Theme.of(context).backgroundColor,
      items: [
        _BuildNavBaritem(Icon(Icons.timer), 'Stopwatch'),
        _BuildNavBaritem(Icon(Icons.slow_motion_video), 'Timer'),
        _BuildNavBaritem(Icon(Icons.settings), 'Settings'),
      ],
      onTap: (ind) {
        widget.callback(ind);
      },
    );
  }
}
