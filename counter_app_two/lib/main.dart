import 'package:counter_app_two/bloc/main_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyWidget(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => CounterBloc()..add(CounterInitialEvent()),
        child: BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Theme.of(context).colorScheme.inversePrimary,
              ),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'You have pushed the button this many times:',
                    ),
                    Text(
                      '${state.counter}',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                ),
              ),
              floatingActionButton: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      BlocProvider.of<CounterBloc>(context)
                          .add(CounterIncrementEvent());
                    },
                    tooltip: 'Increment',
                    child: const Icon(Icons.add),
                  ),
                  const SizedBox(height: 16),
                  FloatingActionButton(
                    onPressed: () {
                      context.read<CounterBloc>().add(CounterDecrementEvent());
                      // BlocProvider.of<CounterAppBloc>(context).add(CounterDecrement());
                    },
                    tooltip: 'Decrement',
                    child: const Icon(Icons.remove),
                  ),
                  const SizedBox(height: 16),
                  FloatingActionButton(
                    onPressed: () {
                      context.read<CounterBloc>().add(CounterResetEvent());
                      // BlocProvider.of<CounterAppBloc>(context).add(CounterDecrement());
                    },
                    tooltip: 'Restart',
                    child: const Icon(Icons.restore_from_trash),
                  ),
                ],
              ),
            );
          },
        ));
  }
}
