import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() {
    if (state == 15) {
      showToast('No se puede incrementar más');
    } else {
      emit(state + 1);
    }
  }

  void decrement() {
    if (state == -15) {
      showToast('No se puede decrementar más');
    } else {
      emit(state - 1);
    }
  }

  void reset() {
      emit(0);
  }

  void showToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.black54,
      textColor: Colors.white,
    );
  }
}
