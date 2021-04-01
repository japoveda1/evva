import 'package:evva_app/brand_colors.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                SizedBox(height: 70,),
                Image(
                  alignment: Alignment.center,
                  height: 100.0,
                  width: 100.0,
                  image: AssetImage('images/logo.png'),
                ),

                SizedBox(height: 40,),

                Text('Ingresa a tu cuenta como pasajera',
                  textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25, fontFamily: 'Brand-Bold'),
                ),

                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[

                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            labelText: 'Dirección de correo electronico',
                            labelStyle: TextStyle(
                              fontSize: 14.0,
                            ),
                            hintStyle: TextStyle(
                                color: Colors.deepPurple,
                                fontSize: 10.0
                            )
                        ),
                        style: TextStyle(fontSize: 14),
                      ),

                      SizedBox(height: 10,),

                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: 'Contraseña',
                            labelStyle: TextStyle(
                              fontSize: 14.0,
                            ),
                            hintStyle: TextStyle(
                                color: Colors.deepPurple,
                                fontSize: 10.0
                            )
                        ),
                        style: TextStyle(fontSize: 14),
                      ),

                      SizedBox(height: 40,),

                      Container(
                        height: 50,
                        child: ElevatedButton(
                          child: Center(
                            child: Text(
                              'Entrar',
                              style: TextStyle(color: Colors.white, fontSize: 18, fontFamily: 'Brand-Bold'),
                            ),
                          ),
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25)
                                ),
                              ),
                              backgroundColor:
                              MaterialStateProperty.resolveWith((states) {
                                if(states.contains(MaterialState.pressed))
                                  return Colors.green;
                                return BrandColors.colorButtons;
                              })),
                        ),
                      )

                    ],
                  ),
                ),

              TextButton(
                onPressed: (){},
                  child: Text('¿No tienes una cuenta? Registrate aquí'),
              )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
