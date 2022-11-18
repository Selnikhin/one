import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SingIn extends StatefulWidget {
  const SingIn({Key? key}) : super(key: key);

  @override
  State<SingIn> createState() => _SingInState();
}

class _SingInState extends State<SingIn> {
  bool _hadePass = true;
  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black, width: 1),
              borderRadius: BorderRadius.circular(4)),
          width: 486,
          height: 653,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 28, right: 28),
                child: Image.asset(
                  'assets/icons/cross.png',
                  width: 16,
                  height: 16,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 48, right: 48),
                child: Container(
                  height: 42,
                  width: 390,
                  child: Center(
                    child: Text(
                      'Sing in',
                      style: GoogleFonts.lato(
                          color: Colors.black,
                          fontSize: 28,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 48, top: 24, right: 48),
                child: Container(
                  height: 42,
                  width: 390,
                  child: Center(
                    child: Text(
                      'Sign in to your account using email and password provided during registration.',
                      style: GoogleFonts.lato(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 48, top: 24, right: 48),
                    child: Text(
                      'Email',
                      style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 48, top: 8, right: 48),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Your working email',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 48,
                      top: 24,
                    ),
                    child: Text(
                      'Password',
                      style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 48, top: 8, right: 48),
                child: TextFormField(
                  obscureText: _hadePass,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    suffixIcon: IconButton(
                      icon: Icon(
                          _hadePass ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _hadePass = !_hadePass;
                        });
                      },
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 48, top: 20),
                    child: Theme(
                      data: Theme.of(context)
                          .copyWith(unselectedWidgetColor: Colors.red),
                      child: Checkbox(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
                        value: isChecked,
                        onChanged: (value) {
                          setState(() => isChecked = value!);
                        },
                        activeColor: Colors.red,
                        checkColor: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5, top: 20),
                    child: Container(
                      width: 110,
                      height: 21,
                      child: Text(
                        'Keep me signed in',
                        style: GoogleFonts.lato(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 133, top: 20),
                    child: Container(
                      width: 109,
                      height: 21,
                      child: Text(
                        'Forgot password?',
                        style: GoogleFonts.lato(
                          color: Colors.red,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),
              Center(
                  child: Container(
                width: 390,
                height: 44,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.deepOrange,
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Sing in',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )),
              SizedBox(height: 24),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 48),
                  ),
                  Text(
                    "Don't have an account?",
                    style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('Sing up'),
                  ),
                ],
              ),
              Divider(),
              SizedBox(
                height: 24,
              ),
              Column(
                children: [
                  Center(
                    child: Text(
                      'Or sing in with',
                      style: GoogleFonts.lato(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/icons/F.png',
                          color: Colors.grey,
                          width: 9.65,
                          height: 18.33,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/icons/G.png',
                          color: Colors.grey,
                          width: 17.8,
                          height: 17.44,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/icons/Twit.png',
                          color: Colors.deepOrange,
                          width: 17.5,
                          height: 13.61,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/icons/In.png',
                          color: Colors.grey,
                          width: 16.67,
                          height: 16.67,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
