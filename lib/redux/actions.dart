import 'package:lek_bierz/redux/state.dart';

class AddMedicineAction {
  final Medicine medicine;

  const AddMedicineAction(this.medicine);
}

class AddHistoryDoseAction {
  final String medicineId;
  final HistoryDose dose;

  const AddHistoryDoseAction(this.medicineId, this.dose);
}

class UpdateHistoryDoseAction {
  final String medicineId;
  final HistoryDose dose;

  const UpdateHistoryDoseAction(this.medicineId, this.dose);
}

class RemoveHistoryDoseAction {
  final String medicineId;
  final String doseId;

  const RemoveHistoryDoseAction(this.medicineId, this.doseId);
}