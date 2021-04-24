import 'package:flutter/material.dart';

const users = const {
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
    ));

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
                  top: 254,
                  left: 82,
                  child: Text(
                    'Calories calculation',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'Rokkitt',
                        fontSize: 30,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  )),
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
