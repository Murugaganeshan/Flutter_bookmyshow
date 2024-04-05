import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isSwitched = false;

  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
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
            child: Column(children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.40,
                child: const Image(
                    image: AssetImage(
                  'images/gpay.jpg',
                )),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("Login",
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.bodyMedium,
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
                        Text("Please Sign in to continue.",
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
                            // Based on passwordVisible state choose the icon
                            _passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Theme.of(context).primaryColorDark,
                          ),
                          onPressed: () {
                            // Update the state i.e. toogle the state of passwordVisible variable
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                        ),
                        hintStyle: TextStyle(color: Colors.blue, fontSize: 17),
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
                      height: MediaQuery.of(context).size.height * 0.025,
                    ),
                    InkWell(
                      onTap: () {},
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
                                    "Sign in",
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
                      height: MediaQuery.of(context).size.height * 0.020,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.58,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                      text: 'Don"t have account?',
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
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Register()),
                              );
                            },
                            child: Text(
                              "Sign Up",
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
            ]),
          ),
        ),
      ),
    );
  }
}
