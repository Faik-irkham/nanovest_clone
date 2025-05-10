import 'package:flutter/material.dart';
import 'features/home/presentation/pages/home_page.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    Container(),
    Container(),
    Container(),
    Container(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(top: BorderSide(width: 1, color: Colors.transparent)),
          gradient: LinearGradient(
            colors: [Color(0XFF151128), Color(0XFF6F6F6F), Color(0XFF151128)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            tileMode: TileMode.clamp,
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: Color(0XFF151128),
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          selectedItemColor: Color(0XFF0E68B4),
          unselectedItemColor: Color(0XFF6F6F6F),

          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Image.asset(
                  'assets/ic/home-05.png',
                  width: 24,
                  height: 24,
                ),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Image.asset(
                  'assets/ic/cryptocurrency-01.png',
                  width: 24,
                  height: 24,
                ),
              ),
              label: 'Crypto',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Image.asset(
                  'assets/ic/gift-01.png',
                  width: 24,
                  height: 24,
                ),
              ),
              label: 'Reward',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Image.asset(
                  'assets/ic/line-chart-up-02.png',
                  width: 24,
                  height: 24,
                ),
              ),
              label: 'Non-Crypto',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Image.asset(
                  'assets/ic/wallet-03.png',
                  width: 24,
                  height: 24,
                ),
              ),
              label: 'Wallet',
            ),
          ],
        ),
      ),
    );
  }
}
