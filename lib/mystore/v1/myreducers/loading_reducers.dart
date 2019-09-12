import '../myactions/loading_actions.dart';

bool loadingReducer(bool currentLoadingState, action) {
  if (action is LoadingAction) {
    currentLoadingState = true;
    return currentLoadingState;

    // .
  } else if (action is NotLoadingAction) {
    currentLoadingState = false;
    return currentLoadingState;

    // .
  } else {
    return currentLoadingState;
  }

  // .
} //end-loadingReducer
