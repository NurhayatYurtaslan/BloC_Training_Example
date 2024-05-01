import 'package:counter_app/app/view/bloc/app_bloc.dart';
import 'package:counter_app/core/widget/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterAppBloc(context),
      child: BlocBuilder<CounterAppBloc, CounterAppState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text('Counter BLoC'),
              backgroundColor: Colors.cyan,
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Counter Value is',
                    style: TextStyle(fontSize: 22),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  BlocBuilder<CounterAppBloc, CounterAppState>(
                    builder: (context, state) {
                      if (state is CounterInitial) {
                        return const Text(
                          '0',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 30,
                          ),
                        );
                      } else if (state is CounterChanged) {
                        return Text(
                          state.counterValue.toString(),
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 30,
                          ),
                        );
                      }
                      return const SizedBox(height: 52,);
                    },
                  ),
                ],
                
              ),
              
            ),
            
            floatingActionButton: const CustomFloatingButton(),
          );
        },
      ),
    );
  }
}