import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _MainPageState();
}

class _MainPageState extends State<StatefulWidget>{
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffd8f1fa),
      appBar: AppBar(
        backgroundColor: Color(0xffd8f1fa),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.location_on_rounded, color: Colors.black54,),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Location',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal, color: Colors.black54),
                )
              ],
            ),
            Text(
              'Bantul, Yogyakarta',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
            )
          ],
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.notifications,
              color: Colors.black54,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.apps, color: Colors.black54,),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset('assets/images/rapido.jpg')),
              SizedBox(
                height: 20,
              ),
              Card(
                child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Active Balance',
                              style: TextStyle(color: Colors.black26),
                            ),
                            Row(
                              children: [
                                Text(
                                  "\$500.00",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 24),
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.remove_red_eye_outlined,
                                  color: Colors.black38,
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          children: [
                            Icon(CupertinoIcons.arrow_up_square,
                                color: Colors.black38),
                            Text('Top Up',
                                style: TextStyle(
                                    color: Colors.black26, fontSize: 12)),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Icon(CupertinoIcons.arrow_down_square,
                                color: Colors.black38),
                            Text('Request',
                                style: TextStyle(
                                    color: Colors.black26, fontSize: 12)),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Icon(Icons.account_balance_wallet_rounded,
                                color: Colors.black38),
                            Text(
                              'Transfer',
                              style:
                              TextStyle(color: Colors.black26, fontSize: 12),
                            )
                          ],
                        )
                      ],
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(1),
                        child: Row(
                          children: [
                            CircleAvatar(
                              child: Icon(
                                Icons.directions_bus_outlined,
                                color: Colors.white,
                              ),
                              backgroundColor: Colors.blue,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Text('Bus'),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(1),
                        child: Row(
                          children: [
                            CircleAvatar(
                              child: Icon(
                                Icons.train_outlined,
                                color: Colors.white,
                              ),
                              backgroundColor: Colors.blue,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(2),
                              child: Text('Train'),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(1),
                        child: Row(
                          children: [
                            CircleAvatar(
                              child: Icon(
                                CupertinoIcons.car_detailed,
                                color: Colors.white,
                              ),
                              backgroundColor: Colors.blue,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text('Car')
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(1),
                        child: Row(
                          children: [
                            CircleAvatar(
                              child: Icon(
                                Icons.bike_scooter_sharp,
                                color: Colors.white,
                              ),
                              backgroundColor: Colors.blue,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text('Bike')
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(1),
                        child: Row(
                          children: [
                            CircleAvatar(
                              child: Icon(
                                Icons.directions_bike,
                                color: Colors.white,
                              ),
                              backgroundColor: Colors.blue,
                            ),
                            SizedBox(
                              width: 1,
                            ),
                            Text('Cycle')
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(1),
                        child: Row(
                          children: [
                            CircleAvatar(
                              child: Icon(
                                Icons.airplanemode_active_outlined,
                                color: Colors.white,
                              ),
                              backgroundColor: Colors.blue,
                            ),
                            SizedBox(
                              width: 1,
                            ),
                            Text('plane')
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text('Where are you going today?',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19)),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 300,
                        width: 290,
                        child: Card(
                          child: Column(
                            children: [
                              ClipRRect(

                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    topRight: Radius.circular(12)),
                                child: Image.asset('assets/images/travel2.jpg'),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Smart Bus',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold, fontSize: 17),
                                        ),
                                        Text(
                                          'Yogyakarta',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold, fontSize: 17),
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              CupertinoIcons.clock,
                                              color: Colors.black26,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              '05.00-21.00 WIB',
                                              style: TextStyle(color: Colors.black26),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              '\$5',
                                              style: TextStyle(
                                                  color: Colors.blue, fontSize: 19),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              '/KM',
                                              style: TextStyle(color: Colors.black26),
                                            ),
                                          ],
                                        ),
                                        ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.blue,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(12))),
                                            child: Text(
                                              'Route',
                                              style: TextStyle(color: Colors.white),
                                            )),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 300,
                        width: 290,
                        child: Card(
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    topRight: Radius.circular(12)),
                                child: Image.asset('assets/images/travel1.jpg'),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Smart Bus',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold, fontSize: 17),
                                        ),
                                        Text(
                                          'Yogyakarta',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold, fontSize: 17),
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              CupertinoIcons.clock,
                                              color: Colors.black26,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              '05.00-21.00 WIB',
                                              style: TextStyle(color: Colors.black26),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              '\$5',
                                              style: TextStyle(
                                                  color: Colors.blue, fontSize: 19),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              '/KM',
                                              style: TextStyle(color: Colors.black26),
                                            ),
                                          ],
                                        ),
                                        ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.blue,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(12))),
                                            child: Text(
                                              'Route',
                                              style: TextStyle(color: Colors.white),
                                            )),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 300,
                        width: 290,
                        child: Card(
                          child: Column(
                            children: [
                              ClipRRect(

                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    topRight: Radius.circular(12)),
                                child: Image.asset('assets/images/travel2.jpg'),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Smart Bus',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold, fontSize: 17),
                                        ),
                                        Text(
                                          'Yogyakarta',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold, fontSize: 17),
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              CupertinoIcons.clock,
                                              color: Colors.black26,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              '05.00-21.00 WIB',
                                              style: TextStyle(color: Colors.black26),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              '\$5',
                                              style: TextStyle(
                                                  color: Colors.blue, fontSize: 19),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              '/KM',
                                              style: TextStyle(color: Colors.black26),
                                            ),
                                          ],
                                        ),
                                        ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.blue,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(12))),
                                            child: Text(
                                              'Route',
                                              style: TextStyle(color: Colors.white),
                                            )),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ]
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Color(0xffedf4ff),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
            backgroundColor: Color(0xffedf4ff),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
            backgroundColor: Color(0xffedf4ff),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Color(0xffedf4ff),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black38,
        onTap: _onItemTapped,
      ),
    );
  }

}
