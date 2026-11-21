import 'package:bloc_login/login_event.dart';
import 'login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBloc extends Bloc<LoginEvent,LoginState>{
LoginBloc(): super(LoginInitial()){
on<LoginButtonPressed>((event , emit)async{
emit(LoginLoading());
await Future.delayed(Duration(seconds: 2));
if(event.email == "admin@gmail.com" && event.password == "123456"){
emit(LoginSuccess());
}else{
  emit(LoginFailure());
}
});
}
}