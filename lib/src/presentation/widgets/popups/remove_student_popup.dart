import 'package:components/components.dart';
import 'package:core_flutter/presentation/widgets/popup/popup_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schools_app/src/presentation/blocs/class_settings/students_section_bloc.dart';
import 'package:schools_app/src/presentation/utils/colors.dart';

class RemoveStudentPopup extends StatelessWidget {
  const RemoveStudentPopup({
    required this.studentId,
    Key? key,
  }) : super(key: key);

  final String studentId;

  @override
  Widget build(BuildContext context) {
    return PopupLayout(
      maxWidth: 420,
      padding: EdgeInsets.zero,
      builder: (context, isLoading, popup) => Container(
        width: 420,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: removeBg,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(24),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    child: TText(
                      'Are you sure you want to remove this student from your class?',
                      style: TTextStyle.headline5(),
                    ),
                  ),
                  const SizedBox(width: 20),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 12),
                  const TText(
                    'This student will be able to join any class after they have been removed.',
                    style: TTextStyle.mediumS(),
                  ),
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TButton(
                        style: TButtonStyle.secondary(),
                        onPressed: Navigator.of(context).pop,
                        child: const TText(
                          'Cancel',
                          style: TTextStyle.boldS(),
                        ),
                      ),
                      const SizedBox(width: 15),
                      TButton(
                        loading: isLoading,
                        style: TButtonStyle.primary(
                          buttonUseCase: ButtonUseCase.danger,
                        ),
                        onPressed: () => popup.executeAndPop(() async =>
                            BlocProvider.of<StudentsSectionBloc>(context).removeStudent(studentId)),
                        child: const TText(
                          'Remove',
                          style: TTextStyle.boldS(
                            color: TColors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
