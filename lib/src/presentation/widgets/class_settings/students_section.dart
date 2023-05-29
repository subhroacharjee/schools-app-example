import 'package:components/components.dart';
import 'package:core_flutter/presentation/screens/settings_screen/settings_section.dart';
import 'package:core_flutter/presentation/widgets/loading_shimmer.dart';
import 'package:core_flutter/presentation/widgets/popup/popups.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:schools_app/src/presentation/blocs/class_settings/students_section_bloc.dart';
import 'package:schools_app/src/presentation/blocs/class_settings/students_section_state.dart';
import 'package:schools_app/src/presentation/widgets/popups/remove_student_popup.dart';
import 'package:schools_app/src/presentation/widgets/popups/share_class_code_popup.dart';

class StudentsSection extends SettingsSection<StudentsSectionBloc, StudentsSectionState> {
  const StudentsSection({required this.classId, super.key})
      : super(
          title: '',
          showSaveButton: false,
        );

  final String classId;

  @override
  Widget buildContent(BuildContext context, StudentsSectionState state) {
    final bloc = getBloc(context);
    final effStudents = state.filteredStudentsMap ?? state.studentsMap;
    final entries = effStudents.entries.toList();
    final studentsCount = state.studentsMap.length;
    const divider = Divider(
      height: 1,
      thickness: 1.7,
      color: tuteroBlack06,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TText(
              '${Intl.plural(studentsCount, one: 'Student', other: 'Students')} ($studentsCount)',
              style: const TTextStyle.boldM(),
            ),
            const Spacer(),
            TButton(
              style: TButtonStyle.primary(
                prefixIcon: const Icon(Icons.add),
                size: TButtonSize.small,
              ),
              child: const Text('Add Students'),
              onPressed: () => showPopup(
                child: ShareClassPopup(code: state.code),
                context: context,
              ),
            ),
          ],
        ),
        Container(
          constraints: const BoxConstraints(maxHeight: 600),
          margin: const EdgeInsets.symmetric(vertical: 16),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            border: Border.all(color: tuteroBlack16),
            color: white,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  border: Border.all(color: TColors.black.withOpacity(0.04)),
                  color: TColors.black.withOpacity(0.04), //tuteroBlack04,
                ),
                child: SearchBar.small(onChanged: bloc.searchStudent),
              ),
              ListTile(
                title: TText(
                  'Name',
                  style: TTextStyle.mediumM(color: TColors.black.shade600),
                ),
              ),
              divider,
              Flexible(
                child: Scrollbar(
                  thumbVisibility: true,
                  controller: bloc.scrollController,
                  child: ListView.separated(
                    shrinkWrap: true,
                    controller: bloc.scrollController,
                    itemCount: entries.length,
                    separatorBuilder: (_, __) => divider,
                    itemBuilder: (context, index) {
                      final e = entries[index];
                      return ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 1,
                        ),
                        title: TText(
                          e.value,
                          style: const TTextStyle.mediumS(),
                        ),
                        trailing: InkWell(
                          onTap: () => showPopup(
                            child: BlocProvider.value(
                              value: bloc,
                              child: RemoveStudentPopup(
                                studentId: e.key,
                              ),
                            ),
                            context: context,
                          ),
                          child: Icon(
                            Icons.delete,
                            color: TColors.danger.shade500,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget loadingBuilder(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: 120,
            height: 42,
            decoration: const ShapeDecoration(shape: StadiumBorder()),
            child: const LoadingShimmer(
              loading: true,
              borderRadius: BorderRadius.all(Radius.circular(100)),
              child: null,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const LoadingShimmer(
            loading: true,
            child: SizedBox(
              height: 120,
              width: double.infinity,
            ),
          ),
        ],
      ),
    );
  }

  @override
  StudentsSectionBloc createBloc(BuildContext context) => StudentsSectionBloc(classId);
}
