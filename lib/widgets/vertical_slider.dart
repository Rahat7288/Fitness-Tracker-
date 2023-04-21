import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../constants/custom_colors.dart';
import '../cubits/set_target/set_target_cubit.dart';

class VerticaSlider extends StatefulWidget {
  const VerticaSlider({super.key});

  @override
  State<VerticaSlider> createState() => _VerticaSliderState();
}

class _VerticaSliderState extends State<VerticaSlider> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SetTargetCubit, SetTargetState>(
      builder: (context, state) {
        return SliderTheme(
          data: SliderThemeData(
            valueIndicatorColor: CustomColors.greenAppbar,
            trackHeight: 80,
            trackShape: const RectangularSliderTrackShape(),
            thumbShape: SliderComponentShape.noOverlay,
            overlayShape: SliderComponentShape.noOverlay,
            valueIndicatorShape: SliderComponentShape.noOverlay,
          ),
          child: RotatedBox(
            quarterTurns: 3,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 3.0),
                ),
                child: Slider(
                  value: context.read<SetTargetCubit>().target,
                  min: 0,
                  max: 10000,
                  divisions: 100,
                  label:
                      context.read<SetTargetCubit>().target.round().toString(),
                  activeColor: CustomColors.darkGray,
                  inactiveColor: CustomColors.greenAppbar,
                  thumbColor: CustomColors.darkGray,
                  onChanged: (newValue) {
                    context.read<SetTargetCubit>().setTarget(newValue);
                  },
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
