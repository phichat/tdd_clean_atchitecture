import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tdd_clean_atchitecture/injection_container.dart';

import '../bloc/number_trivia_bloc/number_trivia_bloc.dart';
import '../bloc/number_trivia_bloc/number_trivia_state.dart';
import '../widgets/widgets.dart';

class NumberTriviaPage extends StatelessWidget {
  const NumberTriviaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Number Trivia'),
      ),
      body: BlocProvider(
        create: (context) => getIt<NumberTriviaBloc>(),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const SizedBox(height: 10),
                BlocBuilder<NumberTriviaBloc, NumberTriviaState>(
                    builder: (context, state) {
                  if (state is Empty) {
                    return const MessageDisplay(message: 'Start searching!');
                  } else if (state is Loading) {
                    return const LoadingWidget();
                  } else if (state is Loaded) {
                    return TriviaDisplay(numberTrivia: state.trivia);
                  } else if (state is Error) {
                    return MessageDisplay(
                      message: state.message,
                    );
                  }

                  return const SizedBox.shrink();
                }),
                const SizedBox(height: 20),
                // Bottom half
                const TriviaControls(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
