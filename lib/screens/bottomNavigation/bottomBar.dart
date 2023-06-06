import 'package:flutter/material.dart';
import 'package:test/screens/home.dart';
import 'package:test/screens/library.dart';
import 'package:test/screens/profile.dart';
import 'package:test/screens/search.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int pageIndex = 0;

  final pages = [
    const Home(),
    const Search(),
    const Library(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: Container(
        height: 60,
        margin: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    pageIndex = 0;
                  });
                },
                icon: pageIndex == 0
                    ? const Icon(
                        Icons.home_filled,
                        size: 33,
                      )
                    : const Icon(
                        Icons.home_outlined,
                        size: 33,
                      )),
            IconButton(
                onPressed: () {
                  setState(() {
                    pageIndex = 1;
                  });
                },
                icon: pageIndex == 1
                    ? const Icon(
                        Icons.search_rounded,
                        size: 33,
                      )
                    : const Icon(
                        Icons.search,
                        size: 33,
                      )),
            IconButton(
                onPressed: () {
                  setState(() {
                    pageIndex = 2;
                  });
                },
                icon: pageIndex == 2
                    ? const Icon(
                        Icons.library_books_rounded,
                        size: 33,
                      )
                    : const Icon(
                        Icons.library_books_outlined,
                        size: 33,
                      )),
            IconButton(
                onPressed: () {
                  setState(() {
                    pageIndex = 3;
                  });
                },
                icon: pageIndex == 3
                    ? const Icon(
                        Icons.account_circle_rounded,
                        size: 33,
                      )
                    : const Icon(
                        Icons.account_circle_outlined,
                        size: 33,
                      ))
          ],
        ),
      ),
    );
  }
}
