import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app_flutter2/bloc/mtn_form/mtn_form_bloc.dart';
import 'package:test_app_flutter2/bloc/mtn_form/mtn_form_event.dart';
import 'package:test_app_flutter2/bloc/mtn_form/mtn_form_state.dart';

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
  TextEditingController _narration_controller = TextEditingController();
  TextEditingController _pin_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<MtnFormBloc>(context);

    return BlocConsumer(
      bloc: bloc,
      listener: (context, state) {},
      builder: (context, state) {
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
                            _options1.map<DropdownMenuItem<String>>((
                              String value,
                            ) {
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
                            _options2.map<DropdownMenuItem<String>>((
                              String value,
                            ) {
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
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: TextField(
                        controller: _amount_controller,
                        keyboardType: TextInputType.numberWithOptions(
                          decimal: true,
                        ),
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
                        controller: _narration_controller,
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
                        maxLength: 4,
                        keyboardType: TextInputType.number,
                        controller: _pin_controller,
                        decoration: InputDecoration(
                          hintText: "PIN",
                          counterText: "",
                          hintStyle: TextStyle(color: Colors.grey.shade500),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Divider(color: Colors.grey, thickness: 1, height: 35),

              SizedBox(
                width: MediaQuery.of(context).size.width * 0.95,

                child: TextButton(
                  onPressed:
                      () => {
                        bloc.add(
                          MtnFormSubmitEvent(
                            wallet: "",
                            bankAccount: "",
                            amount: _amount_controller.text,
                            narration: _narration_controller.text,
                            PIN: _pin_controller.text,
                          ),
                        ),
                      },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 13),
                    backgroundColor: Color(0xFF1877F2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child:
                      state is MtnFormLoading
                          ? SizedBox(
                            width: 20,
                            height: 21,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              color: Colors.white,
                            ),
                          )
                          : Text(
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
      },
    );
  }
}
