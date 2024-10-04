import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:qtim_problem/screens/product/view/product_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  static const routeName = 'profile';

  @override
  Widget build(BuildContext context) {
    return const _ProfileView();
  }
}

class _ProfileView extends StatefulWidget {
  const _ProfileView();

  @override
  State<_ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<_ProfileView> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();

  final RegExp emailRegExp = RegExp(
    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
  );

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Введите email';
    } else if (!emailRegExp.hasMatch(value)) {
      return 'Некорректный email';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      appBar: const EmptyAppBar(
        systemUiOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Color(0xFFFAFAFA),
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      body: CustomScrollView(
        slivers: [
          const CustomAppBar(),
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
                    // Другие поля для редактирования профиля
                    const TextField(
                      decoration: InputDecoration(
                        labelText: 'Имя пользователя',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      validator: _validateEmail,
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    IntlPhoneField(
                      decoration: const InputDecoration(
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
                    // const Spacer(),
                    const SizedBox(height: 20),
                    FilledButton(
                      onPressed: () {
                        // Логика сохранения данных профиля
                        if (_formKey.currentState?.validate() ?? false) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Email валиден'),
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
                      child: Text('Сохранить изменения'),
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

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 250,
      pinned: true,
      floating: false,
      title: Text(
        'Профиль',
        style: Theme.of(context).textTheme.headlineSmall,
      ),
      backgroundColor: const Color(0xFFFAFAFA),
      flexibleSpace: const FlexibleSpaceBar(
        background: AvatarView(),
      ),
    );
  }
}

class AvatarView extends StatelessWidget {
  const AvatarView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            customBorder: const CircleBorder(),
            onTap: () {},
            child: DecoratedBox(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey.shade300,
                  width: 3.5,
                ),
              ),
              child: const SizedBox(
                height: 110,
                width: 110,
                child: Center(
                  child: Icon(
                    Icons.person,
                    size: 60,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          FilledButton(
            onPressed: () async {
              ImagePick.selectImg(context, pick, false);
            },
            style: FilledButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text('Выбрать фото'),
          )
        ],
      ),
    );
  }

  void pick(BuildContext context, ImageSource imageSource) {
    ImagePicker image = ImagePicker();
    image.pickImage(source: imageSource).then((pickImage) {
      if (pickImage != null) {
        ImageCropper imageCropper = ImageCropper();
        imageCropper
            .cropImage(
          sourcePath: pickImage.path,
          uiSettings: [
            AndroidUiSettings(
              cropStyle: CropStyle.circle,
              toolbarTitle: 'Cropper',
              toolbarColor: Theme.of(context).primaryColor,
              toolbarWidgetColor: Colors.white,
              aspectRatioPresets: [
                CropAspectRatioPreset.original,
                CropAspectRatioPreset.square,
                CropAspectRatioPreset.ratio4x3,
              ],
            ),
            IOSUiSettings(
              title: 'Cropper',
              cropStyle: CropStyle.circle,
              aspectRatioPresets: [
                CropAspectRatioPreset.original,
                CropAspectRatioPreset.square,
                CropAspectRatioPreset.ratio4x3,
                // IMPORTANT: iOS supports only one custom aspect ratio in preset list
              ],
            ),
          ],
          compressQuality: 50,
        )
            .then((cropImage) {
          if (cropImage != null) {
            if (!context.mounted) return;
            // setState(() {
            //   file = cropperImage.path;
            // });
          }
        });
      }
    });
  }
}

class ImagePick {
  static void selectImg(
    BuildContext context,
    Function(BuildContext context, ImageSource imageSource) savingImage,
    bool isEmptyAvatar,
  ) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        useRootNavigator: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        builder: (BuildContext modalContext) {
          return DraggableScrollableSheet(
              expand: false,
              minChildSize: 0.30,
              maxChildSize: 0.30,
              initialChildSize: 0.30,
              builder: (builderContext, scrollController) {
                return SingleChildScrollView(
                  controller: scrollController,
                  child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Column(
                        children: [
                          Center(
                            child: Container(
                              width: 44,
                              height: 5,
                              decoration: BoxDecoration(
                                color:  Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(3),
                              ),
                            ),
                          ),
                          const SizedBox(height: 25),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                onTap: () {
                                  savingImage(context, ImageSource.gallery);
                                  modalContext.pop();
                                },
                                child: Column(
                                  children: [
                                    const Icon(Icons.image,
                                        size: 45, color: Color(0xFF3D37E2)),
                                    const SizedBox(height: 8),
                                    Text(
                                      'Галерея',
                                      textAlign: TextAlign.center,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium,
                                    )
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  savingImage(context, ImageSource.camera);
                                  modalContext.pop();
                                },
                                child: Column(
                                  children: [
                                    const Icon(Icons.camera_alt,
                                        size: 45, color: Color(0xFF3D37E2)),
                                    const SizedBox(height: 8),
                                    Text(
                                      'Камера',
                                      textAlign: TextAlign.center,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 20),
                          isEmptyAvatar
                              ? Center(
                                  child: InkWell(
                                    onTap: () {
                                      modalContext.pop();
                                    },
                                    child: Column(
                                      children: [
                                        const Icon(Icons.remove_circle_rounded,
                                            size: 45, color: Colors.red),
                                        const SizedBox(height: 8),
                                        Text(
                                          'Удалить аватарку',
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium,
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              : const SizedBox()
                        ],
                      )),
                );
              });
        });
  }
}
