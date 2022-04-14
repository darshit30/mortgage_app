import 'package:flutter/material.dart';
import 'package:mortgage_app/Widgets/custom.dart';
import 'package:mortgage_app/drawer.dart';
import 'package:mortgage_app/navigation_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _homecontroller = new TextEditingController();
  TextEditingController _downcontroller = new TextEditingController();
  TextEditingController _intrestcontroller = new TextEditingController();
  TextEditingController _loancontroller = new TextEditingController();
  late double totalIntrest;
  late double monthlyIntrest;
  late double monthlyInstallment;

  void loanCalculation() {
    final amount =
        int.parse(_homecontroller.text) - int.parse(_downcontroller.text);
    final tintrest = amount *
        (double.parse(_intrestcontroller.text) /
            100 *
            int.parse(_loancontroller.text));
    final minintrest = tintrest / (int.parse(_loancontroller.text) * 12);
    final minstall =
        (amount + tintrest) / (int.parse(_loancontroller.text) * 12);
    setState(() {
      totalIntrest = tintrest;
      monthlyIntrest = minintrest;
      monthlyInstallment = minstall;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Row(
          children: [
            Text(
              "Mortgage Calculator",
            ),
            Padding(
              padding: const EdgeInsets.only(left: 130),
              child: Icon(Icons.help),
            )
          ],
        )),
        drawer: NavigationDrawerWidget(),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Image(
                  image: AssetImage(
                    'assets/image/home_Image.png',
                  ),
                  width: 300),
              textField(
                  title: "Home Value:",
                  hintText: "Home Value",
                  controller: _homecontroller),
              textField(
                  title: "Down payment:",
                  hintText: "DownPayment",
                  controller: _downcontroller),
              textField(
                  title: "Intrest Rate:",
                  hintText: "Intrest Rate",
                  controller: _intrestcontroller),
              textField(
                  title: "Loan Term:",
                  hintText: "Loan Term",
                  controller: _loancontroller),
              SizedBox(
                height: 15,
              ),
              //Button That shaw Result
              GestureDetector(
                onTap: () {
                  loanCalculation();
                  Future.delayed(Duration.zero);
                  showModalBottomSheet(
                      isDismissible: false,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: 500,
                          // color: Colors.white54,
                          child: Column(
                            children: [
                              //Result Text
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 25, 10, 10),
                                child: Text(
                                  "Result",
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              //Sized Box ,,,space between result and monthly intrest
                              SizedBox(
                                height: 5,
                              ),
                              //Total Intrest
                              result(
                                  title: "Total Intrest", amount: totalIntrest),
                              //Monthy Intrest
                              result(
                                  title: "Monthly Intrest",
                                  amount: monthlyIntrest),
                              // Monthly Installment
                              result(
                                  title: "Monthly Installment",
                                  amount: monthlyInstallment),
                              SizedBox(
                                height: 50,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: Container(
                                  height: 60,
                                  width: 300,
                                  decoration: BoxDecoration(
                                    color: Colors.indigo,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Re-Calculate",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      });
                },
                child: Container(
                  height: 60,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      "Calculate",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
