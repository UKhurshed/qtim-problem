import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:qtim_problem/core/utils/utils.dart';
import 'package:qtim_problem/screens/profile/widgets/widgets.dart';
import 'package:repository/implementations/implementations.dart';

class AvatarView extends ConsumerWidget {
  const AvatarView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s = S.of(context);
    final avatar = ref.watch(avatarsProvider);

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
              child: SizedBox(
                height: 110,
                width: 110,
                child: avatar == null
                    ? const Center(
                        child: Icon(
                          Icons.person,
                          size: 60,
                        ),
                      )
                    : ClipOval(
                      child: Image.memory(
                          avatar.image,
                          fit: BoxFit.cover,
                        ),
                    ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          FilledButton(
            onPressed: () async {
              ImagePick.selectImg(
                context,
                pick,
                false,
                (croppedImage) async {
                  final bytes = await croppedImage.readAsBytes();
                  ref.read(avatarsProvider.notifier).addAvatar(bytes);
                },
              );
            },
            style: FilledButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text(s.selectPhoto),
          )
        ],
      ),
    );
  }

  void pick(
    BuildContext context,
    ImageSource imageSource,
    Function(CroppedFile imagePath) croppedImage,
  ) {
    ImagePicker image = ImagePicker();
    image.pickImage(source: imageSource).then(
      (pickImage) {
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
              .then(
            (cropImage) {
              if (cropImage != null) {
                if (!context.mounted) return;
                croppedImage(cropImage);
              }
            },
          );
        }
      },
    );
  }
}
