import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_counter_app/viewmodel/counter_viewmodel.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => CounterViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
            body: SafeArea(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(viewModel.counterService.counterValue.toString()),
                    SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          viewModel.addValue();
                        },
                        child: Text('Add counter valute')),
                    SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          viewModel.navigateToHome();
                          // Text('text navigate ho home');
                        },
                        child: Text('navigate to home'))
                  ],
                ),
              ),
            ),
          );
        });
  }
}
