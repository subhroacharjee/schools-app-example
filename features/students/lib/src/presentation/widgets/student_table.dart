import 'package:components/components.dart';
import 'package:flutter/material.dart';
import 'package:students/src/domain/entities/student_comprehension.dart';

class StudentTable extends StatelessWidget {
  StudentTable({
    Key? key,
    required this.studentComprehensions,
    this.showNames = true,
    this.showComprehensions = true,
    this.descending = true,
  })  : classComprehension = null,
        super(key: key) {
    _sortedStudentComprehensions = [...studentComprehensions];
    if (descending) {
      _sortedStudentComprehensions.sort((a, b) => b.studentName.compareTo(a.studentName));
    } else {
      _sortedStudentComprehensions.sort((a, b) => a.studentName.compareTo(b.studentName));
    }
  }
//Only for mock
  StudentTable.onlyNames({
    Key? key,
    required this.studentComprehensions,
    this.classComprehension,
    this.descending = true,
  })  : showNames = true,
        showComprehensions = false,
        super(key: key) {
    _sortedStudentComprehensions = [...studentComprehensions];

    if (descending) {
      _sortedStudentComprehensions.sort((a, b) => b.correct.compareTo(a.correct));
    } else {
      _sortedStudentComprehensions.sort((a, b) => a.correct.compareTo(b.correct));
    }

    if (classComprehension != null) _sortedStudentComprehensions.insert(0, classComprehension!);
  }

  StudentTable.onlyComprehensions({
    Key? key,
    required this.studentComprehensions,
    this.classComprehension,
    this.descending = true,
  })  : showNames = false,
        showComprehensions = true,
        super(key: key) {
    _sortedStudentComprehensions = [...studentComprehensions];

    if (descending) {
      _sortedStudentComprehensions.sort((a, b) => b.correct.compareTo(a.correct));
    } else {
      _sortedStudentComprehensions.sort((a, b) => a.correct.compareTo(b.correct));
    }
    if (classComprehension != null) _sortedStudentComprehensions.insert(0, classComprehension!);
  }

  final StudentComprehension? classComprehension;
  final List<StudentComprehension> studentComprehensions;
  late final List<StudentComprehension> _sortedStudentComprehensions;
  final bool descending;
  final bool showNames;
  final bool showComprehensions;
  final headerWidths = const {
    0: FlexColumnWidth(6),
    1: FlexColumnWidth(4),
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: TColors.white,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(
          color: TColors.black.withOpacity(0.04),
        ),
        boxShadow: [
          BoxShadow(
            color: TColors.black.withOpacity(0.05),
            blurRadius: 2,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      clipBehavior: Clip.hardEdge,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Table(
            border: TableBorder.all(
              color: TColors.black.withOpacity(0.04),
            ),
            columnWidths: headerWidths,
            children: [
              TableRow(
                children: [
                  if (showNames)
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: TText(
                        'Name',
                        style: TTextStyle.boldS(),
                      ),
                    ),
                  if (showComprehensions)
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: TText(
                        'Comprehension',
                        style: TTextStyle.boldS(),
                      ),
                    ),
                ],
              ),
            ],
          ),
          Flexible(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Table(
                border: TableBorder.all(
                  color: TColors.black.withOpacity(0.04),
                ),
                columnWidths: headerWidths,
                children: _sortedStudentComprehensions.map((sc) {
                  if (sc.studentName == "Class Average") {
                    return TableRow(
                      children: [
                        if (showNames)
                          Container(
                            color: TColors.primary.shade50,
                            padding: const EdgeInsets.all(16.0),
                            child: TText(
                              sc.studentName,
                              style: const TTextStyle.boldS(color: TColors.primary),
                            ),
                          ),
                        if (showComprehensions)
                          Container(
                            color: TColors.primary.shade50,
                            padding: const EdgeInsets.all(16.0),
                            child: ProgressBar(
                              correct: sc.correct,
                              wrong: sc.wrong,
                              percentColor: TColors.primary,
                            ),
                          ),
                      ],
                    );
                  }
                  return TableRow(
                    children: [
                      if (showNames)
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: TText(
                            sc.studentName,
                            style: const TTextStyle.regularS(),
                          ),
                        ),
                      if (showComprehensions)
                        Container(
                          padding: const EdgeInsets.all(16.0),
                          child: ProgressBar(
                            correct: sc.correct,
                            wrong: sc.wrong,
                          ),
                        ),
                    ],
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
