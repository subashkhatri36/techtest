import 'package:flutter/material.dart';
import 'package:techtest/Widgets/heading_with_divider.dart';
import 'package:techtest/Widgets/models/drop_down_model.dart';
import 'package:techtest/Widgets/tech_button.dart';
import 'package:techtest/Widgets/tech_card.dart';
import 'package:techtest/Widgets/tech_drop_down.dart';
import 'package:techtest/Widgets/tech_page.dart';
import 'package:techtest/core/dimension.dart';
import 'package:techtest/features/Diary/Widget/add_comment.dart';
import 'package:techtest/features/Diary/Widget/add_photo_card_contaianer.dart';
import 'package:techtest/features/Diary/Widget/detail_container.dart';
import 'package:techtest/utils/horizontal_size.dart';
import 'package:techtest/utils/strings.dart';
import 'package:techtest/utils/vertical_size.dart';
import 'package:go_router/go_router.dart';

class AddDiaryPage extends StatefulWidget {
  const AddDiaryPage({super.key});

  @override
  State<AddDiaryPage> createState() => _AddDiaryPageState();
}

class _AddDiaryPageState extends State<AddDiaryPage> {
  bool isLinkToExistingEvent = true;
  String eventValue = selectEvent;
  final eventList = [
    DropDownItemListValue(selectEvent, selectEvent),
    DropDownItemListValue('1', 'Event 1'),
    DropDownItemListValue('2', 'Event 2'),
  ];
  @override
  Widget build(BuildContext context) {
    return TechPage(
      appBar: AppBar(
        backgroundColor: const Color(0xFF000000),
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(Icons.close),
        ),
        title: const Text(newDiaryTitle),
      ),
      body: Column(
        children: [
          //Location of User
          const LocationWidget(),
          Expanded(
            child: ColoredBox(
              color: const Color(0xFFF1F5F7),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: paddingHorizontal / 1.3,
                    vertical: paddingVertical / 2),
                child: ListView(
                  children: [
                    //intro title
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          addToSiteDiary,
                          style:
                              Theme.of(context).textTheme.headline1?.copyWith(
                                    fontSize: 24,
                                  ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.help,
                              color: Color(0xFF9A9A9A),
                            ))
                      ],
                    ),
                    const VerticalGap(),
                    //adding multiple photo
                    const AddPhotoToDiaryContainer(),

                    //comment section
                    const CommentField(),

                    //adding post information
                    const DetailContainer(),

                    //Work with links
                    TechCard([
                      HeadingText(
                        linkToExistingEvent,
                        isCheckBox: true,
                        value: isLinkToExistingEvent,
                        onChange: (value) {
                          setState(() {
                            isLinkToExistingEvent = value ?? false;
                          });
                        },
                      ),
                      TechDropDown(
                        value: eventValue,
                        dataList: eventList,
                        onChanged: (value) {
                          setState(() {
                            eventValue = value ?? '';
                          });
                        },
                      ),
                      const VerticalGap(),
                    ]),

                    const VerticalGap(),
                    TechButton(
                      next,
                      onPressed: () {},
                    ),
                    const VerticalGap(),
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

class LocationWidget extends StatelessWidget {
  const LocationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: paddingVertical),
      child: Row(
        children: const [
          Icon(Icons.location_on),
          HorizontalSize(
            width: 5,
          ),
          Text('20041075 | TAP-NS TAP-NOrth Strathfield'),
        ],
      ),
    );
  }
}
