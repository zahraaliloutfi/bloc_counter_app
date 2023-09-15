import 'package:bloc_counter_app/bloc/counter_app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Counter App With Bloc '),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'counter value is',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              BlocBuilder<CounterAppBloc, CounterAppState>(
                builder: (context, state) {
                  if (state is CounterAppInitial) {
                    return const Text(
                      '0',
                      style: TextStyle(fontSize: 40, color: Colors.blueGrey),
                    );
                  } else if (state is CounterValueChangedState) {
                    return Text(
                      state.counter.toString(),
                      style:
                          const TextStyle(fontSize: 40, color: Colors.blueGrey),
                    );
                  } else {
                    return Container();
                  }
                },
              ),
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                BlocProvider.of<CounterAppBloc>(context).add(IncrementEvent());
              },
              child: const Icon(
                Icons.add,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            FloatingActionButton(
              onPressed: () {
                // BlocProvider.of<CounterAppBloc>(context).add(ResetEvent());
                //another way
                context.read<CounterAppBloc>().add(ResetEvent());
              },
              child: const Icon(
                Icons.exposure_zero,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            FloatingActionButton(
              onPressed: () {
                BlocProvider.of<CounterAppBloc>(context).add(DecrementEvent());
              },
              child: const Icon(
                Icons.remove,
              ),
            ),
          ],
        ));
  }
}
