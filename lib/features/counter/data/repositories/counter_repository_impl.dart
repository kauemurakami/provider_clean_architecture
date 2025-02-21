import 'package:provider_clean_arch/features/counter/data/datasources/counter_datasource.dart';
import 'package:provider_clean_arch/features/counter/domain/entities/counter_entity.dart';
import 'package:provider_clean_arch/features/counter/domain/repositories/counter_repository.dart';

class CounterRepositoryImpl implements CounterRepository {
  final CounterDatasource counterDatasource;

  CounterRepositoryImpl(this.counterDatasource);

  @override
  CounterEntity getCounter() {
    return counterDatasource.getCounter();
  }
}
