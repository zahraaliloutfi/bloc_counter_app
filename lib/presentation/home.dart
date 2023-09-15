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
              Text('counter value is'),
              SizedBox(
                height: 20,
              ),
              BlocBuilder<CounterAppBloc, CounterAppState>(
                builder: (context, state) {
                  if (state is CounterAppInitial) {
                    return Text('0');
                  } else if (state is CounterValueChangedState) {
                    return Text(state.counter.toString());
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
              onPressed: () {},
              child: const Icon(
                Icons.add,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            FloatingActionButton(
              onPressed: () {},
              child: const Icon(
                Icons.exposure_zero,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            FloatingActionButton(
              onPressed: () {},
              child: const Icon(
                Icons.remove,
              ),
            ),
          ],
        ));
  }
}
