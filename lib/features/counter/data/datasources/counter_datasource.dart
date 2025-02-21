import 'package:provider_clean_arch/features/counter/data/models/counter_model.dart';

class CounterDatasource {
  CounterModel getCounter() {
    return CounterModel(count: 5);
  }
}
