import 'package:flutter/material.dart';
import 'package:project_01/Counter_app/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/cubit.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterStates>
        (
        listener: (context,state) {
          if (state is CounterMinusState) {
            // print('state minus ${state.counter}');
          }
          if (state is CounterPlusState) {
            // print('state minus ${state.counter}');
          }
        },
        builder: (BuildContext context,CounterStates state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                  'Counter'
              ),
            ),
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      CounterCubit.get(context).minus();
                      if(state is CounterMinusState){
                        CounterCubit.get(context).showToastMessage();
                      }

                    },
                    child: Text(
                      'Minus',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25.0,
                    ),
                    child: Text(
                      '${CounterCubit
                          .get(context)
                          .counter}',
                      style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      CounterCubit.get(context).plus();
                      if(state is CounterPlusState){
                        CounterCubit.get(context).showToastMessage();
                      }
                    },
                    child: Text(
                      'Plus',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),

                ],
              ),
            ),
          );
        },
      ),
    );
  }
}


