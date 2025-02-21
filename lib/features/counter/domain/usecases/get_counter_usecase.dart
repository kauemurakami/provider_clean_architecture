import 'package:provider_clean_arch/features/counter/domain/entities/counter_entity.dart';
import 'package:provider_clean_arch/features/counter/domain/repositories/counter_repository.dart';

class GetCounterUseCase {
  final CounterRepository counterRepository;
  GetCounterUseCase(this.counterRepository);

  CounterEntity execute() {
    return counterRepository.getCounter();
  }
}
