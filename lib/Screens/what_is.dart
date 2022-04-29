import 'package:flutter/material.dart';

class AboutMortgage extends StatelessWidget {
  const AboutMortgage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("What is Mortgage?")),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(20),
                // shape: BoxShape.circle,
                boxShadow: [BoxShadow(color: Colors.indigo)]),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(100, 30, 50, 0),
                child: Image(
                  image: AssetImage('assets/image/about6.png'),
                ),
              ),
              Text(
                "What is Mortgage ?",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontFamily: "Playfair Display"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    "The term “mortgage” refers to a loan used to purchase or maintain a home, land, or other types of real estate. The borrower agrees to pay the lender over time, typically in a series of regular payments that are divided into principal and interest. The property serves as collateral to secure the loan,A borrower must apply for a mortgage through their preferred lender and ensure that they meet several requirements, including minimum credit scores and down payments. Mortgage applications go through a rigorous underwriting process before they reach the closing phase. Mortgage types vary based on the needs of the borrower, such as conventional and fixed-rate loans.",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        textBaseline: TextBaseline.alphabetic),
                    textAlign: TextAlign.center),
              )
            ]),
          ),
        ]),
      ),
    );
  }
}
