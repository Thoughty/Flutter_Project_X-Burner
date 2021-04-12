import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 100.0,
        child: Image.asset('assets/logo.png',width: 200,height: 200,),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'Warat_Admin@gmail.com',
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      initialValue: 'some password',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Menu()));
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
      onPressed: () {},
    );

    final newMember = FlatButton(
      child: Row(mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
            Text('No Account ?',style: TextStyle(color: Colors.black45)),
        Text(' Sign up here',style: TextStyle(color: Colors.orangeAccent),)
      ],)

    );

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
class Menu extends StatefulWidget {
  @override
  _Menu createState() => _Menu();
}

class _Menu extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator Iphone11promax3Widget - FRAME

    return Container(
        width: 414,
        height: 896,
        decoration: BoxDecoration(
          color : Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Stack(
            children: <Widget>[
              Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                      width: 414,
                      height: 113,
                      decoration: BoxDecoration(
                        color : Color.fromRGBO(255, 160, 0, 1),
                      )
                  )
              ),Positioned(
                  top: 20,
                  left: 84,
                  child: Text('X-Burner', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Rokkitt',
                      fontSize: 64,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),Positioned(
                  top: 340,
                  left: 58,
                  child: Container(
                      width: 298,
                      height: 50,
                      decoration: BoxDecoration(
                        color : Color.fromRGBO(255, 160, 0, 1),
                      )
                  )
              ),Positioned(
                  top: 348,
                  left: 82,
                  child: Text('Calories calculation', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Rokkitt',
                      fontSize: 30,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),Positioned(
                  top: 574,
                  left: 58,
                  child: Container(
                      width: 298,
                      height: 50,
                      decoration: BoxDecoration(
                        color : Color.fromRGBO(255, 160, 0, 1),
                      )
                  )

              ),Positioned(
                  top: 574,
                  left: 58,
                  child: Container(
                      width: 298,
                      height: 50,
                      decoration: BoxDecoration(
                        color : Color.fromRGBO(255, 160, 0, 1),
                      )
                  )
              ),Positioned(
                  top: 582,
                  left: 105,
                  child: FlatButton(
                  child: Text('Exercise Plan', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Rokkitt',
                      fontSize: 30,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),),onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ExercisePlan()));
                  },
                  )
              ),Positioned(
                  top: 184,
                  left: 141,
                  child: Container(
                      width: 132,
                      height: 142,
                      decoration: BoxDecoration(
                        image : DecorationImage(
                            image: AssetImage('assets/image2.png'),
                            fit: BoxFit.fitWidth
                        ),
                      )
                  )
              ),Positioned(
                  top: 429,
                  left: 137,
                  child: Container(
                      width: 140,
                      height: 140,
                      decoration: BoxDecoration(
                        image : DecorationImage(
                            image: AssetImage('assets/image3.png'),
                            fit: BoxFit.fitWidth
                        ),
                      )
                  )
              ),
            ]
        )
    );
  }
}
class ExercisePlan extends StatefulWidget {
  @override
  _ExercisePlan createState() => _ExercisePlan();
}

class _ExercisePlan extends State<ExercisePlan> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator Iphone11promax5Widget - FRAME

    return Container(
        width: 414,
        height: 896,
        decoration: BoxDecoration(
          color : Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Stack(
            children: <Widget>[
              Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                      width: 414,
                      height: 113,
                      decoration: BoxDecoration(
                        color : Color.fromRGBO(255, 160, 0, 1),
                      )
                  )
              ),Positioned(
                  top: 20,
                  left: 84,
                  child: Text('X-Burner', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Rokkitt',
                      fontSize: 64,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),Positioned(
                  top: 228,
                  left: 28,
                  child: Container(
                      width: 89,
                      height: 51,
                      decoration: BoxDecoration(
                        color : Color.fromRGBO(255, 160, 0, 1),
                      )
                  )
              ),Positioned(
                  top: 228,
                  left: 138,
                  child: Container(
                      width: 76,
                      height: 51,
                      decoration: BoxDecoration(
                        color : Color.fromRGBO(255, 202, 114, 1),
                      )
                  )
              ),Positioned(
                  top: 296,
                  left: 138,
                  child: Container(
                      width: 76,
                      height: 51,
                      decoration: BoxDecoration(
                        color : Color.fromRGBO(255, 202, 114, 1),
                      )
                  )
              ),Positioned(
                  top: 364,
                  left: 138,
                  child: Container(
                      width: 76,
                      height: 51,
                      decoration: BoxDecoration(
                        color : Color.fromRGBO(255, 202, 114, 1),
                      )
                  )
              ),Positioned(
                  top: 433,
                  left: 138,
                  child: Container(
                      width: 76,
                      height: 51,
                      decoration: BoxDecoration(
                        color : Color.fromRGBO(255, 202, 114, 1),
                      )
                  )
              ),Positioned(
                  top: 500,
                  left: 138,
                  child: Container(
                      width: 76,
                      height: 51,
                      decoration: BoxDecoration(
                        color : Color.fromRGBO(255, 202, 114, 1),
                      )
                  )
              ),Positioned(
                  top: 572,
                  left: 138,
                  child: Container(
                      width: 76,
                      height: 51,
                      decoration: BoxDecoration(
                        color : Color.fromRGBO(255, 202, 114, 1),
                      )
                  )
              ),Positioned(
                  top: 636,
                  left: 138,
                  child: Container(
                      width: 76,
                      height: 51,
                      decoration: BoxDecoration(
                        color : Color.fromRGBO(255, 202, 114, 1),
                      )
                  )
              ),Positioned(
                  top: 228,
                  left: 224,
                  child: Container(
                      width: 76,
                      height: 51,
                      decoration: BoxDecoration(
                        color : Color.fromRGBO(255, 202, 114, 1),
                      )
                  )
              ),Positioned(
                  top: 296,
                  left: 224,
                  child: Container(
                      width: 76,
                      height: 51,
                      decoration: BoxDecoration(
                        color : Color.fromRGBO(255, 202, 114, 1),
                      )
                  )
              ),Positioned(
                  top: 364,
                  left: 224,
                  child: Container(
                      width: 76,
                      height: 51,
                      decoration: BoxDecoration(
                        color : Color.fromRGBO(255, 202, 114, 1),
                      )
                  )
              ),Positioned(
                  top: 433,
                  left: 224,
                  child: Container(
                      width: 76,
                      height: 51,
                      decoration: BoxDecoration(
                        color : Color.fromRGBO(255, 202, 114, 1),
                      )
                  )
              ),Positioned(
                  top: 500,
                  left: 224,
                  child: Container(
                      width: 76,
                      height: 51,
                      decoration: BoxDecoration(
                        color : Color.fromRGBO(255, 202, 114, 1),
                      )
                  )
              ),Positioned(
                  top: 572,
                  left: 224,
                  child: Container(
                      width: 76,
                      height: 51,
                      decoration: BoxDecoration(
                        color : Color.fromRGBO(255, 202, 114, 1),
                      )
                  )
              ),Positioned(
                  top: 636,
                  left: 224,
                  child: Container(
                      width: 76,
                      height: 51,
                      decoration: BoxDecoration(
                        color : Color.fromRGBO(255, 202, 114, 1),
                      )
                  )
              ),Positioned(
                  top: 228,
                  left: 310,
                  child: Container(
                      width: 76,
                      height: 51,
                      decoration: BoxDecoration(
                        color : Color.fromRGBO(255, 202, 114, 1),
                      )
                  )
              ),Positioned(
                  top: 296,
                  left: 310,
                  child: Container(
                      width: 76,
                      height: 51,
                      decoration: BoxDecoration(
                        color : Color.fromRGBO(255, 202, 114, 1),
                      )
                  )
              ),Positioned(
                  top: 364,
                  left: 310,
                  child: Container(
                      width: 76,
                      height: 51,
                      decoration: BoxDecoration(
                        color : Color.fromRGBO(255, 202, 114, 1),
                      )
                  )
              ),Positioned(
                  top: 433,
                  left: 310,
                  child: Container(
                      width: 76,
                      height: 51,
                      decoration: BoxDecoration(
                        color : Color.fromRGBO(255, 202, 114, 1),
                      )
                  )
              ),Positioned(
                  top: 500,
                  left: 310,
                  child: Container(
                      width: 76,
                      height: 51,
                      decoration: BoxDecoration(
                        color : Color.fromRGBO(255, 202, 114, 1),
                      )
                  )
              ),Positioned(
                  top: 572,
                  left: 310,
                  child: Container(
                      width: 76,
                      height: 51,
                      decoration: BoxDecoration(
                        color : Color.fromRGBO(255, 202, 114, 1),
                      )
                  )
              ),Positioned(
                  top: 636,
                  left: 310,
                  child: Container(
                      width: 76,
                      height: 51,
                      decoration: BoxDecoration(
                        color : Color.fromRGBO(255, 202, 114, 1),
                      )
                  )
              ),Positioned(
                  top: 296,
                  left: 28,
                  child: Container(
                      width: 89,
                      height: 51,
                      decoration: BoxDecoration(
                        color : Color.fromRGBO(255, 160, 0, 1),
                      )
                  )
              ),Positioned(
                  top: 364,
                  left: 28,
                  child: Container(
                      width: 89,
                      height: 51,
                      decoration: BoxDecoration(
                        color : Color.fromRGBO(255, 160, 0, 1),
                      )
                  )
              ),Positioned(
                  top: 432,
                  left: 28,
                  child: Container(
                      width: 89,
                      height: 51,
                      decoration: BoxDecoration(
                        color : Color.fromRGBO(255, 160, 0, 1),
                      )
                  )
              ),Positioned(
                  top: 500,
                  left: 28,
                  child: Container(
                      width: 89,
                      height: 51,
                      decoration: BoxDecoration(
                        color : Color.fromRGBO(255, 160, 0, 1),
                      )
                  )
              ),Positioned(
                  top: 568,
                  left: 28,
                  child: Container(
                      width: 89,
                      height: 51,
                      decoration: BoxDecoration(
                        color : Color.fromRGBO(255, 160, 0, 1),
                      )
                  )
              ),Positioned(
                  top: 636,
                  left: 28,
                  child: Container(
                      width: 89,
                      height: 51,
                      decoration: BoxDecoration(
                        color : Color.fromRGBO(255, 160, 0, 1),
                      )
                  )
              ),Positioned(
                  top: 208,
                  left: 144,
                  child: Text('Morning', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Rokkitt',
                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),Positioned(
                  top: 208,
                  left: 224,
                  child: Text('Afternoon', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Rokkitt',
                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),Positioned(
                  top: 208,
                  left: 317,
                  child: Text('Evening', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Rokkitt',
                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),Positioned(
                  top: 242,
                  left: 54,
                  child: Text('Mon', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Rokkitt',
                      fontSize: 20,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),Positioned(
                  top: 310,
                  left: 54,
                  child: Text('Tue', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Rokkitt',
                      fontSize: 20,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),Positioned(
                  top: 378,
                  left: 49,
                  child: Text('Wed', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Rokkitt',
                      fontSize: 20,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),Positioned(
                  top: 446,
                  left: 54,
                  child: Text('Thu', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Rokkitt',
                      fontSize: 20,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),Positioned(
                  top: 514,
                  left: 54,
                  child: Text('Fri', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Rokkitt',
                      fontSize: 20,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),Positioned(
                  top: 582,
                  left: 54,
                  child: Text('Sat', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Rokkitt',
                      fontSize: 20,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),Positioned(
                  top: 650,
                  left: 54,
                  child: Text('Sun', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Rokkitt',
                      fontSize: 20,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              )
              ,Positioned(
                  top: 245,
                  left: 161,
                  child: Text('Run', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Rokkitt',
                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),Positioned(
                  top: 245,
                  left: 247,
                  child: Text('-', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Rokkitt',
                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),Positioned(
                  top: 245,
                  left: 325,
                  child: Text('Sit up', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Rokkitt',
                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),Positioned(
                  top: 313,
                  left: 161,
                  child: Text('- ', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Rokkitt',
                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),Positioned(
                  top: 314,
                  left: 227,
                  child: Text('Push up', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Rokkitt',
                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),Positioned(
                  top: 313,
                  left: 333,
                  child: Text('-', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Rokkitt',
                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),Positioned(
                  top: 381,
                  left: 161,
                  child: Text('-', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Rokkitt',
                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),Positioned(
                  top: 381,
                  left: 247,
                  child: Text('-', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Rokkitt',
                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),Positioned(
                  top: 381,
                  left: 333,
                  child: Text('-', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Rokkitt',
                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),Positioned(
                  top: 448,
                  left: 153,
                  child: Text('Sit up', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Rokkitt',
                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),Positioned(
                  top: 449,
                  left: 247,
                  child: Text('Run', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Rokkitt',
                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),Positioned(
                  top: 449,
                  left: 333,
                  child: Text('-', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Rokkitt',
                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),Positioned(
                  top: 515,
                  left: 231,
                  child: Text('Push up', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Rokkitt',
                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),Positioned(
                  top: 515,
                  left: 161,
                  child: Text('-', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Rokkitt',
                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),Positioned(
                  top: 517,
                  left: 333,
                  child: Text('-', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Rokkitt',
                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),Positioned(
                  top: 585,
                  left: 161,
                  child: Text('-', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Rokkitt',
                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),Positioned(
                  top: 585,
                  left: 247,
                  child: Text('-', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Rokkitt',
                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),Positioned(
                  top: 585,
                  left: 333,
                  child: Text('-', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Rokkitt',
                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),Positioned(
                  top: 653,
                  left: 149,
                  child: Text('Pull up', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Rokkitt',
                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),Positioned(
                  top: 653,
                  left: 247,
                  child: Text('-', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Rokkitt',
                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),Positioned(
                  top: 653,
                  left: 333,
                  child: Text('Run', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Rokkitt',
                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),Positioned(
                  top: 742,
                  left: 63,
                  child: Container(
                      width: 288,
                      height: 59,
                      decoration: BoxDecoration(
                        color : Color.fromRGBO(255, 160, 0, 1),
                      )
                  )
              ),Positioned(
                  top: 759,
                  left: 123,
                  child: Text('Final Calculation', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Rokkitt',
                      fontSize: 24,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),
            ]
        )
    );
  }
}
