// import 'package:rememberthee/models/user.dart';
import 'package:rememberthee/models/account.dart';

class AppState {
  // final Account user = new Account();
  final Account user;
  final bool isLoading;
  final dynamic error;

  AppState({this.user, this.isLoading = false, this.error});

  AppState copyWith({Account user, bool isLoading}) {
    return new AppState(
        user: user ?? this.user,
        isLoading: isLoading ?? this.isLoading,
        error: error ?? this.error); //end-return
  } //end-copyWith

  @override
  String toString() =>
      'AppState{ isLoading: $isLoading, user: $user, error: $error }';

  // .
} //end-class-AppSate
