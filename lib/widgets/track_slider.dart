import 'package:elo_task/constants/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/set_target/set_target_cubit.dart';

class TrackSlider extends StatefulWidget {
  const TrackSlider({super.key});

  @override
  State<TrackSlider> createState() => _TrackSliderState();
}

class _TrackSliderState extends State<TrackSlider> {
  // double get targetValue => null;

  // double value = 0;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SetTargetCubit, SetTargetState>(
      builder: (context, state) {
        return SliderTheme(
          data: SliderThemeData(
            valueIndicatorColor: CustomColors.greenAppbar,
            trackHeight: 10,
          ),
          child: Slider(
            value: context.read<SetTargetCubit>().target,
            min: 0,
            max: 10000,
            divisions: 100,
            label: context.read<SetTargetCubit>().target.round().toString(),
            activeColor: CustomColors.darkGray,
            inactiveColor: CustomColors.darkGray,
            thumbColor: CustomColors.greenAppbar,
            onChanged: (newValue) {
              context.read<SetTargetCubit>().setTarget(newValue);
            },
          ),
        );
      },
    );
  }
}
