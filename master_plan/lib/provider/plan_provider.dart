import 'package:flutter/material.dart';
import '../models/data_layer.dart';

//  Ubah dari Plan menjadi List<Plan>
class PlanProvider extends InheritedNotifier<ValueNotifier<List<Plan>>> {
  
  const PlanProvider({
    super.key, 
    required super.child, 
    //  Ubah dari Plan menjadi List<Plan>
    required ValueNotifier<List<Plan>> super.notifier
  });

  //  Ubah dari Plan menjadi List<Plan>
  static ValueNotifier<List<Plan>> of(BuildContext context) {
   return context
    .dependOnInheritedWidgetOfExactType<PlanProvider>()!
    .notifier!;
  }
}

