import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dsw_2020_demo/models/image_search.dart';

// https://flutter.dev/docs/cookbook/forms/validation
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
    return Form(
      key: _formKey,
      child: Container(
        color: Colors.blueGrey[100],
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: <Widget>[
            TextFormField(
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
            RaisedButton(
              onPressed: () {
                // Trigger form validation. If the result is true, the value entered is valid.
                if (_formKey.currentState.validate()) {
                  context.read<ImageSearch>().searchImages(_searchFieldController.text);
                }
              },
              child: Text('SUBMIT'),
              color: Colors.blueGrey[300],
            ),
          ],
        ),
      ),
    );
  }
}
