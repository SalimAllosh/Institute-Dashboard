import 'package:over_time/Features/OverTime/DataLayer/DataSrc/local_database.dart';
import 'package:over_time/Features/OverTime/DomainLayer/Entities/session_entity.dart';
import 'package:over_time/Core/Failures/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:over_time/Features/OverTime/DomainLayer/Repositories/session_repository.dart';

class SessionRepositoryDL extends SessionRepository {
  final LocalDatabase localDatabase;

  SessionRepositoryDL({required this.localDatabase});

  @override
  Future<Either<Failure, List<SessionEntity>>> getAllSessions() async {
    String sql = "SELECT * FROM session_table";

    localDatabase.getAllsessions(sql);

    return left(DatabaseFailure());
  }

  @override
  Future<Either<Failure, Unit>> addSession(
      {required SessionEntity sessionEntity}) {
    // TODO: implement addSession
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> deleteSession({required int sessionId}) {
    // TODO: implement deleteSession
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<SessionEntity>>> getSessionsByDate(
      {required String month, required String year}) {
    // TODO: implement getSessionsByDate
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<SessionEntity>>> getSessionsByInstitute(
      {required String instituteName}) {
    // TODO: implement getSessionsByInstitute
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<SessionEntity>>> getSessionsByStudentName(
      {required String studentName}) {
    // TODO: implement getSessionsByStudentName
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> updateSession(
      {required SessionEntity sessionEntity}) {
    // TODO: implement updateSession
    throw UnimplementedError();
  }
}
