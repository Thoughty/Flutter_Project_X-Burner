import 'package:flutter/material.dart';


Map<String,String> users =  {
  'dribbble@gmail.com': '12345',
  'hunter@gmail.com': 'hunter',
  'Warat_Admin@gmail.com': '0841153409',
};

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final myEmail = TextEditingController();
  final myPassword = TextEditingController();
  void _showDialog(String header, String message) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              header,
              textAlign: TextAlign.center,
            ),
            content: Text(message),
          );
        },
        barrierDismissible: false);
  }

  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 100.0,
        child: Image.asset(
          'assets/logo.png',
          width: 200,
          height: 200,
        ),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
      controller: myEmail,
    );

    final password = TextFormField(
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
      controller: myPassword,
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          if (users.containsKey(myEmail.text) &&
              users[myEmail.text].contains(myPassword.text)) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Menu()));
          } else {
            _showDialog("X-Burner", "Invalid Email or Password");
          }
        },
        padding: EdgeInsets.all(12),
        color: Colors.orangeAccent,
        child: Text('Log In', style: TextStyle(color: Colors.white)),
      ),
    );

    final forgotLabel = FlatButton(
      child: Text(
        'Forgot password?',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ForgetpasswordWidget()));
      },
    );

    final newMember = FlatButton(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('No Account ?', style: TextStyle(color: Colors.black45)),
        Text(
          ' Sign up here',
          style: TextStyle(color: Colors.orangeAccent),
        )
      ],
    ),onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => SignupWidget()));
    },);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 48.0),
            email,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0),
            loginButton,
            forgotLabel,
            newMember
          ],
        ),
      ),
    );
  }
}
class Dialog {
  final String titlea;
  final String contexta;
  final AlertDialog dialog;

  Dialog(this.titlea, this.contexta)
      : dialog = AlertDialog(
        title: Text(titlea),
        content: Text(contexta),
  );

  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context, builder: (BuildContext context) => dialog);
        },
      ),
    );
  }
}
class ForgetpasswordWidget extends StatefulWidget {
  @override
  _ForgetpasswordWidgetState createState() => _ForgetpasswordWidgetState();

}

class _ForgetpasswordWidgetState extends State<ForgetpasswordWidget> {
  static final myEmail = new TextEditingController();

  final logo = Hero(
    tag: 'hero',
    child: CircleAvatar(
      backgroundColor: Colors.transparent,
      radius: 100.0,
      child: Image.asset(
        'assets/logo.png',
        width: 200,
        height: 200,
      ),
    ),
  );
  final email = TextFormField(
    keyboardType: TextInputType.emailAddress,
    autofocus: false,
    decoration: InputDecoration(
      hintText: 'Email',
      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
    ),
    controller: myEmail,
  );
  final recoverButton = Padding(
    padding: EdgeInsets.symmetric(vertical: 16.0),
    child: RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      onPressed: () {

        if (users.containsKey(myEmail.text)) {
          print("Your Password: ${users[myEmail.text]}");

        } else {
          print("Invalid Email or This account is not exist");

        }
      },
      padding: EdgeInsets.all(12),
      color: Colors.orangeAccent,
      child: Text('Recover Password', style: TextStyle(color: Colors.white)),
    ),
  );
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator ForgetpasswordWidget - FRAME

    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.only(left: 24.0, right: 24.0),
                children: <Widget>[
              logo,
              SizedBox(height: 48.0),
              email,
              SizedBox(height: 24.0),
              recoverButton,
            ])));
  }
}

class SignupWidget extends StatefulWidget {
  @override
  _SignupdWidgetState createState() => _SignupdWidgetState();

}

class _SignupdWidgetState extends State<SignupWidget> {
  static final mySignupEmail = new TextEditingController();
  static final mySignupPassword = new TextEditingController();
  static final confirmPassword = new TextEditingController();

  final logo = Hero(
    tag: 'hero',
    child: CircleAvatar(
      backgroundColor: Colors.transparent,
      radius: 100.0,
      child: Image.asset(
        'assets/logo.png',
        width: 200,
        height: 200,
      ),
    ),
  );
  final email = TextFormField(
    keyboardType: TextInputType.emailAddress,
    autofocus: false,
    decoration: InputDecoration(
      hintText: 'Email',
      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
    ),
    controller: mySignupEmail,
  );
  final password = TextFormField(
    obscureText: false,
    autofocus: false,
    decoration: InputDecoration(
      hintText: 'Password',
      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
    ),
    controller: mySignupPassword,
  );
  final conPassword = TextFormField(
    obscureText: false,
    autofocus: false,
    decoration: InputDecoration(
      hintText: 'Confirm Password',
      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
    ),
    controller: confirmPassword,
  );
  final SignupButton = Padding(
    padding: EdgeInsets.symmetric(vertical: 16.0),
    child: RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      onPressed: () {

        if (!users.containsKey(mySignupEmail.text)) {
          print("Account: ${users[mySignupEmail.text]} created! with ${mySignupPassword.text}");
          users.addAll({'${mySignupEmail.text}':'${mySignupPassword.text}'});

        } else {
          print("This account is already exist");

        }
      },
      padding: EdgeInsets.all(12),
      color: Colors.orangeAccent,
      child: Text('Sign up', style: TextStyle(color: Colors.white)),
    ),
  );
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator ForgetpasswordWidget - FRAME

    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.only(left: 24.0, right: 24.0),
                children: <Widget>[
                  logo,
                  SizedBox(height: 48.0),
                  email,
                  SizedBox(height: 24.0),
                  password,
                  SizedBox(height: 24.0),
                  conPassword,
                  SizedBox(height: 24.0),
                  SignupButton,
                ])));
  }
}

class Menu extends StatefulWidget {
  @override
  _Menu createState() => _Menu();
}

class _Menu extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator Iphone11promax3Widget - FRAME

    return Scaffold(
        appBar: AppBar(
          title: Text('X-Burner'),
          backgroundColor: Colors.orange,
        ),
        body: Container(
            width: 414,
            height: 896,
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
            child: Stack(children: <Widget>[
              Positioned(
                  top: 243,
                  left: 62,
                  child: Container(
                      width: 298,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 160, 0, 1),
                      ))),
              Positioned(
                  top: 247,
                  left: 66,
                  child: FlatButton(
                      child:Text(
                    'Calories calculation',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'Rokkitt',
                        fontSize: 30,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  ),onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> CaloriesPage()));
                  },)),
              Positioned(
                  top: 520,
                  left: 62,
                  child: Container(
                      width: 298,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 160, 0, 1),
                      ))),
              Positioned(
                  top: 524,
                  left: 105,
                  child: FlatButton(
                    child: Text(
                      'Exercise Plan',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'Rokkitt',
                        fontSize: 30,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1,
                        //backgroundColor: Color.fromRGBO(255, 160, 0, 1)
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ExercisePlan()));
                    },
                  )),
              Positioned(
                  top: 50,
                  left: 141,
                  child: Container(
                      width: 132,
                      height: 142,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/image2.png'),
                            fit: BoxFit.fitWidth),
                      ))),
              Positioned(
                  top: 350,
                  left: 137,
                  child: Container(
                      width: 140,
                      height: 140,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/image3.png'),
                            fit: BoxFit.fitWidth),
                      ))),
            ])));
  }
}

class ExercisePlan extends StatefulWidget {
  @override
  _ExercisePlan createState() => _ExercisePlan();
}

class _ExercisePlan extends State<ExercisePlan> {
  List plan = [
    "-",
    "Running",
    "Swimming",
    "Push-up",
    "Stretching",
    "Freestyle"
  ];
  String mon1, mon2, mon3;
  String tue1, tue2, tue3;
  String wed1, wed2, wed3;
  String thu1, thu2, thu3;
  String fri1, fri2, fri3;
  String sat1, sat2, sat3;
  String sun1, sun2, sun3;
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator Iphone11promax5Widget - FRAME

    return Scaffold(
        appBar: AppBar(
          title: Text('X-Burner: Exercise Plan'),
          backgroundColor: Colors.orange,
        ),
        body: Container(
            width: 414,
            height: 896,
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
            child: Stack(children: <Widget>[
              Positioned(
                  top: 50,
                  left: 28,
                  child: Container(
                      child: Center(
                          child: Text(
                        'Mon',
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.center,
                      )),
                      width: 89,
                      height: 51,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 160, 0, 1),
                      ))),
              Positioned(
                  top: 50,
                  left: 138,
                  child: Container(
                      child: Center(
                          child: DropdownButton(
                        value: mon1,
                        onChanged: (newValue) {
                          setState(() {
                            mon1 = newValue;
                          });
                        },
                        items: plan.map((valuePlan) {
                          return DropdownMenuItem(
                              value: valuePlan,
                              child: Text(
                                valuePlan,
                                style: TextStyle(fontSize: 10),
                                textAlign: TextAlign.center,
                              ));
                        }).toList(),
                        iconSize: 15,
                      )),
                      width: 76,
                      height: 51,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 202, 114, 1),
                      ))),
              Positioned(
                  top: 118,
                  left: 138,
                  child: Container(
                      child: Center(
                          child: DropdownButton(
                        value: tue1,
                        onChanged: (newValue) {
                          setState(() {
                            tue1 = newValue;
                          });
                        },
                        items: plan.map((valuePlan) {
                          return DropdownMenuItem(
                              value: valuePlan,
                              child: Text(
                                valuePlan,
                                style: TextStyle(fontSize: 10),
                                textAlign: TextAlign.center,
                              ));
                        }).toList(),
                        iconSize: 15,
                      )),
                      width: 76,
                      height: 51,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 202, 114, 1),
                      ))),
              Positioned(
                  top: 186,
                  left: 138,
                  child: Container(
                      child: Center(
                          child: DropdownButton(
                        value: wed1,
                        onChanged: (newValue) {
                          setState(() {
                            wed1 = newValue;
                          });
                        },
                        items: plan.map((valuePlan) {
                          return DropdownMenuItem(
                              value: valuePlan,
                              child: Text(
                                valuePlan,
                                style: TextStyle(fontSize: 10),
                                textAlign: TextAlign.center,
                              ));
                        }).toList(),
                        iconSize: 15,
                      )),
                      width: 76,
                      height: 51,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 202, 114, 1),
                      ))),
              Positioned(
                  top: 254,
                  left: 138,
                  child: Container(
                      child: Center(
                          child: DropdownButton(
                        value: thu1,
                        onChanged: (newValue) {
                          setState(() {
                            thu1 = newValue;
                          });
                        },
                        items: plan.map((valuePlan) {
                          return DropdownMenuItem(
                              value: valuePlan,
                              child: Text(
                                valuePlan,
                                style: TextStyle(fontSize: 10),
                                textAlign: TextAlign.center,
                              ));
                        }).toList(),
                        iconSize: 15,
                      )),
                      width: 76,
                      height: 51,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 202, 114, 1),
                      ))),
              Positioned(
                  top: 322,
                  left: 138,
                  child: Container(
                      child: Center(
                          child: DropdownButton(
                        value: fri1,
                        onChanged: (newValue) {
                          setState(() {
                            fri1 = newValue;
                          });
                        },
                        items: plan.map((valuePlan) {
                          return DropdownMenuItem(
                              value: valuePlan,
                              child: Text(
                                valuePlan,
                                style: TextStyle(fontSize: 10),
                                textAlign: TextAlign.center,
                              ));
                        }).toList(),
                        iconSize: 15,
                      )),
                      width: 76,
                      height: 51,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 202, 114, 1),
                      ))),
              Positioned(
                  top: 390,
                  left: 138,
                  child: Container(
                      child: Center(
                          child: DropdownButton(
                        value: sat1,
                        onChanged: (newValue) {
                          setState(() {
                            sat1 = newValue;
                          });
                        },
                        items: plan.map((valuePlan) {
                          return DropdownMenuItem(
                              value: valuePlan,
                              child: Text(
                                valuePlan,
                                style: TextStyle(fontSize: 10),
                                textAlign: TextAlign.center,
                              ));
                        }).toList(),
                        iconSize: 15,
                      )),
                      width: 76,
                      height: 51,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 202, 114, 1),
                      ))),
              Positioned(
                  top: 458,
                  left: 138,
                  child: Container(
                      child: Center(
                          child: DropdownButton(
                        value: sun1,
                        onChanged: (newValue) {
                          setState(() {
                            sun1 = newValue;
                          });
                        },
                        items: plan.map((valuePlan) {
                          return DropdownMenuItem(
                              value: valuePlan,
                              child: Text(
                                valuePlan,
                                style: TextStyle(fontSize: 10),
                                textAlign: TextAlign.center,
                              ));
                        }).toList(),
                        iconSize: 15,
                      )),
                      width: 76,
                      height: 51,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 202, 114, 1),
                      ))),
              Positioned(
                  top: 50,
                  left: 224,
                  child: Container(
                      child: Center(
                          child: DropdownButton(
                        value: mon2,
                        onChanged: (newValue) {
                          setState(() {
                            mon2 = newValue;
                          });
                        },
                        items: plan.map((valuePlan) {
                          return DropdownMenuItem(
                              value: valuePlan,
                              child: Text(
                                valuePlan,
                                style: TextStyle(fontSize: 10),
                                textAlign: TextAlign.center,
                              ));
                        }).toList(),
                        iconSize: 15,
                      )),
                      width: 76,
                      height: 51,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 202, 114, 1),
                      ))),
              Positioned(
                  top: 118,
                  left: 224,
                  child: Container(
                      child: Center(
                          child: DropdownButton(
                        value: tue2,
                        onChanged: (newValue) {
                          setState(() {
                            tue2 = newValue;
                          });
                        },
                        items: plan.map((valuePlan) {
                          return DropdownMenuItem(
                              value: valuePlan,
                              child: Text(
                                valuePlan,
                                style: TextStyle(fontSize: 10),
                                textAlign: TextAlign.center,
                              ));
                        }).toList(),
                        iconSize: 15,
                      )),
                      width: 76,
                      height: 51,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 202, 114, 1),
                      ))),
              Positioned(
                  top: 186,
                  left: 224,
                  child: Container(
                      child: Center(
                          child: DropdownButton(
                        value: wed2,
                        onChanged: (newValue) {
                          setState(() {
                            wed2 = newValue;
                          });
                        },
                        items: plan.map((valuePlan) {
                          return DropdownMenuItem(
                              value: valuePlan,
                              child: Text(
                                valuePlan,
                                style: TextStyle(fontSize: 10),
                                textAlign: TextAlign.center,
                              ));
                        }).toList(),
                        iconSize: 15,
                      )),
                      width: 76,
                      height: 51,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 202, 114, 1),
                      ))),
              Positioned(
                  top: 254,
                  left: 224,
                  child: Container(
                      child: Center(
                          child: DropdownButton(
                        value: thu2,
                        onChanged: (newValue) {
                          setState(() {
                            thu2 = newValue;
                          });
                        },
                        items: plan.map((valuePlan) {
                          return DropdownMenuItem(
                              value: valuePlan,
                              child: Text(
                                valuePlan,
                                style: TextStyle(fontSize: 10),
                                textAlign: TextAlign.center,
                              ));
                        }).toList(),
                        iconSize: 15,
                      )),
                      width: 76,
                      height: 51,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 202, 114, 1),
                      ))),
              Positioned(
                  top: 322,
                  left: 224,
                  child: Container(
                      child: Center(
                          child: DropdownButton(
                        value: fri2,
                        onChanged: (newValue) {
                          setState(() {
                            fri2 = newValue;
                          });
                        },
                        items: plan.map((valuePlan) {
                          return DropdownMenuItem(
                              value: valuePlan,
                              child: Text(
                                valuePlan,
                                style: TextStyle(fontSize: 10),
                                textAlign: TextAlign.center,
                              ));
                        }).toList(),
                        iconSize: 15,
                      )),
                      width: 76,
                      height: 51,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 202, 114, 1),
                      ))),
              Positioned(
                  top: 390,
                  left: 224,
                  child: Container(
                      child: Center(
                          child: DropdownButton(
                        value: sat2,
                        onChanged: (newValue) {
                          setState(() {
                            sat2 = newValue;
                          });
                        },
                        items: plan.map((valuePlan) {
                          return DropdownMenuItem(
                              value: valuePlan,
                              child: Text(
                                valuePlan,
                                style: TextStyle(fontSize: 10),
                                textAlign: TextAlign.center,
                              ));
                        }).toList(),
                        iconSize: 15,
                      )),
                      width: 76,
                      height: 51,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 202, 114, 1),
                      ))),
              Positioned(
                  top: 458,
                  left: 224,
                  child: Container(
                      child: Center(
                          child: DropdownButton(
                        value: sun2,
                        onChanged: (newValue) {
                          setState(() {
                            sun2 = newValue;
                          });
                        },
                        items: plan.map((valuePlan) {
                          return DropdownMenuItem(
                              value: valuePlan,
                              child: Text(
                                valuePlan,
                                style: TextStyle(fontSize: 10),
                                textAlign: TextAlign.center,
                              ));
                        }).toList(),
                        iconSize: 15,
                      )),
                      width: 76,
                      height: 51,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 202, 114, 1),
                      ))),
              Positioned(
                  top: 50,
                  left: 310,
                  child: Container(
                      child: Center(
                          child: DropdownButton(
                        value: mon3,
                        onChanged: (newValue) {
                          setState(() {
                            mon3 = newValue;
                          });
                        },
                        items: plan.map((valuePlan) {
                          return DropdownMenuItem(
                              value: valuePlan,
                              child: Text(
                                valuePlan,
                                style: TextStyle(fontSize: 10),
                                textAlign: TextAlign.center,
                              ));
                        }).toList(),
                        iconSize: 15,
                      )),
                      width: 76,
                      height: 51,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 202, 114, 1),
                      ))),
              Positioned(
                  top: 118,
                  left: 310,
                  child: Container(
                      child: Center(
                          child: DropdownButton(
                        value: tue3,
                        onChanged: (newValue) {
                          setState(() {
                            tue3 = newValue;
                          });
                        },
                        items: plan.map((valuePlan) {
                          return DropdownMenuItem(
                              value: valuePlan,
                              child: Text(
                                valuePlan,
                                style: TextStyle(fontSize: 10),
                                textAlign: TextAlign.center,
                              ));
                        }).toList(),
                        iconSize: 15,
                      )),
                      width: 76,
                      height: 51,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 202, 114, 1),
                      ))),
              Positioned(
                  top: 186,
                  left: 310,
                  child: Container(
                      child: Center(
                          child: DropdownButton(
                        value: wed3,
                        onChanged: (newValue) {
                          setState(() {
                            wed3 = newValue;
                          });
                        },
                        items: plan.map((valuePlan) {
                          return DropdownMenuItem(
                              value: valuePlan,
                              child: Text(
                                valuePlan,
                                style: TextStyle(fontSize: 10),
                                textAlign: TextAlign.center,
                              ));
                        }).toList(),
                        iconSize: 15,
                      )),
                      width: 76,
                      height: 51,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 202, 114, 1),
                      ))),
              Positioned(
                  top: 254,
                  left: 310,
                  child: Container(
                      child: Center(
                          child: DropdownButton(
                        value: thu3,
                        onChanged: (newValue) {
                          setState(() {
                            thu3 = newValue;
                          });
                        },
                        items: plan.map((valuePlan) {
                          return DropdownMenuItem(
                              value: valuePlan,
                              child: Text(
                                valuePlan,
                                style: TextStyle(fontSize: 10),
                                textAlign: TextAlign.center,
                              ));
                        }).toList(),
                        iconSize: 15,
                      )),
                      width: 76,
                      height: 51,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 202, 114, 1),
                      ))),
              Positioned(
                  top: 322,
                  left: 310,
                  child: Container(
                      child: Center(
                          child: DropdownButton(
                        value: fri3,
                        onChanged: (newValue) {
                          setState(() {
                            fri3 = newValue;
                          });
                        },
                        items: plan.map((valuePlan) {
                          return DropdownMenuItem(
                              value: valuePlan,
                              child: Text(
                                valuePlan,
                                style: TextStyle(fontSize: 10),
                                textAlign: TextAlign.center,
                              ));
                        }).toList(),
                        iconSize: 15,
                      )),
                      width: 76,
                      height: 51,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 202, 114, 1),
                      ))),
              Positioned(
                  top: 390,
                  left: 310,
                  child: Container(
                      child: Center(
                          child: DropdownButton(
                        value: sat3,
                        onChanged: (newValue) {
                          setState(() {
                            sat3 = newValue;
                          });
                        },
                        items: plan.map((valuePlan) {
                          return DropdownMenuItem(
                              value: valuePlan,
                              child: Text(
                                valuePlan,
                                style: TextStyle(fontSize: 10),
                                textAlign: TextAlign.center,
                              ));
                        }).toList(),
                        iconSize: 15,
                      )),
                      width: 76,
                      height: 51,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 202, 114, 1),
                      ))),
              Positioned(
                  top: 458,
                  left: 310,
                  child: Container(
                      child: Center(
                          child: DropdownButton(
                        value: sun3,
                        onChanged: (newValue) {
                          setState(() {
                            sun3 = newValue;
                          });
                        },
                        items: plan.map((valuePlan) {
                          return DropdownMenuItem(
                              value: valuePlan,
                              child: Text(
                                valuePlan,
                                style: TextStyle(fontSize: 10),
                                textAlign: TextAlign.center,
                              ));
                        }).toList(),
                        iconSize: 15,
                      )),
                      width: 76,
                      height: 51,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 202, 114, 1),
                      ))),
              Positioned(
                  top: 118,
                  left: 28,
                  child: Container(
                      child: Center(
                          child: Text(
                        'Tue',
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.center,
                      )),
                      width: 89,
                      height: 51,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 160, 0, 1),
                      ))),
              Positioned(
                  top: 186,
                  left: 28,
                  child: Container(
                      child: Center(
                          child: Text(
                        'Wed',
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.center,
                      )),
                      width: 89,
                      height: 51,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 160, 0, 1),
                      ))),
              Positioned(
                  top: 254,
                  left: 28,
                  child: Container(
                      child: Center(
                          child: Text(
                        'Thu',
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.center,
                      )),
                      width: 89,
                      height: 51,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 160, 0, 1),
                      ))),
              Positioned(
                  top: 322,
                  left: 28,
                  child: Container(
                      child: Center(
                          child: Text(
                        'Fri',
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.center,
                      )),
                      width: 89,
                      height: 51,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 160, 0, 1),
                      ))),
              Positioned(
                  top: 390,
                  left: 28,
                  child: Container(
                      child: Center(
                          child: Text(
                        'Sat',
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.center,
                      )),
                      width: 89,
                      height: 51,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 160, 0, 1),
                      ))),
              Positioned(
                  top: 458,
                  left: 28,
                  child: Container(
                      child: Center(
                          child: Text(
                        'Sun',
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.center,
                      )),
                      width: 89,
                      height: 51,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 160, 0, 1),
                      ))),
              Positioned(
                  top: 30,
                  left: 144,
                  child: Text(
                    'Morning',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'Rokkitt',
                        fontSize: 18,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  )),
              Positioned(
                  top: 30,
                  left: 224,
                  child: Text(
                    'Afternoon',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'Rokkitt',
                        fontSize: 18,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  )),
              Positioned(
                  top: 30,
                  left: 317,
                  child: Text(
                    'Evening',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'Rokkitt',
                        fontSize: 18,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  )),
            ])));
  }
}
class CaloriesPage extends StatefulWidget {
  @override
  _CaloriesPageState createState() => _CaloriesPageState();
}

class _CaloriesPageState extends State<CaloriesPage> {
  double poids;
  int calorieBase;
  int calorieActivite;
  bool genre = false;
  double age;
  double taille = 170.0;
  int ExerciseSelection;
  Map mapActivite = {
    0: "Running",
    1: "Swimming",
    2: "Push-up",
    3: "Stretching",
  };

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
        onTap: (() => FocusScope.of(context).requestFocus(new FocusNode())),
        child: new Scaffold(
          appBar: AppBar(
          title: Text("Calories Calculation"),
            backgroundColor: setColor(),
          ),
          body: Center(
            child: new SingleChildScrollView(
              padding: EdgeInsets.all(15.0),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  padding(),
                  texteAvecStyle("Fill in all the fields to get your daily calorie requirement"),
                  padding(),
                  new Card(
                    elevation: 10.0,
                    child: new Column(
                      children: <Widget>[
                        padding(),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            texteAvecStyle("Female", color: Colors.pink),
                            new Switch(
                                value: genre,
                                inactiveTrackColor: Colors.pink,
                                activeTrackColor: Colors.blue,
                                onChanged: (bool b) {
                                  setState(() {
                                    genre = b;
                                  });
                                }),
                            texteAvecStyle("Male", color: Colors.blue)
                          ],
                        ),
                        padding(),
                        new RaisedButton(
                          onPressed: () => montrerPicker(),
                          color: setColor(),
                          child: texteAvecStyle(
                            age == null ? "Enter your age" : "Your age is : ${age.toInt()} years",
                            color: Colors.white,),

                        ),
                        padding(),
                        texteAvecStyle("Your Height : ${taille.toInt()} cm.", color: setColor()),
                        padding(),
                        new Slider(
                            value: taille,
                            min: 100.0,
                            max: 215.0,
                            activeColor: setColor(),
                            onChanged: (double d) {
                              setState(() {
                                taille = d;
                              });
                            }),
                        padding(),
                        new TextField(
                          keyboardType: TextInputType.number,
                          onChanged: (String str) {
                            setState(() {
                              poids = double.tryParse(str);
                            });
                          },
                          decoration: new InputDecoration(
                              labelText: "Enter your weight (Kg.)"
                          ),
                        ),
                        padding(),
                        texteAvecStyle("Exercise Activity ?", color: setColor()),
                        padding(),
                        rowRadio()
                      ],
                    ),
                  ),
                  padding(),
                  new RaisedButton(
                      color: setColor(),
                      child: texteAvecStyle("Calculate", color: Colors.white),
                      onPressed: calculaterNumberOfCalories)
                ],
              ),
            ),
          ),
        )
    );
  }

  Row rowRadio() {
    List<Widget> l = [];
    mapActivite.forEach((key, value) {
      Column colonne = new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Radio(
              value: key,
              activeColor: setColor(),
              groupValue: ExerciseSelection,
              onChanged: (Object i) {
                setState(() {
                  ExerciseSelection = i;
                });
              }),
          texteAvecStyle(value, color: setColor())
        ],
      );
      l.add(colonne);
    });
    return new Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: l,
    );
  }

  Padding padding() {
    return new Padding(padding: EdgeInsets.only(top: 20));
  }

  Future<Null> montrerPicker() async{
    DateTime choix = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(1900),
        lastDate: new DateTime.now(),
        initialDatePickerMode: DatePickerMode.year
    );
    if (choix != null) {
      Duration difference = new DateTime.now().difference(choix);
      int jours = difference.inDays;
      setState(() {
        age = jours / 365;
      });
    }
  }

  Color setColor() {
    return Colors.orange;
  }

  Text texteAvecStyle(String data, {color: Colors.black, fontSize: 15.0}) {
    return new Text(
      data,
      textAlign: TextAlign.center,
      style: new TextStyle(
          color: color,
          fontSize: fontSize),
    );
  }

  void calculaterNumberOfCalories() {
    if (age != null && poids != null && ExerciseSelection != null) {
      if (genre)
        calorieBase = (66.4730 + (13.7516 * poids) + (5.0033 * taille) - (6.7550 * age)).toInt();
      else
        calorieBase = (655.0955 + (9.5634 * poids) + (1.8496 * taille) - (4.6756 * age)).toInt();
      switch(ExerciseSelection) {
        case 0:
          calorieActivite = 353;
          break;
        case 1:
          calorieActivite = 280;
          break;
        case 2:
          calorieActivite = 210;
          break;
        case 3:
          calorieActivite =  85;
          break;
        default:
          calorieActivite = 0;
          break;
      }
      setState(() {
        dialog();
      });
    } else{
      alert();
    }
  }

  Future<Null> dialog() async {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext bc) {
          return SimpleDialog(
            title: texteAvecStyle("Your calories need", color: setColor()),
            children: <Widget>[
              padding(),
              texteAvecStyle("Basic calories need : ${calorieBase}"),
              padding(),
              texteAvecStyle("30 mins of your select activity burn around: $calorieActivite"),
              padding(),
              new RaisedButton(
                  color: setColor(),
                  child: texteAvecStyle('OK', color: Colors.white),
                  onPressed: () {
                    Navigator.pop(context);
                  })
            ],
          );
        }
    );
  }

  Future<Null> alert() async {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext buildContext) {
          return new AlertDialog(
            title: texteAvecStyle("Error!"),
            content: texteAvecStyle("Please fill all the provide section"),
          actions: <Widget>[
              new FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: texteAvecStyle("OK", color: Colors.red)
              )
            ],
          );
        }
    );
  }
}