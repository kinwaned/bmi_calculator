import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project_01/Counter_app/cubit/states.dart';

class CounterCubit extends Cubit<CounterStates>
{
  CounterCubit() : super(CounterInitialState());

  static CounterCubit get(context) =>BlocProvider.of(context);

  int counter = 1;

  void minus()
  {
    counter--;
    emit(CounterMinusState(counter));
  }
  void plus()
  {
    counter++;
    emit(CounterPlusState(counter));
  }

  void showToastMessage() {
    Fluttertoast.showToast(
      msg: 'Flutter is the best ${counter}',
      backgroundColor: Colors.black54,
      fontSize: 16,
      textColor: Colors.white,
      gravity: ToastGravity.BOTTOM,
      toastLength: Toast.LENGTH_SHORT,
      timeInSecForIosWeb: 1,
    );
  }

}