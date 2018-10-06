import 'package:flutter/material.dart';
import 'package:lek_bierz/models/medicine.dart';
import 'package:lek_bierz/ui/home/medicine_list.dart';
import 'package:lek_bierz/ui/home/add_medicine_fab.dart';

class HomeScreen extends StatelessWidget {
  void _showArchive() {
    debugPrint('archive pressed lol');
  }

  void _showMedicine(BuildContext context, Medicine medicine) {
    Scaffold.of(context).showSnackBar(SnackBar(
        content: Text(
            'You tapped on medicine with EAN of ' + medicine.ean.toString()),
        duration: Duration(seconds: 3),
        action: SnackBarAction(label: 'Oh, really?', onPressed: () {})));
  }

  void _showAddingMedicine(BuildContext context) {
    debugPrint('fab tapped');
  }

  @override
  Widget build(BuildContext context) {
    final medicines = [
      Medicine(
          name: 'Izotek 10mg',
          ean: 5909990891740,
          activeSubstances: ['Isotretinoinum'],
          form: MedicineForm.capsules,
          packageQuantity: 60,
          dosage: Dosage(frequency: DosageFrequency.daily))
    ];

    return Scaffold(
      appBar: AppBar(title: Text('LekBierz'), actions: <Widget>[
        IconButton(
          icon: Icon(Icons.archive),
          onPressed: () => this._showArchive(),
        )
      ]),
      body: Column(
        children: <Widget>[
          MedicineList(
            medicines: medicines,
            onMedicineTap: (context, medicine) =>
                this._showMedicine(context, medicine),
          ),
          FlatButton(
            child: Text('Zobacz archiwum'),
            onPressed: () => this._showArchive(),
          )
        ],
      ),
      floatingActionButton: AddMedicineFab(
        onPress: (context) => this._showAddingMedicine(context),
      ),
    );
  }
}