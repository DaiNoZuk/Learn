// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_learn/src/component/dropdown.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          //left page
          Container(
            width: 73,
            height: 768,
            color: Colors.blue.shade400,
            child: Column(
              children: [
                SizedBox(
                  height: 65,
                ),
                SvgPicture.asset('assets/svg/homebutton.svg'),
                Text(
                  "Home",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          //right page
          Column(
            children: [
              Container(
                width: 1022,
                height: 47,
                color: Colors.blue.shade300,
                child: Padding(
                  padding: const EdgeInsets.only(left: 17, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset('assets/svg/traveler.svg'),
                      Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("KERCIGARETTE"),
                              Text("personal"),
                            ],
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          ClipRect(
                              child: SvgPicture.asset('assets/svg/person.svg')),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 1022,
                height: 61,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 1,
                      color: Colors.grey,
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 26),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // the left box of row 2
                      Container(
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/svg/users.svg'),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Text(
                                "Users",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            ClipRRect(
                              child: Container(
                                alignment: Alignment.center,
                                width: 20,
                                height: 20,
                                child: Text("2"),
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ],
                        ),
                      ),
                      // delete button and new user button
                      Container(
                        child: Row(
                          children: [
                            // Delete button
                            Container(
                              height: 38,
                              width: 120,
                              child: OutlinedButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                    shape: BeveledRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                    side: BorderSide(
                                        width: 1, color: Colors.black)),
                                child: Row(
                                  children: [
                                    SvgPicture.asset('assets/svg/bin.svg'),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Delete",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            // New User Button
                            Container(
                              width: 150,
                              height: 38,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.add,
                                      size: 20,
                                    ),
                                    Text(
                                      "New User",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: 1022,
                height: 549,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 35, top: 35),
                      child: SizedBox(
                        width: 270,
                        height: 35,
                        child: TextField(
                          decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 12),
                              prefixIcon: Icon(
                                Icons.search,
                                size: 15,
                              ),
                              hintText: "Search for promotion name",
                              hintStyle: TextStyle(fontSize: 14),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6))),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 35),
                      child: SizedBox(
                        child: MyDropdown(),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 36,
                      ),
                      child: Container(
                        width: 150,
                        height: 34,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Icon(
                                Icons.search_rounded,
                                size: 20,
                              ),
                              SizedBox(
                                width: 9,
                              ),
                              Text(
                                "Search",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
