import 'package:flutter/material.dart';
import 'package:hadir_app/themes.dart';
import 'package:hadir_app/widgets/information_tile.dart';

// ignore: use_key_in_widget_constructors
class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/icon_menu.png', width: 20, height: 8),
            SizedBox(width: MediaQuery.of(context).size.width / 3.2),
            Expanded(
              child: Text(
                'Hadir.',
                style: primaryTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: bold,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget menuFavorite() {
      return Container(
        margin: const EdgeInsets.only(
          left: 24,
          right: 24,
          bottom: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Menu Favorite',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // ABSENSI
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  width: (MediaQuery.of(context).size.width / 2) - (24 * 2),
                  height: (MediaQuery.of(context).size.width / 2) - (24 * 2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icon_absensi.png',
                        width: 60,
                      ),
                      const SizedBox(height: 9),
                      Text(
                        'Absensi',
                        style: secondaryTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                      ),
                    ],
                  ),
                ),
                // PENGHASILAN
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  width: (MediaQuery.of(context).size.width / 2) - (24 * 2),
                  height: (MediaQuery.of(context).size.width / 2) - (24 * 2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icon_money.png',
                        width: 60,
                      ),
                      const SizedBox(height: 9),
                      Text(
                        'Penghasilan',
                        style: secondaryTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // CETAK KARTU
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  width: (MediaQuery.of(context).size.width / 2) - (24 * 2),
                  height: (MediaQuery.of(context).size.width / 2) - (24 * 2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icon_print.png',
                        width: 60,
                      ),
                      const SizedBox(height: 9),
                      Text(
                        'Cetak Kartu ID',
                        style: secondaryTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                      ),
                    ],
                  ),
                ),
                // LAPORAN
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  width: (MediaQuery.of(context).size.width / 2) - (24 * 2),
                  height: (MediaQuery.of(context).size.width / 2) - (24 * 2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icon_laporan.png',
                        width: 60,
                      ),
                      const SizedBox(height: 9),
                      Text(
                        'Laporan',
                        style: secondaryTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        margin: const EdgeInsets.only(
          bottom: 20,
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'Informasi Perusahaan',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(width: 24),
                  InformationWidget('assets/info1.png'),
                  InformationWidget('assets/info2.png'),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget customBottomNavBar() {
      return BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: BottomNavigationBar(
          backgroundColor: background2,
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(
                  top: 30,
                  bottom: 10,
                ),
                child: Image.asset(
                  'assets/icon_home.png',
                  width: 21,
                  color: primaryColor,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(
                  top: 30,
                  bottom: 10,
                ),
                child: Image.asset(
                  'assets/icon_userid.png',
                  width: 20,
                  color: primaryColor,
                ),
              ),
              label: '',
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: background1,
        automaticallyImplyLeading: false,
        title: header(),
        centerTitle: true,
      ),
      backgroundColor: background1,
      bottomNavigationBar: customBottomNavBar(),
      resizeToAvoidBottomInset: false,
      body: ListView(
        children: [
          content(),
          menuFavorite(),
        ],
      ),
    );
  }
}
