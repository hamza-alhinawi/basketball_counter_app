import 'package:basket_ball_counter_app/cubits/counter_cubit.dart';
import 'package:basket_ball_counter_app/cubits/counter_state.dart';
import 'package:basket_ball_counter_app/widgets/custom_elevated_button.dart';
import 'package:basket_ball_counter_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PointsCounter extends StatelessWidget {
  PointsCounter({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Points Counter'),
      ),
      body: BlocConsumer<CounterCubit, CounterState>(
        listener: (context, state) {
          if (state is CounterAIncrementState) {
              BlocProvider.of<CounterCubit>(context).teamAPoints;
          } else if (state is CounterBIncrementState) {
              BlocProvider.of<CounterCubit>(context).teamBPoints;
          } else if (state is CounterResetState) {
              BlocProvider.of<CounterCubit>(context).teamAPoints;
              BlocProvider.of<CounterCubit>(context).teamBPoints;
          }
        },
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomText(text: 'Team A'),
                        CustomText(text: '${BlocProvider.of<CounterCubit>(context).teamAPoints}', size: '150'),

                        CustomElevatedButton(
                          text: 'Add 1 Point ',
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(
                              context,
                            ).incrementTeamA(1);
                          },
                        ),
                        CustomElevatedButton(
                          text: 'Add 2 Point',
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(
                              context,
                            ).incrementTeamA(2);
                          },
                        ),
                        CustomElevatedButton(
                          text: 'Add 3 Point',
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(
                              context,
                            ).incrementTeamA(3);
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 500,
                    child: VerticalDivider(
                      indent: 50,
                      endIndent: 50,
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  SizedBox(
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomText(text: 'Team B'),
                        CustomText(text: '${BlocProvider.of<CounterCubit>(context).teamBPoints}', size: '150'),

                        CustomElevatedButton(
                          text: 'Add 1 Point ',
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(
                              context,
                            ).incrementTeamB(1);
                          },
                        ),
                        CustomElevatedButton(
                          text: 'Add 2 Point',
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(
                              context,
                            ).incrementTeamB(2);
                          },
                        ),
                        CustomElevatedButton(
                          text: 'Add 3 Point',
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(
                              context,
                            ).incrementTeamB(3);
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              CustomElevatedButton(
                text: 'Resset',
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).reset();
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
