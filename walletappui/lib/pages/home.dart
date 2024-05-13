// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletappui/utils/button.dart';
import 'package:walletappui/utils/my_Card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Kartlarım',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: Colors.grey[400], shape: BoxShape.circle),
                      child: Icon(Icons.add)),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  MyCard(
                    balance: 3550.88,
                    cardNum: 2564125856335222,
                    expiryMonth: 02,
                    expiryYear: 2029,
                    color: Colors.green,
                  ),
                  MyCard(
                    balance: 9565.88,
                    cardNum: 1285256969523568,
                    expiryMonth: 12,
                    expiryYear: 2038,
                    color: Colors.purple,
                  ),
                  MyCard(
                    balance: 4526.88,
                    cardNum: 4522785335962569,
                    expiryMonth: 12,
                    expiryYear: 2024,
                    color: Colors.green,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: SwapEffect(),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButtonPage(
                    iconImagePath: 'assets/images/sendmoney.png',
                    buttonText: 'Send',
                  ),
                  ButtonPage(
                    iconImagePath: 'assets/images/creditcard.png',
                    buttonText: 'Pay',
                  ),
                  ButtonPage(
                    iconImagePath: 'assets/images/bill.png',
                    buttonText: 'Bill',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        borderRadius: BorderRadius.circular(12),
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ));
                        },
                        child: Container(
                          height: 80,
                          child: Image.asset('assets/images/bill.png'),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Son İşlemlerim',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
