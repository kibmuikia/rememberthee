// import 'package:rememberthee/models/user.dart';
import 'package:rememberthee/models/account.dart';

class AppState {
  // final Account user = new Account( email: null, password: null );
  final Account user = new Account();
  final bool isLoading;

  AppState({user, this.isLoading = false});

  AppState copyWith({user, bool isLoading}) {
    return new AppState(
        user: this.user ?? user,
        isLoading: isLoading ?? this.isLoading
        ); //end-return
  } //end-copyWith

  @override
  String toString() => 'AppState{isLoading: $isLoading, user: $user}';
} //end-class-AppSate
