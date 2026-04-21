import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TextFormFieldWidget extends StatefulWidget {
  const TextFormFieldWidget({super.key});

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  FocusNode ofOne = FocusNode();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'TextFormField',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 40),
                    decoration: BoxDecoration(
                      color: Color(
                        0xFFFAFAFA,
                      ).withValues(alpha: 0.3), //color with transparency
                      border: Border.all(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      spacing: 16,
                      children: [
                        //heading text
                        Column(
                          spacing: 4,
                          children: [
                            Text(
                              'Welcome Back!',
                              style: TextStyle(
                                color: Colors.deepOrange,
                                fontSize: 24,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            Text(
                              'Sign In to Continue',
                              style: TextStyle(
                                color: Color(0xFF292D32),
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                        //textFormfield
                        TextFormField(
                          controller: _emailController,
                          //focusNode: FocusNode(),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xFFF5F5F5),
                            focusColor: Color(0xFFF5F5F5),
                            prefixIcon: Icon(Icons.mail_rounded),
                            prefixIconColor: Colors.deepOrange,
                            labelText: 'Email',
                            labelStyle: TextStyle(
                              color: Colors.black87,
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            ),
                            hintText: 'Enter your Email Address',
                            hintStyle: TextStyle(
                              color: Color(0xFF808080),
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            ),
                            /*errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                width: 1,
                                color: Colors.red,
                              ),
                            )*/
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                width: 1,
                                color: Color(0xFF808080),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                width: 1,
                                color: Colors.deepOrange,
                              ),
                            ),
                          ),
                        ),
                        //Password
                        TextFormField(
                          controller: _passwordController,
                          //focusNode: FocusNode(),
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            prefixIconColor: Colors.deepOrange,
                            labelText: 'Password',
                            labelStyle: TextStyle(
                              color: Colors.black87,
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            ),
                            hintText: 'Enter Your Password',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                width: 1,
                                color: Colors.grey,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                width: 1,
                                color: Colors.deepOrange,
                              ),
                            ),
                          ),
                        ),
                        //Password
                        TextFormField(
                          controller: _confirmPasswordController,
                          //focusNode: FocusNode(),
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            prefixIconColor: Colors.deepOrange,
                            labelText: 'Confrim Password',
                            labelStyle: TextStyle(
                              color: Colors.black87,
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            ),
                            hintText: 'Re-enter Your Password',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                width: 1,
                                color: Colors.grey,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                width: 1,
                                color: Colors.deepOrange,
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              spacing: 4,
                              children: [
                                Icon(Icons.check_box, color: Colors.deepOrange),
                                Text(
                                  'Remember me',
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'Forgot Password?',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          spacing: 12,
                          children: [
                            SizedBox(
                              height: 48,
                              width: double.infinity,
                              child: FilledButton(
                                onPressed: () {
                                  //login
                                },
                                style: ButtonStyle(
                                  backgroundColor: WidgetStatePropertyAll(
                                    Colors.deepOrange,
                                  ),
                                  
                                ),
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                          width: double.infinity,
                          height: 48,
                          child: OutlinedButton(
                            onPressed: () {
                              //Continue As a guest
                            },
                            style: ButtonStyle(
                              side: WidgetStatePropertyAll(
                                BorderSide(color: Colors.deepOrange, width: 2),
                              ),
                            ),
                            child: Text(
                              'Continue as a Guest',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.deepOrange,
                              ),
                            ),
                          ),
                        ),
                          ],
                        ),
                        //SizedBox(height:12),
                        Text(
                          'Or',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: 48,
                              height: 48,
                              decoration: BoxDecoration(
                                color: Colors.white.withValues(alpha:0.4),
                                borderRadius: BorderRadius.circular(12),

                              ),
                              child: SvgPicture.asset(
                                'assets/icons/facebook.svg',
                                width: 24,
                                height: 24,
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 48,
                              height: 48,
                              decoration: BoxDecoration(
                                color: Colors.white.withValues(alpha:0.4),
                                borderRadius: BorderRadius.circular(12),

                              ),
                              child: SvgPicture.asset(
                                'assets/icons/apple.svg',
                                width: 24,
                                height: 24,
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 48,
                              height: 48,
                              decoration: BoxDecoration(
                                color: Colors.white.withValues(alpha:0.4),
                                borderRadius: BorderRadius.circular(12),

                              ),
                              child: SvgPicture.asset(
                                'assets/icons/Google.svg',
                                width: 24,
                                height: 24,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
