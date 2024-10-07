import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:qtim_problem/core/utils/utils.dart';

//modalSheet который дает пользователю выбор загрузки картинки
class ImagePick {
  static void selectImg(
    BuildContext context,
    Function(
      BuildContext context,
      ImageSource imageSource,
      Function(CroppedFile croppedImage),
    ) savingImage,
    bool isEmptyAvatar,
    Function(CroppedFile croppedImage) croppedImage,
  ) {
    final s = S.of(context);
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
                          color: Colors.grey.shade300,
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
                            savingImage(
                              context,
                              ImageSource.gallery,
                              croppedImage,
                            );
                            modalContext.pop();
                          },
                          child: Column(
                            children: [
                              const Icon(
                                Icons.image,
                                size: 45,
                                color: Color(0xFF3D37E2),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                s.gallery,
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.titleMedium,
                              )
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            savingImage(
                              context,
                              ImageSource.camera,
                              croppedImage,
                            );
                            modalContext.pop();
                          },
                          child: Column(
                            children: [
                              const Icon(
                                Icons.camera_alt,
                                size: 45,
                                color: Color(0xFF3D37E2),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                s.camera,
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.titleMedium,
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
                                  const Icon(
                                    Icons.remove_circle_rounded,
                                    size: 45,
                                    color: Colors.red,
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    s.deleteAvatar,
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                  )
                                ],
                              ),
                            ),
                          )
                        : const SizedBox()
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
