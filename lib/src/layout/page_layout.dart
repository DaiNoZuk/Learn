import 'package:flutter/material.dart';
import 'package:flutter_learn/src/components/icon.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageLayout extends StatelessWidget {
  const PageLayout({super.key, required this.btnBack});
  final bool btnBack;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double menuWidth = 73;
    double contentWidth = size.width - menuWidth;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Row(
          children: [
            Container(
              width: menuWidth,
              height: 768,
              color: const Color(0xff1B7C9A),
              child: Column(
                children: [
                  const SizedBox(height: 48),
                  btnBack
                      ? const SizedBox(height: 3)
                      : Column(
                          children: [
                            InkWell(
                              onTap: () => print('back'),
                              child: Container(
                                width: 47,
                                height: 47,
                                decoration: const ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 3, color: Colors.white),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(50))),
                                ),
                                child: const Icon(
                                  Icons.arrow_back,
                                  size: 35,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const Text(
                              'Back',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),
                  InkWell(
                    onTap: () => print('Home'),
                    child: SvgPicture.asset(SvgPaths.btnHome),
                  ),
                  const Text(
                    'Home',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: contentWidth,
              height: 768,
              color: const Color(0xFFE9EEF4),
              child: Column(
                children: [
                  Container(
                    height: 47,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromARGB(50, 23, 114, 142),
                          Color.fromARGB(100, 23, 114, 142),
                          Color.fromARGB(150, 23, 114, 142),
                        ],
                      ),
                    ),
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 17),
                          child: SvgPicture.asset(SvgPaths.logo),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: SizedBox(
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Supanat Leamlert',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      'admin',
                                      style: TextStyle(
                                        color: Color(0xFFE1E1E1),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 12),
                                SizedBox(
                                  width: 40,
                                  height: 40,
                                  child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50)),
                                    child: Image.asset(
                                      ImagePaths.coke,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 44,
                    decoration: const ShapeDecoration(
                      color: Colors.white,
                      shape: Border(
                        bottom: BorderSide(
                          width: 1,
                          color: Color(0xffE9EDF5),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Search for attribute name',
                          hintStyle: TextStyle(
                            color: Color(0xFFA1A9B8),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
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
