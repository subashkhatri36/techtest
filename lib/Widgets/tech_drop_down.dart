import 'package:flutter/material.dart';
import 'package:techtest/Widgets/models/drop_down_model.dart';

class TechDropDown extends StatefulWidget {
  const TechDropDown(
      {super.key, this.value = '', this.dataList, this.onChanged});
  final String value;
  final List<DropDownItemListValue>? dataList;
  final Function(String?)? onChanged;

  @override
  State<TechDropDown> createState() => _TechDropDownState();
}

class _TechDropDownState extends State<TechDropDown> {
  @override
  Widget build(BuildContext context) {
    final newItemsList = widget.dataList ?? [DropDownItemListValue('', '')];
    return DropdownButtonFormField(
      validator: (value) => value,
      value: widget.value,
      onChanged: widget.onChanged,
      items: [
        for (int i = 0; i < newItemsList.length; i++)
          DropdownMenuItem(
            value: newItemsList[i].value,
            child: Text(newItemsList[i].text),
          ),
      ],
    );
  }
}
