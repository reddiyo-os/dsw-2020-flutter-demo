import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dsw_2020_demo/controllers/image_search.dart';
import 'package:dsw_2020_demo/ui/breakpoints.dart';

class ImageSearchForm extends StatefulWidget {
  @override
  ImageSearchFormState createState() {
    return ImageSearchFormState();
  }
}

// Stateful widgets must define a corresponding State class.
class ImageSearchFormState extends State<ImageSearchForm> {
  // We need a unique global key for the form so we can validate text field values.
  final _formKey = GlobalKey<FormState>();
  // We need a controller so we can get the value of the search field
  final _searchFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double textFieldWidth = deviceWidth - 50;
    if (deviceWidth >= tabletBreakpoint) {
      textFieldWidth = 300;
    }

    final List<Widget> _formWidgets = [
      Container(
        width: textFieldWidth,
        child: TextFormField(
          controller: _searchFieldController,
          // The validator receives the current value of the form field (what the user has entered).
          validator: (value) {
            if (value.isEmpty) {
              return 'Please enter a location.';
            }
            return null;
          },
          decoration: const InputDecoration(
            filled: true,
            fillColor: Colors.white,
            suffixIcon: Icon(Icons.search),
            labelText: 'Where do you want to go?',
          ),
        ),
      ),
      const SizedBox(height: 15, width: 15),
      RaisedButton(
        child: Container(
          height: 50,
          width: 130,
          alignment: AlignmentDirectional.center,
          child: Text('SUBMIT', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        ),
        color: Colors.cyan[800],
        onPressed: () {
          // Trigger form validation. If the result is true, the value entered is valid.
          if (_formKey.currentState.validate()) {
            Provider.of<ImageSearch>(context, listen: false).searchImages(_searchFieldController.text);
            Provider.of<ImageSearch>(context, listen: false).resultTitle = _searchFieldController.text;
          }
        },
      ),
    ];

    return Container(
      width: deviceWidth,
      color: Colors.blueGrey[100],
      padding: const EdgeInsets.all(24.0),
      child: Form(
        key: _formKey,
        child: Builder(
          builder: (BuildContext context) {
            if (deviceWidth >= tabletBreakpoint) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _formWidgets,
              );
            } else {
              return Column(
                children: _formWidgets,
              );
            }
          },
        ),
      ),
    );
  }
}
