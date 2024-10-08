import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:qtim_problem/core/utils/utils.dart';
import 'package:qtim_problem/core/widgets/widgets.dart';
import 'package:qtim_problem/screens/profile/widgets/widgets.dart';
import 'package:repository/implementations/implementations.dart';

//Экран профиль
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  static const routeName = 'profile';

  @override
  Widget build(BuildContext context) {
    return const _ProfileView();
  }
}

class _ProfileView extends ConsumerStatefulWidget {
  const _ProfileView();

  @override
  ConsumerState<_ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends ConsumerState<_ProfileView> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _userNameController = TextEditingController();
  final _phoneNumberController = TextEditingController();

  final RegExp emailRegExp = RegExp(
    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
  );

  //Валидирует email
  String? _validateEmail(String? value) {
    final s = S.of(context);
    if (value == null || value.isEmpty) {
      return s.enterEmail;
    } else if (!emailRegExp.hasMatch(value)) {
      return s.incorrectEmail;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final userRef = ref.watch(userProvider);

    _userNameController.text = userRef?.name ?? "";
    _emailController.text = userRef?.email ?? "";
    _phoneNumberController.text = userRef?.phone ?? "";
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      appBar: const EmptyAppBar(),
      body: CustomScrollView(
        slivers: [
          //Aватарка
          const ProfileSliverAppbar(),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 24,
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    //Имя пользователя
                    TextField(
                      controller: _userNameController,
                      decoration: InputDecoration(
                        labelText: s.userName,
                        border: const OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 20),
                    //Почта пользователя
                    TextFormField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      validator: _validateEmail,
                      decoration: InputDecoration(
                        labelText: s.email,
                        border: const OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    //Номер телефон пользователя, можно выбрать
                    IntlPhoneField(
                      controller: _phoneNumberController,
                      invalidNumberMessage: s.invalidPhoneNumber,
                      decoration: InputDecoration(
                        labelText: s.phoneNumber,
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                      ),
                      initialCountryCode: 'RU',
                      onChanged: (phone) {
                        log(phone.completeNumber);
                      },
                    ),
                    // const Spacer(),
                    const SizedBox(height: 20),
                    FilledButton(
                      onPressed: () {
                        // Логика сохранения данных профиля
                        FocusManager.instance.primaryFocus?.unfocus();
                        if ((_formKey.currentState?.validate() ?? false) &&
                            userRef != null) {
                          ref.read(userProvider.notifier).updateUser(
                                userRef.copyWith(
                                  name: _userNameController.text,
                                  email: _emailController.text,
                                  phone: _phoneNumberController.text,
                                ),
                              );
                        }
                      },
                      style: FilledButton.styleFrom(
                        fixedSize: const Size.fromHeight(45),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(s.saveChanges),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
