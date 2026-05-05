import 'package:flutter/material.dart';
import 'package:nacttac_summerofcode3/pink_button.dart';

class InputSelection extends StatefulWidget {
  const InputSelection({super.key});

  @override
  State<InputSelection> createState() => _InputSelectionState();
}

class _InputSelectionState extends State<InputSelection> {
  bool isOff = false;

  String groupvalueSelection = 'Male';

  String teachar = 'Talha Iqbal';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(100.0),
        child: Column(
          children: [
            //input selection
            Checkbox(
              value: isOff,
              onChanged: (value) {
                isOff = value!;
                setState(() {});
              },
            ),

            RadioListTile(
              value: 'Male',
              groupValue: groupvalueSelection,
              title: Text('Male'),
              onChanged: (value) {
                setState(() {
                  groupvalueSelection = value!;
                });
              },
            ),
            Radio(
              value: 'Male',
              onChanged: (value) {
                setState(() {
                  groupvalueSelection = value!;
                });
              },
              groupValue: groupvalueSelection,
            ),
            Radio(
              value: 'Female',
              groupValue: groupvalueSelection,
              onChanged: (value) {
                setState(() {
                  groupvalueSelection = value!;
                });
              },
            ),

            DropdownButton<String>(
              value: teachar,
              items: ['Talha Iqbal', 'Shehzad', 'Hassan']
                  .map(
                    (item) => DropdownMenuItem(value: item, child: Text(item)),
                  )
                  .toList(),
              onChanged: (value) {
                setState(() {
                  teachar = value!;
                });
              },
            ),
            PinkButton(ontap: () {}),
            SizedBox(height: 10),
            PinkButton(ontap: () {}),
            SizedBox(height: 10),
            PinkButton(ontap: () {}),
            SizedBox(height: 10),
            PinkButton(ontap: () {}),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
