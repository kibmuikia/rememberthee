import '../myactions/error_actions.dart';

dynamic errorReducer(dynamic currentErrorState, action) {
  if (action is ErrorAction) {
    print('\n\t[ErrorAction]');
    print(action.error);
    return action.error;

    // .
  } else if (action is ErrorHandledAction) {
    return currentErrorState;

    // .
  } else {
    return currentErrorState;
  }
} //end-errorReducer
