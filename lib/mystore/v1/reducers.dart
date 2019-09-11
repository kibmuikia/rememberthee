// import 'package:rememberthee/mystore/v1/state.dart';
import 'package:rememberthee/models/account.dart';
import 'package:rememberthee/mystore/v1/myreducers/user_reducer.dart';

AppState appReducer(AppState state, action) {
  return new AppState(
      isLoading: false, user: userReducer(state.user, action)); //end-return
} //end-appReducer
