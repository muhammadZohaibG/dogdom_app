import 'package:flutter/material.dart';
// import 'home.dart';
import 'bottomnavig.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/lgbg.png'),
                colorFilter: ColorFilter.mode(
                    Color.fromARGB(255, 0, 0, 0), BlendMode.dstATop),
                fit: BoxFit.cover,
                opacity: 0.9,
              )),
              child: Container(
                color: Colors.black.withOpacity(0.5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/whitedogdom.png',
                      width: width * 0.5,
                      height: height * 0.3,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: width * 0.76,
                      height: height * 0.06,
                      child: TextField(
                          style: TextStyle(color: Colors.white),
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            prefixIcon: InternationalPhoneNumberInput(
                              textStyle: TextStyle(color: Colors.white),
                              onInputChanged: (value) {},
                              spaceBetweenSelectorAndTextField: 2,
                              selectorTextStyle: TextStyle(color: Colors.white),
                              selectorConfig: SelectorConfig(showFlags: false),
                              inputDecoration: InputDecoration(
                                  fillColor: Colors.white,
                                  enabledBorder: UnderlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(22)),
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  focusedBorder: UnderlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(22)),
                                      borderSide:
                                          BorderSide(color: Colors.white))),
                            ),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.4),
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(22)),
                                borderSide: BorderSide(color: Colors.white)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(22)),
                                borderSide: BorderSide(color: Colors.white)),
                          )),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    SizedBox(
                      width: width * 0.76,
                      height: height * 0.06,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NavigationPage()),
                          );
                        },
                        child: Text(
                          'Get Captcha',
                          style: TextStyle(fontSize: 18),
                        ),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color.fromARGB(255, 247, 113, 104)
                                    .withOpacity(0.8)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(22)))),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: width * 0.4),
                      child: TextButton(
                        onPressed: () {},
                        child: Text('Password to Login'),
                        style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all(Colors.white)),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.3,
                    ),
                    SizedBox(
                      child: Padding(
                        padding: EdgeInsets.all(width * 0.1),
                        child: Text(
                          'By Signing in, you agree to the User Agreement and Privacy Terms',
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
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
    );
  }
}
