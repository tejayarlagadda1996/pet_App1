import 'package:flutter/material.dart';
import 'package:pet_app/Login/model/DynamicTextFieldModel.dart';

class DynamicTextField extends StatefulWidget {
  final int length;
  final Function(DynamicTextfieldActionType) onAction;
  final List<DynamicTextFieldModel> dynamicModel;
  final Function(List<String>) onDataFilled;

  const DynamicTextField({
    super.key,
    required this.length,
    required this.onAction,
    required this.dynamicModel,
    required this.onDataFilled,
  });

  @override
  DynamicTextfieldState createState() => DynamicTextfieldState();
}

class DynamicTextfieldState extends State<DynamicTextField> {
  late List<TextEditingController> controllers;
  late List<String?> dropdownvalues;

  @override
  void initState() {
    super.initState();
    controllers =
        List.generate(widget.length, (index) => TextEditingController());
    dropdownvalues = List.generate(widget.length, (index) => null);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: widget.length,
          itemBuilder: (context, index) {
            if (widget.dynamicModel[index].actionType ==
                DynamicTextfieldActionType.dropdown) {
              return Padding(
                padding: const EdgeInsets.all(12.0),
                child: DropdownButtonFormField<String>(
                  value: dropdownvalues[index],
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalues[index] = newValue;
                    });
                  },
                  items: widget.dynamicModel[index].dropdownItems
                      ?.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  decoration: InputDecoration(
                    hintText: widget.dynamicModel[index].placeholderText,
                    hintStyle: const TextStyle(color: Colors.grey),
                    labelText: widget.dynamicModel[index].placeholderText,
                    labelStyle: const TextStyle(color: Colors.grey),
                    enabledBorder: widget.dynamicModel[index].enabledBorder ??
                        const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                    focusedBorder: widget.dynamicModel[index].focusedBorder ??
                        const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.1),
                    contentPadding:
                        const EdgeInsets.all(10),
                  ),
                ),
              );
            } else {
              return Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  controller: controllers[index],
                  obscureText: widget.dynamicModel[index].obscureText,
                  onTap: () {
                    widget.onAction(widget.dynamicModel[index].actionType);
                  },
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    hintText: widget.dynamicModel[index].placeholderText,
                    hintStyle: const TextStyle(color: Colors.grey),
                    labelText: widget.dynamicModel[index].placeholderText,
                    labelStyle: const TextStyle(color: Colors.grey),
                    enabledBorder: widget.dynamicModel[index].enabledBorder ??
                        const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                    focusedBorder: widget.dynamicModel[index].focusedBorder ??
                        const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.1),
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                    suffixIcon: Icon(
                      widget.dynamicModel[index].icon,
                      color: Colors.white,
                    ),
                  ),
                  readOnly: widget.dynamicModel[index].actionType ==
                          DynamicTextfieldActionType.dropdown
                      ? true
                      : false,
                  keyboardType: widget.dynamicModel[index].actionType ==
                          DynamicTextfieldActionType.dropdown
                      ? null
                      : widget.dynamicModel[index].actionType == 
                        // DynamicTextfieldActionType.multiline
                        // ?TextInputType.multiline
                        // :widget.dynamicModel[index].actionType==
                            DynamicTextfieldActionType.text
                              ? TextInputType.text
                              : TextInputType.number,   
                ),
              );
            }
          },
        ),
      ],
    );
  }

  @override
  void dispose() {
    for (var controller in controllers) {
      controller.dispose();
    }
    super.dispose();
  }
}
