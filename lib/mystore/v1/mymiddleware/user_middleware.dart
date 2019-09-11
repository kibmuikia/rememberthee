// import 'package:redux/redux.dart';
// import '../state.dart';
// import '../myactions/user_actions.dart';

// List<Middleware<AppState>> createAuthMiddleware() {
//   final logIn = _createLogInMiddleware();
//   final logOut = _createLogOutMiddleware();

//   // Built in redux method that tells your store that these
//   // are middleware methods.
//   //
//   // As the app grows, we can add more Auth related middleware
//   // here.
//   return combineTypedMiddleware([
//     new TypedMiddleware<AppState, LogIn>(logIn),
//     new TypedMiddleware<AppState, LogOut>(logOut)
//   ]);//end-combineTypedMiddleware

// }//end-createAuthMiddleware

// Middleware<AppState> _createLogInMiddleware() {
// 	// These functions will always take
// 	// your store,
// 	// the action thats been dispatched
// 	// and the a special function called next.
//   return (Store store, action, NextDispatcher next) async {
// 		// YOUR LOGIC HERE
//     if ( action is SignInUserAction ) {
//       try {
//         // .

//         // store.dispatch(new SignInSuccessfulAction(user: user));
//       } catch( error ) {
//         store.dispatch(new SignInFailAction());// error
//       }
//     }//end-if-action-SignInUserAction

// 		// After you do whatever logic you need to do,
// 		// call this Redux built-in method,
// 		// It continues the redux cycle.
//     next(action);
//   };//end-return

// // .
// }//end-_createLogInMiddleware

// Middleware<AppState> _createLogOutMiddleware() {
//   return (Store store, action, NextDispatcher next) async {
//    	// YOUR LOGIC HERE
//     if( action is SignOutUserAction ) {
//       try {
//         // .
//       } catch( error ) {
//         // .
//       }
//     }// end-if-action-SignOutUserAction
//     next(action);
//   };//end-return

// // .
// }//end-_createLogOutMiddleware