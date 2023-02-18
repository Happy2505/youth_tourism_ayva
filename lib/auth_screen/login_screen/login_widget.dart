import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../main_screen/main_widget.dart';
import '../password_recovery_screen/password_recovery_widget.dart';
import '../personal_information/personal_lnformation_widget.dart';
import '../../Theme/app_color.dart';
import 'login_model.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.read<LoginModel>();
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text(
          'Вход',
          style: TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.w400),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_outlined,
            color: Colors.black,
            size: 25,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView(
          children: [
            const SizedBox(height: 35),
            const Text(
              'Электронная почта',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: model.loginTextController,
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "example@mail.ru",
                isCollapsed: true,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 13, horizontal: 16),
                helperStyle: const TextStyle(
                  letterSpacing: 0.4,
                  height: 0.7,
                ),
                labelStyle: const TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(150, 0, 0, 0),
                  fontSize: 18,
                ),
                border: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: AppColors.colorTextInTextField),
                    borderRadius: BorderRadius.circular(20)),
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: AppColors.colorTextInTextField),
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Пароль',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: model.passwordTextController,
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: "•••••",
                isCollapsed: true,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 13, horizontal: 16),
                helperStyle: const TextStyle(
                  letterSpacing: 0.4,
                  height: 0.7,
                ),
                labelStyle: const TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(150, 0, 0, 0),
                  fontSize: 18,
                ),
                border: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: AppColors.colorTextInTextField),
                    borderRadius: BorderRadius.circular(20)),
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: AppColors.colorTextInTextField),
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
            Align(
              child: const _ErrorMessageWidget(),
            ),
            Align(
              alignment: Alignment.center,
              child: TextButton(
                child: const Text(
                  'Забыли пароль?',
                  style: TextStyle(
                      fontSize: 11, color: Color.fromARGB(255, 148, 148, 148)),
                ),
                onPressed: () {
                  Navigator.of(context).push(CupertinoPageRoute(
                      builder: (context) => const PasswordRecoveryWidget()));
                },
              ),
            ),
            _AuthButtonWidget(),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.of(context).push(CupertinoPageRoute(
            //         builder: (context) => MainScreenWidget()));
            //   },
            //   style: ButtonStyle(
            //       shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            //           RoundedRectangleBorder(
            //               borderRadius: BorderRadius.circular(30))),
            //       elevation: MaterialStateProperty.all(0),
            //       backgroundColor:
            //           MaterialStateProperty.all(AppColors.MainButtonColor),
            //       minimumSize: MaterialStateProperty.all(const Size(312, 40))),
            //   child: const Text(
            //     'Войти',
            //     style: TextStyle(
            //         letterSpacing: 0.1,
            //         fontSize: 14,
            //         color: Colors.white,
            //         fontWeight: FontWeight.w500),
            //   ),
            // ),
            SizedBox(height: 10),
            Align(
                child: Text(
              'Войти с помощью',
              style: TextStyle(
                  fontSize: 11, color: Color.fromARGB(255, 96, 96, 96)),
            )),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(180),
                      color: AppColors.MainButtonColor),
                  child: Image.asset('assets/vk.png'),
                ),
                SizedBox(width: 25),
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(180),
                      color: AppColors.MainButtonColor),
                  child: Image.asset('assets/gos.png'),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height - 520),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: TextButton(
                  child: const Text(
                    'Нажимая, вы соглашаетесь c правилами обработки и передачи данных',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 11,
                        decoration: TextDecoration.underline,
                        color: Color.fromARGB(255, 148, 148, 148),
                        fontWeight: FontWeight.w400),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(CupertinoPageRoute(
                        builder: (context) => PersonalInformationWidget()));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class _AuthButtonWidget extends StatelessWidget {
  const _AuthButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.read<LoginModel>();
    final child = model.isAuthProgress
        ? const CircularProgressIndicator(strokeWidth: 2)
        : const Text('Войти',
            style: TextStyle(
                letterSpacing: 0.1,
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.w500));
    final onPressed = model.canStartAuth ? () => model.auth(context) : null;
    return ElevatedButton(
      style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30))),
          elevation: MaterialStateProperty.all(0),
          backgroundColor:
          MaterialStateProperty.all(AppColors.MainButtonColor),
          minimumSize: MaterialStateProperty.all(const Size(312, 40))),
      onPressed: onPressed,
      child: child,
    );
  }
}

class _ErrorMessageWidget extends StatelessWidget {
  const _ErrorMessageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final errorMessage = context.select((LoginModel m) => m.errorMessage);
    if (errorMessage == null) return const SizedBox.shrink();

    return Padding(
      padding: const EdgeInsets.only(bottom: 0,top: 10),
      child: Text(
        errorMessage,
        style: const TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w700,
          color: Color.fromARGB(255, 219, 0, 0),
        ),
      ),
    );
  }
}
