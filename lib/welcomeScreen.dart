import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:handsforhunger/donor.dart';
import 'package:handsforhunger/logIn.dart';
import 'package:handsforhunger/ngo.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    double h = (MediaQuery.of(context).size.height),
        w = (MediaQuery.of(context).size.width);
    return Scaffold(
      body: Container(
        color: Color(0xffFAFAFC),
        padding: EdgeInsets.only(
            top: h / 14, bottom: h / 15, left: w / 16, right: w / 16),
        child: Column(
          children: [
            TopText(),
            SizedBox(
              height: h / 25,
            ),
            Container(
              height: h / 1.9,
              width: w / 1.2,
              margin: EdgeInsets.only(bottom: h / 60),
              padding:
                  EdgeInsets.symmetric(horizontal: h / 30, vertical: w / 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: shadow,
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  Image.asset('images/WelcomeScreenImage.png'),
                  SizedBox(height: h / 45),
                  Text(
                    'Improving Lives Together',
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff353767)),
                  ),
                  SizedBox(
                    height: h / 87,
                  ),
                  Center(
                      child: Text(
                    'Lend a hand to end hunger, with Hands',
                    style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff67698F)),
                  )),
                  Center(
                      child: Text(
                    'for Hunger.',
                    style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff67698F)),
                  ))
                ],
              ),
            ),
            BottomButton(
              txt: 'Ngo',
              path: LogInPage(),
              h: h,
              w: w,
            ),
            BottomButton(
              txt: 'Donor',
              path: LogInPage(),
              h: h,
              w: w,
            ),
          ],
        ),
      ),
    );
  }
}

class Txt extends StatelessWidget {
  Txt(
      {required this.txt,
      required this.colour,
      required this.h,
      required this.w,
      required this.f});
  String txt;
  Color colour;
  double h, w, f;
  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: GoogleFonts.poppins(
          fontSize: f, fontWeight: FontWeight.w600, color: colour),
    );
  }
}

class BottomButton extends StatelessWidget {
  BottomButton(
      {required this.txt,
      required this.path,
      required this.h,
      required this.w});
  double h, w;
  String txt;
  Widget path;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => path));
      },
      child: Container(
        margin: EdgeInsets.only(top: 25),
        height: h / 16,
        width: w / 1.18,
        child: Center(
          child: Text(
            txt,
            style: GoogleFonts.poppins(
                fontSize: w / 24.5,
                fontWeight: FontWeight.w600,
                color: Colors.white),
          ),
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xff4BB0FE), Color(0xff4B56FE)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
            borderRadius: BorderRadius.circular(12),
            color: Color(0xff4BB0FE)),
      ),
    );
  }
}

List<BoxShadow> shadow = [
  BoxShadow(color: Colors.grey, blurRadius: 10, offset: Offset(0, 10))
];

class TopText extends StatelessWidget {
  const TopText({super.key});

  @override
  Widget build(BuildContext context) {
    double h = (MediaQuery.of(context).size.height),
        w = (MediaQuery.of(context).size.width);
    return Center(
      child: Row(
        children: [
          SizedBox(
            width: w / 35,
          ),
          Container(
            padding: EdgeInsets.only(bottom: h / 70),
            height: h / 12,
            width: w / 6,
            child: Image.asset('images/WelcomeScreenIcon.png'),
          ),
          Txt(
            txt: 'Hands',
            colour: Color(0xff4B56FE),
            h: h,
            w: w,
            f: w / 14,
          ),
          Txt(
            txt: 'for',
            colour: Color(0xff686A8A),
            h: h,
            w: w,
            f: w / 14,
          ),
          Txt(
            txt: 'Hunger',
            colour: Color(0xff4B56FE),
            h: h,
            w: w,
            f: w / 14,
          ),
        ],
      ),
    );
  }
}
