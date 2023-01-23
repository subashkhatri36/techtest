import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:techtest/Widgets/check_box.dart';
import 'package:techtest/Widgets/heading_with_divider.dart';
import 'package:techtest/Widgets/tech_button.dart';
import 'package:techtest/Widgets/tech_card.dart';
import 'package:techtest/core/dimension.dart';
import 'package:techtest/utils/strings.dart';
import 'package:techtest/utils/vertical_size.dart';

class AddPhotoToDiaryContainer extends StatefulWidget {
  const AddPhotoToDiaryContainer({super.key});

  @override
  State<AddPhotoToDiaryContainer> createState() =>
      _AddPhotoToDiaryContainerState();
}

class _AddPhotoToDiaryContainerState extends State<AddPhotoToDiaryContainer> {
  bool includePhotoIntoGalaryCheck = true;

  final ImagePicker imgpicker = ImagePicker();
  List<XFile>? imagefiles;
  List<String> imageList = [];

  openImages() async {
    try {
      var pickedfiles = await imgpicker.pickMultiImage();
      //you can use ImageCourse.camera for Camera capture
      if (pickedfiles != null) {
        print('this is he');
        imagefiles = pickedfiles;
        print(imagefiles?.isEmpty);
        imageList.clear();
        for (int i = 0; i < (imagefiles?.length ?? 0); i++) {
          imageList.add(imagefiles![i].path);
          print(imagefiles![i].path);
        }

        setState(() {});
      } else {
        print("No image is selected.");
      }
    } catch (e) {
      print("error while picking file.");
    }
  }

  removeImageList(int index) {
    imageList.removeAt(index);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return TechCard(
      [
        const HeadingText(addPhotoToSiteDiary),
        if (imageList.isNotEmpty)
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 80,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: imageList.length,
                itemBuilder: (context, index) {
                  String path = imageList[index];
                  return Padding(
                    padding: const EdgeInsets.only(
                        right: paddingHorizontal / 2,
                        bottom: paddingVertical / 2),
                    child: SizedBox(
                      width: 60,
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Image.network(
                              path,
                              width: 50,
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 5,
                            child: InkWell(
                              onTap: () => removeImageList(index),
                              child: const Icon(
                                Icons.cancel_rounded,
                                color: Color(0xFF000000),
                                size: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        TechButton(
          addPhoto,
          onPressed: () {
            openImages();
          },
        ),
        const VerticalGap(),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(includeInPhotoGallery),
              TechCheckBox(
                value: includePhotoIntoGalaryCheck,
                onchange: (value) {
                  setState(() {
                    includePhotoIntoGalaryCheck = value ?? false;
                  });
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
