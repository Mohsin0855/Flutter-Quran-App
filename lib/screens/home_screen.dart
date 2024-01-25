import 'package:flutter/material.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    HijriCalendar.setLocal('ar');
    var _hijri = HijriCalendar.now();
    var day = DateTime.now();
    var format = DateFormat('EEE, d MMM yyyy');
    var formatted = format.format(day);
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          Container(
            height: _size.height * 0.22,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/background_img.jpg'))),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    formatted,
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  RichText(
                      text: TextSpan(children: <InlineSpan>[
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          _hijri.hDay.toString(),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          _hijri.longMonthName.toString(),
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          '${_hijri.hYear} AH',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  ])),
                ]),
          )
        ],
      )),
    );
  }
}
