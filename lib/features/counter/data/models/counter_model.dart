import 'package:provider_clean_arch/features/counter/domain/entities/counter_entity.dart';

class CounterModel extends CounterEntity {
  CounterModel({required super.count});
  
  //parse data toJson fromJson
  factory CounterModel.fromJson(Map<String, dynamic> map) {
    return CounterModel(count: map['count']);
  }
}
