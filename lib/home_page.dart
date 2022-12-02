import 'package:flutter/material.dart';
import 'package:grocery_app_02/constant.dart';
import 'package:grocery_app_02/models/products.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 130,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              const Icon(
                Icons.bubble_chart_rounded,
                color: blue,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: 'GRO',
                        style: poppins.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: darkorange,
                        )),
                    TextSpan(
                        text: 'CERY',
                        style: poppins.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: blue,
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
        actions: [
          Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_basket_rounded,
                color: darkorange,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: white,
            ),
            child: TextField(
              onChanged: (value) {},
              decoration: InputDecoration(
                hintText: 'Search want to buy',
                hintStyle: poppins.copyWith(
                  fontSize: 14,
                  color: blue,
                ),
                prefixIcon: const Icon(
                  Icons.search_rounded,
                  color: blue,
                ),
                suffixIcon: const Icon(
                  Icons.tune_rounded,
                  color: blue,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          Row(
            children: products
                .map((e) =>
                    Container(child: Image.asset('assets/${e.images[0]}')))
                .toList(),
          ),
        ],
      ),
    );
  }
}
