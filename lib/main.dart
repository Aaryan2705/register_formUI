import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:register_form1/WelcomePage.dart';


void main()
{
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isPasswordVisible = false;
  TextEditingController nameController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void _register()

  // String? validateField(String? value, String fieldName) {
  //   if (value == null || value.isEmpty) {
  //     return '$fieldName is required';
  //   }
  //   return null;
  // }
  //
  // void _register() {
  //   // Validate all fields
  //   String? nameError = validateField(nameController.text, 'Name');
  //   String? contactError = validateField(contactController.text, 'Contact');
  //   String? emailError = validateField(emailController.text, 'Email');
  //   String? passwordError = validateField(passwordController.text, 'Password');
  //
  //   if (nameError != null || contactError != null || emailError != null || passwordError != null) {
  //     // Display an error message
  //     showDialog(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return AlertDialog(
  //           title: Text('Error'),
  //           content: Text('All fields are mandatory'),
  //           actions: [
  //             TextButton(
  //               onPressed: () {
  //                 Navigator.of(context).pop();
  //               },
  //               child: Text('OK'),
  //             ),
  //           ],
  //         );
  //       },
  //     );
  //   } else {
  //     // Process registration since all fields are filled
  //     print('Registration successful');
  //   }
  // }
  { }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFFDCEDC8)),

      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar : AppBar(
          centerTitle: true,
            backgroundColor: Colors.red,
            title : Text ("Login",style: TextStyle(color: Colors.white),)),



        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(height: 10),
            Text (" Register Form",style: TextStyle(color: Colors.black ,fontWeight: FontWeight.bold, fontSize: 25),),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(width: 8,),
                Text("Name", style: TextStyle(fontSize: 17 , fontWeight: FontWeight.bold) , ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(6),
              child: TextField (
                controller: nameController ,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.supervised_user_circle),
                    hintText: 'Enter Your Name',
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                              color: Colors.deepOrange
                          )
                      ),
                      border: OutlineInputBorder(


                  ),
                  ),
                textCapitalization: TextCapitalization.words,
              ),
            ),
            // SizedBox(height: 0),
            // Text("data"),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                children: [
                  Text("Contact", style: TextStyle(fontSize:17 ,fontWeight: FontWeight.bold) ,),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.all(6),
              child: TextFormField (
              maxLength: 10,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.contacts),
                    labelText: "Enter your contact",
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.deepOrange
                        )
                    ),
                      enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(

                      ),

                  )
              )),
            ),

            Row(
              children: [
                SizedBox(width: 8,),
                Text("Email", style: TextStyle(fontSize:17 ,fontWeight: FontWeight.bold) ,),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(7),
              child: TextFormField(
                controller: emailController ,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Enter you Email ID',
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.deepOrange
                      )
                  ),

                  // labelText: "Email",
                  border: OutlineInputBorder(


                  ),

                  prefixIcon: Icon(Icons.email),

                ),
              ),
            ),
            Row(
              children: [
                SizedBox(width: 8,),
                Text("Password", style: TextStyle(fontSize:17 , fontWeight: FontWeight.bold) ,),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(7),
              child: TextFormField (
                  decoration: InputDecoration(


                    hintText: 'Enter Your Password',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(

                      )
                    ),
                      focusedBorder: OutlineInputBorder(

                          borderSide: BorderSide(
                              color: Colors.deepOrange

                          )
                      ),

                      prefixIcon: Icon(Icons.security),
                    suffixIcon: IconButton(
                      icon: _isPasswordVisible
                          ? Icon(Icons.visibility_off, color: Colors.blue)
                          : Icon(Icons.visibility, color: Colors.blue),
                      onPressed: () {
                        // Toggle the visibility of the password
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                    ),
                  ),
                obscureText: !_isPasswordVisible, // Toggle based on password visibility
              ),
            ),
            SizedBox(height: 128),


              Padding(
                padding: const EdgeInsets.all(7),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.blue),

                  child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.white,// Background color
                            ),

                  child: Text('Register'),
                            onPressed: () {

                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>WelcomePage(name: nameController.text , email : emailController.text )));
                  print ('You are done '); }),



                ),
              ),



          ],),
        )
      ),
    );
  }
}
