import 'package:flutter/material.dart';
import 'package:foodnamamain/global_widgets/appbars.dart';
import 'package:foodnamamain/global_widgets/appdialogs.dart';
import 'package:foodnamamain/global_widgets/form_widgets.dart';
import 'package:foodnamamain/modules/customers/screens/customer_list_screen.dart';

// ignore: must_be_immutable
class AddCustomerScreen extends StatefulWidget {
  Map<String, dynamic>? arguments;
  AddCustomerScreen({super.key, required this.arguments});

  @override
  State<AddCustomerScreen> createState() => _AddCustomerScreenState();
}

class _AddCustomerScreenState extends State<AddCustomerScreen> {
  TextEditingController customerNameController = TextEditingController();
  TextEditingController customerContactController = TextEditingController();
  TextEditingController customerAddressController = TextEditingController();
  TextEditingController customerAgeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBarsWidgets.appBarVer2(
        title: Text(widget.arguments!.containsKey('title')
            ? widget.arguments!['title']
            : "Add New Customer"),
      ),
      body: ListView(
        children: [
          FormWidgets.getTextFormField(
              controller: customerNameController,
              formEnabled: true,
              prefixIcon: const CircleAvatar(
                child: Icon(Icons.person),
              ),
              prefixIconColor: Colors.white,
              hintText: "John Doe",
              labelText: "Customer Name"),
          FormWidgets.getTextFormField(
              controller: customerAddressController,
              formEnabled: true,
              prefixIcon: const CircleAvatar(
                child: Icon(Icons.location_city),
              ),
              prefixIconColor: Colors.white,
              hintText: "Bhutan",
              labelText: "Customer Address"),
          FormWidgets.getTextFormField(
              controller: customerContactController,
              formEnabled: true,
              prefixIcon: const CircleAvatar(
                child: Icon(Icons.phone),
              ),
              prefixIconColor: Colors.white,
              suffix: InkWell(
                  onTap: () {
                    print("hello");
                  },
                  child: Text("Call")),
              helperText: "Please enter contact number upto 10 digits",
              errorText: null,
              hintText: "xxxxxxxxx",
              labelText: "Customer Contact"),
          FormWidgets.getTextFormField(
              controller: customerAgeController,
              formEnabled: true,
              prefixIcon: const CircleAvatar(
                child: Icon(Icons.numbers),
              ),
              prefixIconColor: Colors.white,
              hintText: "56",
              labelText: "Customer Age"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AppDialogs.basicModelBottomSheet(context,
              title: Column(
                children: [
                  Text("Customer NamE  :- ${customerNameController.text}"),
                  Text(
                      "Customer Address  :- ${customerAddressController.text}"),
                  Text(
                      "Customer Contact  :- ${customerContactController.text}"),
                  Text("Customer Age  :- ${customerAgeController.text}"),
                ],
              ));
        },
      ),
    );
  }
}
