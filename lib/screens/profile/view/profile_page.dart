import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  static const routeName = 'profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250.0,
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Профиль пользователя'),
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    'https://example.com/user-avatar.jpg',
                    // Замените на реальный путь к аватарке
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 20.0,
                    left: 20.0,
                    child: FloatingActionButton(
                      onPressed: () {
                        // Логика для изменения аватарки
                      },
                      child: Icon(Icons.camera_alt),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Поле Email с валидацией
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                      errorText: null, // Добавить логику валидации
                    ),
                    onChanged: (value) {
                      // Логика валидации email
                    },
                  ),
                  SizedBox(height: 20.0),
                  IntlPhoneField(
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                    ),
                    initialCountryCode: 'RU',
                    onChanged: (phone) {
                      log(phone.completeNumber);
                    },
                  ),
                  SizedBox(height: 20.0),

                  // Другие поля для редактирования профиля
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Имя пользователя',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20),

                  FilledButton(
                    onPressed: () {
                      // Логика сохранения данных профиля
                    },
                    style: FilledButton.styleFrom(
                      fixedSize: const Size.fromHeight(45),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text('Сохранить изменения'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
