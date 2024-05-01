import 'package:counter_app/app/view/bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FloatingActionButton(
          onPressed: () {
            BlocProvider.of<CounterAppBloc>(context).add(CounterIncrement());
          },
          backgroundColor: Colors.cyan,
          child: const Icon(Icons.add),
        ),
        const SizedBox(
          height: 8,
        ),
        FloatingActionButton(
          onPressed: () {
            BlocProvider.of<CounterAppBloc>(context).add(CounterReset());
          },
          backgroundColor: Colors.green,
          child: const Icon(Icons.undo),
        ),
        const SizedBox(
          height: 8,
        ),
        FloatingActionButton(
          onPressed: () {
            context.read<CounterAppBloc>().add(CounterDecrement());
            // BlocProvider.of<CounterAppBloc>(context).add(CounterDecrement());
          },
          backgroundColor: Colors.red,
          child: const Icon(Icons.remove),
        ),
        const SizedBox(
          height: 8,
        ),
        FloatingActionButton(
          onPressed: () {
            // context.read<CounterAppBloc>().add(CounterXtwo());
            BlocProvider.of<CounterAppBloc>(context).add(CounterXtwo());
          },
          backgroundColor: Colors.red,
          child: const Icon(Icons.two_k_outlined),
        ),
      ],
    );
  }
}
