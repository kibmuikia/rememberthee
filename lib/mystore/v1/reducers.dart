// import 'package:rememberthee/mystore/v1/state.dart';
import 'package:rememberthee/models/account.dart';
import 'package:rememberthee/mystore/v1/myreducers/user_reducer.dart';
import 'package:rememberthee/mystore/v1/myreducers/error_reducers.dart';
import 'package:rememberthee/mystore/v1/myreducers/loading_reducers.dart';

AppState appReducer(AppState state, action) {
  return new AppState(
    // isLoading: false,
    isLoading: loadingReducer(state.isLoading, action),
    user: userReducer(state.user, action),
    error: errorReducer(state.error, action),

    // .
  ); //end-return

// .
} //end-appReducer
