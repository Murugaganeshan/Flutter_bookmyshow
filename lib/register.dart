import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:myapp/book.dart";
import "package:myapp/main.dart";
import "package:myapp/movielist.dart";

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool isSwitched = false;
  bool _passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("images/break.jpg"),
            fit: BoxFit.cover,
          )),
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 1,
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 0.33,
                  child: const Image(
                      image: AssetImage(
                    'images/reg.jpg',
                  )),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Register",
                              style: GoogleFonts.poppins(
                                textStyle:
                                    Theme.of(context).textTheme.bodyMedium,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 30,
                              )),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Row(
                        children: [
                          Text("Please Register in to continue.",
                              style: GoogleFonts.poppins(
                                  textStyle:
                                      Theme.of(context).textTheme.bodySmall,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 13)),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                          filled: true,
                          prefixIcon: IconTheme(
                            data: new IconThemeData(color: Colors.blue),
                            child: new Icon(Icons.person),
                          ),
                          hintStyle:
                              TextStyle(color: Colors.blue[500], fontSize: 17),
                          hintText: "Username",
                          fillColor: Colors.grey[600],
                          contentPadding: EdgeInsets.only(
                              left: 15, bottom: 11, top: 11, right: 15),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                          filled: true,
                          prefixIcon: IconTheme(
                            data: new IconThemeData(color: Colors.blue),
                            child: new Icon(Icons.phone),
                          ),
                          hintStyle: TextStyle(
                            color: Colors.blue,
                            fontSize: 17,
                          ),
                          hintText: "Mobile Number",
                          fillColor: Colors.grey[600],
                          contentPadding: EdgeInsets.only(
                              left: 15, bottom: 11, top: 11, right: 15),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      TextField(
                        keyboardType: TextInputType.text,
                        obscureText: !_passwordVisible,
                        obscuringCharacter: "*",
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                          filled: true,
                          prefixIcon: IconTheme(
                            data: new IconThemeData(color: Colors.blue),
                            child: new Icon(Icons.lock),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _passwordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Theme.of(context).primaryColorDark,
                            ),
                            onPressed: () {
                              setState(() {
                                _passwordVisible = !_passwordVisible;
                              });
                            },
                          ),
                          hintStyle:
                              TextStyle(color: Colors.blue, fontSize: 17),
                          hintText: "Password",
                          fillColor: Colors.grey[600],
                          contentPadding: EdgeInsets.only(
                              left: 15, bottom: 11, top: 11, right: 15),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.75,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Reminder me nextime",
                                style: GoogleFonts.poppins(
                                    textStyle:
                                        Theme.of(context).textTheme.bodySmall,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 13)),
                            Switch(
                              value: isSwitched,
                              onChanged: (value) {
                                setState(() {
                                  isSwitched = value;
                                  print(isSwitched);
                                });
                              },
                              activeTrackColor: Colors.grey[500],
                              activeColor: Colors.grey[300],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.020,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const TabBarExample()),
                          );
                        },
                        child: Container(
                            height: MediaQuery.of(context).size.height * 0.060,
                            width: MediaQuery.of(context).size.width * 0.75,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0),
                                bottomRight: Radius.circular(20.0),
                                bottomLeft: Radius.circular(20.0),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Sign Up",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 17),
                                    )
                                  ],
                                )
                              ],
                            )),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.025,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.59,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                        text: 'Already have account?',
                                        style: GoogleFonts.poppins(
                                            textStyle: Theme.of(context)
                                                .textTheme
                                                .bodySmall,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red,
                                            fontSize: 13)),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Text(
                                "Sign In",
                                style: GoogleFonts.poppins(
                                    textStyle:
                                        Theme.of(context).textTheme.bodySmall,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                    fontSize: 16),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
