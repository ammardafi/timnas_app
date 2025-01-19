import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Timnas Apps',
      color: Colors.white,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<String> _playerposition = [
    'STRIKERS',
    'MIDFIELDERS',
    'DEFENDERS',
    'GOALKEEPERS',
    'MANAGER'
  ];
  final List<String> _tabContents = [
    'RAGNAR\nORATMANGOEN',
    'Content of Tab 2',
    'Content of Tab 3',
    'Content of Tab 4',
    'Content of Tab 5'
  ];

  // List of sample image assets for each tab
  final List<String> _assets = [
    'assets/images/ragnar.png',
    'assets/images/haye.png',
    'assets/images/diks.png',
    'assets/images/paes.png',
    'assets/images/kluivert.png'
  ];

  final List<String> _playername = [
    'RAGNAR\nORATMANGOEN',
    'THOM\nHAYE',
    'KEVIN\nDIKS',
    'MAARTEN\nPAES',
    'PATRICK\nKLUIVERT'
  ];

  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Navigate to next page with clicked content
  void _navigateToNextPage(String content) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => NextPage(content: content)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          toolbarHeight: 100,
          title: Text(
            'TIMNAS\nINDONESIA',
            style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                height: 1.0,
                letterSpacing: 4.0),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            // Custom TabBar using Row and Containers
            Container(
              width: 500,
              height: 50.0,
              color: const Color.fromARGB(255, 66, 81, 66),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(_playerposition.length, (index) {
                    return GestureDetector(
                      onTap: () => _onTabTapped(index),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: _selectedIndex == index
                                  ? Colors.transparent
                                  : Colors.transparent,
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                _playerposition[index],
                                style: TextStyle(
                                  color: _selectedIndex == index
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
            // Tab content displayed as a scrollable Column with images and text
            Container(
              height: 280,
              width: 360,
              child: GestureDetector(
                onTap: () => _navigateToNextPage('RAGNAR\nORATMANGOEN'),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 1),
                  child: Container(
                    color: Colors.red[900],
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/images/ragnar.png',
                          width: 280,
                        ), // Display image for selected tab
                        Positioned(
                          left: 280,
                          child: RotatedBox(
                            quarterTurns: 3,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 55, 0),
                              child: Text(
                                'RAGNAR\nORATMANGOEN',
                                style: TextStyle(
                                    color: Colors.white60,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    height: 1.1),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                            top: 0,
                            bottom: 10,
                            right: 280,
                            child: Text(
                              '11',
                              style: TextStyle(
                                fontSize: 58,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 280,
              width: 360,
              child: GestureDetector(
                onTap: () => _navigateToNextPage('THOM\nHAYE'),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 1),
                  child: Container(
                    color: Colors.red[900],
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/images/haye.png',
                          width: 280,
                        ), // Display image for selected tab
                        Positioned(
                          left: 280,
                          child: RotatedBox(
                            quarterTurns: 3,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 183, 0),
                              child: Text(
                                'THOM\nHAYE',
                                style: TextStyle(
                                    color: Colors.white60,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    height: 1.1),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                            top: 0,
                            bottom: 10,
                            right: 280,
                            child: Text(
                              '19',
                              style: TextStyle(
                                fontSize: 58,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 280,
              width: 360,
              child: GestureDetector(
                onTap: () => _navigateToNextPage('KEVIN\nDIKS'),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 1),
                  child: Container(
                    color: Colors.red[900],
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/images/diks.png',
                          width: 280,
                        ), // Display image for selected tab
                        Positioned(
                          left: 280,
                          child: RotatedBox(
                            quarterTurns: 3,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 185, 0),
                              child: Text(
                                'KEVIN\nDIKS',
                                style: TextStyle(
                                    color: Colors.white60,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    height: 1.1),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                            top: 0,
                            bottom: 10,
                            right: 295,
                            child: Text(
                              '2',
                              style: TextStyle(
                                fontSize: 58,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 280,
              width: 360,
              child: GestureDetector(
                onTap: () => _navigateToNextPage('MAARTEN\nPAES'),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 1),
                  child: Container(
                    color: Colors.red[900],
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/images/paes.png',
                          width: 280,
                        ), // Display image for selected tab
                        Positioned(
                          left: 280,
                          child: RotatedBox(
                            quarterTurns: 3,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 132, 0),
                              child: Text(
                                'MAARTEN\nPAES',
                                style: TextStyle(
                                    color: Colors.white60,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    height: 1.1),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                            top: 0,
                            bottom: 10,
                            right: 295,
                            child: Text(
                              '1',
                              style: TextStyle(
                                fontSize: 58,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ));
  }
}

class NextPage extends StatefulWidget {
  final String content;

  // Constructor to receive content from the previous page
  NextPage({required this.content});

  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  int _selectedIndex = 0;

  final List<String> _tabs = ['OVR', 'STATS', 'BIO'];
  final List<String> _assets = [
    'assets/images/ragnarfull.png',
  ];

  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.red[600],
        title: Text(
          'RAGNAR ORATMANGOEN',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Custom TabBar using Row and Containers in the new page
            Container(
              height: 50.0,
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(3, (index) {
                  return GestureDetector(
                    onTap: () => _onTabTapped(index),
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: _selectedIndex == index
                                ? Colors.transparent
                                : Colors.transparent,
                            width: 3.0,
                          ),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            _tabs[index],
                            style: TextStyle(
                              fontSize: 12,
                              color: _selectedIndex == index
                                  ? Colors.white
                                  : Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
            // Scrollable Column displaying images and text
            Container(
              color: Colors.grey, // Background color for the container
              height: 150, // Height of the container
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Table(
                    border: TableBorder.all(
                        color: Colors.black, width: 1), // Table border
                    children: [
                      // Header row with 4 columns
                      TableRow(
                        decoration: BoxDecoration(),
                        children: [
                          TableCell(
                            child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Center(
                                child: Text(
                                  'ROLE',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Center(
                                child: Text(
                                  'AGE',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Center(
                                child: Text(
                                  'CAPS',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Center(
                                child: Text(
                                  'GOALS',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      // Data row with 4 columns
                      TableRow(
                        children: [
                          TableCell(
                            child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Center(
                                child: Text(
                                  'FW',
                                  style: TextStyle(
                                      fontSize: 38,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Center(
                                child: Text(
                                  '27',
                                  style: TextStyle(
                                      fontSize: 38,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Center(
                                child: Text(
                                  '24',
                                  style: TextStyle(
                                      fontSize: 38,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Center(
                                child: Text(
                                  '6',
                                  style: TextStyle(
                                      fontSize: 38,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Image.asset('assets/images/ragnarfull.png'),
          ],
        ),
      ),
    );
  }
}
