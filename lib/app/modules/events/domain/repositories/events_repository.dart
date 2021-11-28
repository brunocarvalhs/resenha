import 'package:dartz/dartz.dart';

import '../../domain/entities/logged_event_info.dart';
import '../../domain/errors/errors.dart';

abstract class EventsRepository {
  Future<Either<Failure, LoggedEventInfo>> select(String id);
  Future<Either<Failure, Iterable<LoggedEventInfo>>> selectAll();
  Future<Either<Failure, LoggedEventInfo>> create(LoggedEventInfo event);
  Future<Either<Failure, LoggedEventInfo>> update(LoggedEventInfo event);
  Future<Either<Failure, Unit>> remove(String id);
}
