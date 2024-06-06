import 'package:expenses_tracker/Models/expenses_model.dart';

class Category {
  double budget;
  List<Expenses> expenses;
  Category({
    required this.budget,
    required this.expenses,
  });
}
