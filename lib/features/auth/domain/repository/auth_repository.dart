import 'package:block_app/core/error/failure.dart';
import 'package:fpdart/fpdart.dart' show Either;

abstract interface class AuthRepository {
 Future<Either<Failure,String>> 
  signUpWithEmailPassword({
    required String name,
    required String email,
    required String password,
  });
  Future<Either<Failure,String>>
   loginWithEmailPassword({
    required String email,
    required String password,
  });
}