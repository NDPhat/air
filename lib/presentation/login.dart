import 'package:ari/presentation/home.dart';
import 'package:ari/widget/input_field_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height,
            color: Colors.grey.withOpacity(0.5),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: size.width * 0.9,
              height: size.height * 0.6,
              padding: EdgeInsets.only(top: size.height*0.05,bottom: size.height*0.05 ),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white),
              child: Column(
                children: [
                  Container(
                    width: size.width * 0.8,
                    height: size.height * 0.05,
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Đăng nhập",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: size.height*0.03,
                  ),
                  InputFieldWidget(
                    width: size.width * 0.8,
                    height: size.height * 0.08,
                    hintText: "Địa chỉ Email",
                  ),
                  SizedBox(
                    height: size.height*0.03,
                  ),
                  InputFieldWidget(
                      width: size.width * 0.8,
                      height: size.height * 0.08,
                      hintText: "Mật khẩu",
                      iconRight: const Icon(Icons.visibility_off)),
                  SizedBox(
                    height: size.height*0.02,
                  ),
                  SizedBox(
                    height: size.height * 0.08,
                    width: size.width*0.8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: size.width * 0.4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: size.width * 0.05,
                                height: size.height * 0.02,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        const BorderRadius.all(Radius.circular(5)),
                                    border: Border.all(color: Colors.green)),
                              ),
                              const Text(
                                "Ghi nhớ đăng nhâp",
                                style: TextStyle(
                                    color: Colors.grey, fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: size.width * 0.3,
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "Quên mật khẩu?",
                            style: TextStyle(
                                color: Colors.green, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const HomePage()));
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.all(Radius.circular(20))),
                        width: size.width * 0.8,
                        height: size.height * 0.08,
                        child: const Center(
                            child: Text(
                          "Đăng nhập",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        )),
                      )),
                  Container(
                    alignment: Alignment.center,
                    height: size.height * 0.05,
                    width: size.width,
                    child: const Center(
                        child: Row(
                      children: [
                        Text(
                          "Ban chưa có tài khoản ?",
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                        Text(
                          "Đăng ký",
                          style: TextStyle(color: Colors.green, fontSize: 14),
                        ),
                      ],
                    )),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
