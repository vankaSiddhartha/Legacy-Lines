
import 'package:bloc/core/failure/fail.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class AuthRepository{
  Future<Either<Failure,String>> signUpWithEmailAndPassWord({
    required String name,
    required String email,
    required String password,
});
  Future<Either<Failure,String>> signInWithEmailAndPassword({
    required String email,
    required String password,
});

}