import 'package:flutter/material.dart';

class SendForm extends StatefulWidget {
  @override
  State<SendForm> createState() => _SendFormState();
}

class _SendFormState extends State<SendForm> {
  final _options1 = ["My Number", "Any"];
  final _options2 = ["320XXXX220", "Any"];
  String? _selectedOption;
  String? _selectedOption2;

  TextEditingController _amount_controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _amount_controller = TextEditingController(text: "1000");
  }

  @override
  void dispose() {
    _amount_controller.dispose();
    super.dispose();
  }

  void _submit() {
    final amount = _amount_controller.text;
    print("Amount is: $amount");
    // context.read<FormBloc>().add(AmountTextChanged(value));
    _amount_controller.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 20),
          // first dropdown
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.account_balance_wallet),
                SizedBox(width: 8),
                Expanded(
                  child: DropdownButton<String>(
                    elevation: 0,
                    dropdownColor: Colors.grey.shade200,
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectedOption = newValue;
                      });
                    },
                    value: _selectedOption,
                    items:
                        _options1.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                    underline: Container(),
                    isExpanded: true,
                    iconSize: 32,
                    hint: Text(
                      "Select an option",
                      style: TextStyle(color: Colors.grey.shade500),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),

          // second dropdown
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.account_balance),
                SizedBox(width: 8),
                Expanded(
                  child: DropdownButton<String>(
                    elevation: 0,
                    dropdownColor: Colors.grey.shade200,
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectedOption2 = newValue;
                      });
                    },
                    value: _selectedOption2,
                    items:
                        _options2.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                    underline: Container(),
                    isExpanded: true,
                    iconSize: 32,
                    hint: Text(
                      "Select an option",
                      style: TextStyle(color: Colors.grey.shade500),
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 20),

          // amount field
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "UGX",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    controller: _amount_controller,
                    // onChanged:
                    //     (value) => {
                    //       context.read<FormBloc>().add(
                    //         AmountTextChanged(value),
                    //       ),
                    //     },
                    decoration: InputDecoration(
                      hintText: "Amount",
                      hintStyle: TextStyle(color: Colors.grey.shade500),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          // narration field
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Narration",
                      hintStyle: TextStyle(color: Colors.grey.shade500),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 20),
          // PIN field
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.lock),
                SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "PIN",
                      hintStyle: TextStyle(color: Colors.grey.shade500),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Divider(
            color: Colors.grey,
            thickness: 1,
            height: 35, // space above and below
          ),

          SizedBox(
            width: MediaQuery.of(context).size.width * 0.95,

            child: TextButton(
              onPressed: _submit,
              // onPressed: () {
              //   context.read<FormBloc>().add(FormSubmitted());
              // },
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 13),
                backgroundColor: Color(0xFF1877F2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Border radius here
                ),
              ),
              child: Text(
                "Send".toUpperCase(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}