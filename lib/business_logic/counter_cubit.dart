import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());
 static CounterCubit get(context)=>BlocProvider.of(context);
  int x=0;
  void increment(){
    x++;
    emit(CounterIncrement());
  }
  void decrement(){
    x--;
    emit(CounterDecrement());
  }
  void reset(){
    x=0;
    emit(CounterReset());
  }
}
