import 'package:flutter/material.dart';
import 'package:techtest/Widgets/heading_with_divider.dart';
import 'package:techtest/Widgets/input_field.dart';
import 'package:techtest/Widgets/models/drop_down_model.dart';
import 'package:techtest/Widgets/tech_card.dart';
import 'package:techtest/Widgets/tech_drop_down.dart';
import 'package:techtest/core/dimension.dart';
import 'package:techtest/utils/strings.dart';
import 'package:techtest/utils/vertical_size.dart';

class DetailContainer extends StatefulWidget {
  const DetailContainer({super.key});

  @override
  State<DetailContainer> createState() => _DetailContainerState();
}

class _DetailContainerState extends State<DetailContainer> {
  String selectAreaValue = selectArea;
  String taskCategoryValue = taskCategory;
  DateTime selectedDate = DateTime.now();
  final arealist = [
    DropDownItemListValue(selectArea, selectArea),
    DropDownItemListValue('1', 'Area 1'),
    DropDownItemListValue('2', 'Area 2'),
  ];
  final taskCateogryList = [
    DropDownItemListValue(taskCategory, taskCategory),
    DropDownItemListValue('1', 'Category 1'),
    DropDownItemListValue('2', 'Category 2'),
  ];

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2023),
        lastDate: DateTime(2030),
        builder: (context, child) {
          return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: const ColorScheme.light(
                primary: Colors.green, // <-- SEE HERE
                onPrimary: Colors.white, // <-- SEE HERE
                onSurface: Colors.black, // <-- SEE HERE
              ),
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.green,
                ),
              ),
            ),
            child: child!,
          );
        });
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return TechCard(
      [
        const HeadingText(details),
        Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(
            vertical: paddingVertical - 5,
          ),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 2.0,
                color: Colors.grey.shade300,
              ),
            ),
            // color: Colors.white,
          ),
          child: InkWell(
            onTap: () => _selectDate(context),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${selectedDate.toLocal()}".split(' ')[0],
                ),
                const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black,
                  size: 30,
                ),
              ],
            ),
          ),
        ),
        const VerticalGap(),
        TechDropDown(
          value: selectAreaValue,
          dataList: arealist,
          onChanged: (value) {
            setState(() {
              selectAreaValue = value ?? '';
            });
          },
        ),
        const VerticalGap(),
        TechDropDown(
          value: taskCategoryValue,
          dataList: taskCateogryList,
          onChanged: (value) {
            setState(() {
              taskCategoryValue = value ?? '';
            });
          },
        ),
        const InputField(
          hintText: tags,
        ),
      ],
    );
  }
}
