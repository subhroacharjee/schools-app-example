import 'package:assessments/src/presentation/widget/must_have_students_tooltip.dart';
import 'package:components/components.dart';
import 'package:core_flutter/presentation/widgets/popup/popups.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schools_app/schools_app.dart';

class NoAssessmentStudentWidget extends StatelessWidget {
  const NoAssessmentStudentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'packages/assessments/assets/empty_assessments.png',
            height: 375,
          ),
          const SizedBox(height: 40),
          const Text(
            'Your class doesn’t have any students yet',
            style: TTextStyle.headline6(),
          ),
          const SizedBox(height: 25),
          TButton(
            onPressed: () {
              final code = (context.read<SchoolsLayoutNode>() as TeacherLayoutNode)
                  .state
                  .data
                  ?.accessedClass
                  ?.code;

              if (code == null || code.isEmpty) {
                throw Exception('Class code is null or empty');
              }

              showPopup(
                context: context,
                child: ShareClassPopup(
                  code: code,
                ),
              );
            },
            style: TButtonStyle.primary(),
            child: const TText(
              '+ Add Students',
              style: TTextStyle.buttonS(),
            ),
          ),
        ],
      ),
    );
  }
}
