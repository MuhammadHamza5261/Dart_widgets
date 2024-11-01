import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';


class CountryCodeClass extends StatefulWidget {
  const CountryCodeClass({super.key});

  @override
  State<CountryCodeClass> createState() => _CountryCodeClassState();
}

class _CountryCodeClassState extends State<CountryCodeClass> {

  String _selectedCountryCode = 'PK';

  // Default country code
  final TextEditingController _mobileNumberController = TextEditingController();


  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;


    return Scaffold(
      appBar: AppBar(
        title: const Text('Country Code Screen'),
      ),
      body:  Column(
        children: [
      Row(
      children: [
      CountryCodePicker(
       onChanged: (CountryCode countryCode) {
       setState(() {
       _selectedCountryCode = countryCode.toString();
        });
        },
      initialSelection: _selectedCountryCode,
      favorite: ['+92', 'PKR'],
      showCountryOnly: false,
      showOnlyCountryWhenClosed: false,
      alignLeft: false,
    ),
       const SizedBox(width: 10),
        Expanded(
       child: TextFormField(
        controller: _mobileNumberController,
        keyboardType: TextInputType.number,
         decoration: const InputDecoration(
        labelText: 'Mobile Number',
        hintText: 'Mobile number',
         // prefixText: '${_selectedCountryCode}',
         ),
        onChanged: (value) {
    },
    ),
    ),
    ],
    ),





        ],
      ),
    );
  }
}
