import 'package:final_widget/customTextField.dart';
import 'package:flutter/material.dart';

class UseCustomTextField extends StatefulWidget {

  @override
  State<UseCustomTextField> createState() => _UseCustomTextFieldState();
}

class _UseCustomTextFieldState extends State<UseCustomTextField> {
  var EmailController=TextEditingController();
  var passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Custom TextField"),),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              validator: (value){
                if(value==""){
                  return "please fill the email field";
                }else if(!value!.contains("@")){
                  return "please enter an valid email";
                }
                return null;
              },

              controller: EmailController,
            onChanged: (value2){},
              decoration: UIBase.getCustomDecoration(
                  hint: "Enter email here",
                  lable: "Email",
                mPrifixIcon: Icons.account_balance,
                mSufixIcon: Icons.remove_red_eye_outlined,

              ),

            ),
            SizedBox(height: 90,),

            TextFormField(
              validator: (value) {
                if(value==""){
                  return "please fill password field";
                }else if(value!.length<4){
                  return "please enter an valid password must contains at least 5 character";
                }
                return null;
              },
              controller: passwordController,
              obscureText: true,
              obscuringCharacter: "*",
              onChanged: (value3){},

              decoration: UIBase.getCustomDecoration(
                  hint: "Enter Valid Password",
                  lable: "Password",
                mPrifixIcon: Icons.password,
                bColor: Colors.red,
                bRadius: 20,
                mFillColor: Colors.purple,
                mSufixIcon:isPasswordVisible ? Icons.visibility:Icons.visibility_off,
                onSuffixIconTap: (){
                    isPasswordVisible =! isPasswordVisible;
                    setState(() {

                    });
                }



              ),




            )
          ],
        ),
      ),
    );
  }
}
