import 'package:provider_clean_arch/features/counter/domain/entities/counter_entity.dart';

abstract class CounterRepository {
  CounterEntity getCounter();
}
