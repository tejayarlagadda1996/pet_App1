import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_app/Login/Controller/LoginFormController.dart';
import 'package:pet_app/Login/model/DynamicTextFieldModel.dart';

class DynamicTextField extends StatefulWidget {
  final int length;
  final Function(DynamicTextfieldActionType) onAction;
  final List<DynamicTextFieldModel> dynamicModel;
  final Function(List<RxString>) onDataFilled;

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
  late final LoginFormController formController;

  @override
  void initState() {
    super.initState();
    formController = Get.put(LoginFormController(widget.length));
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginFormController>(
      builder: (_) {
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
                      value: formController.dropdownValues[index].value,
                      onChanged: (String? newValue) {
                        formController.updateDropdownValue(index, newValue!);
                      },
                      items: widget.dynamicModel[index].dropdownItems
                          ?.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      decoration: InputDecoration(
                        labelText: widget.dynamicModel[index].placeholderText,
                        labelStyle: const TextStyle(color: Colors.grey),
                        enabledBorder: widget.dynamicModel[index].enabledBorder ??
                            const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                        focusedBorder: widget.dynamicModel[index].focusedBorder ??
                            const UnderlineInputBorder(
                              borderSide: BorderSide(color: Color.fromRGBO(237, 109, 78, 1)),
                            ),
                        filled: true,
                        fillColor: Colors.grey.withOpacity(0.1),
                        contentPadding:const EdgeInsets.all(10),
                      ),
                    ),
                  );
                } else {
                  return Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextFormField(
                      controller: formController.textValues[index],
                      obscureText: widget.dynamicModel[index].obscureText,
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        labelText: widget.dynamicModel[index].placeholderText,
                        labelStyle: const TextStyle(color: Colors.grey),
                        enabledBorder: widget.dynamicModel[index].enabledBorder ??
                            const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                        focusedBorder: widget.dynamicModel[index].focusedBorder ??
                            const UnderlineInputBorder(
                              borderSide: BorderSide(color:Color.fromRGBO(237, 109, 78, 1)),
                            ),
                        filled: true,
                        fillColor: Colors.grey.withOpacity(0.1),
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                        suffixIcon: widget.dynamicModel[index].icon!=null?
                        IconButton(
                          onPressed: (){
                            setState(() {
                              widget.dynamicModel[index].obscureText=!widget.dynamicModel[index].obscureText;
                            });
                          },
                          icon: Icon( widget.dynamicModel[index].obscureText
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Colors.grey,),
                          color: Colors.grey,
                        ):null,
                      ),
                      readOnly: widget.dynamicModel[index].actionType ==
                              DynamicTextfieldActionType.dropdown
                          ? true
                          : false,
                      keyboardType: widget.dynamicModel[index].actionType ==
                              DynamicTextfieldActionType.dropdown
                          ? null
                          : widget.dynamicModel[index].actionType == 
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
    );
  }
}

