import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  var titleController = TextEditingController();
  var amountController = TextEditingController();

  final Function addNewTransaction;

  NewTransaction(this.addNewTransaction);

  @override
  Widget build(BuildContext context) {
    void _submitData() {
      if (titleController.text.isEmpty || amountController.text.isEmpty) {
        return;
      }

      addNewTransaction(
        titleController.text,
        double.parse(amountController.text),
      );

      Navigator.of(context).pop();
    }

    return Card(
      child: Container(
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => _submitData,
            ),
            FlatButton(
              child: Text('Add'),
              textColor: Colors.blue,
              onPressed: _submitData,
            )
          ],
          crossAxisAlignment: CrossAxisAlignment.end,
        ),
        padding: EdgeInsets.all(10),
      ),
    );
  }
}
