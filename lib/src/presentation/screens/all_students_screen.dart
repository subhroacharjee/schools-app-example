import 'package:components/components.dart';
import 'package:core_flutter/presentation/widgets/legacy_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:schools_app/src/presentation/utils/colors.dart';

class AllStudentScreen extends StatelessWidget {
  const AllStudentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const VerticalDivider verticalDivider = VerticalDivider(
      color: divider,
      thickness: 1,
      width: 1,
    );

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(12, 26, 20, 24),
        child: Column(
          children: [
            // Search box and button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 34,
                  width: 206,
                  child: SearchBar.small(),
                ),
                BorderButton.small(
                  onPressed: () {},
                  borderColor: tuteroBlack.withOpacity(0.04),
                  padding: EdgeInsets.zero,
                  backgroundColor: tuteroPrimary,
                  child: Row(
                    children: [
                      const SizedBox(width: 13),
                      const Icon(
                        Icons.add,
                        color: white,
                        size: 12,
                      ),
                      const SizedBox(width: 3),
                      Container(
                        padding: const EdgeInsets.fromLTRB(0, 7, 13, 7),
                        child: const TText(
                          'Add Students',
                          style: TTextStyle.mediumS(
                            color: TColors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            // Data Table with two columns
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: LayoutBuilder(
                  builder: (context, constraint) {
                    return Theme(
                      data: Theme.of(context).copyWith(
                        dividerColor: TColors.black.withOpacity(0.06),
                      ),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Container(
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
                          child: DataTable(
                            columnSpacing: 16,
                            dataRowHeight: 52,
                            columns: [
                              DataColumn(
                                label: SizedBox(
                                  width: constraint.maxWidth * 0.6 - 50,
                                  child: Row(
                                    children: [
                                      const Text('Name'),
                                      const SizedBox(width: 12),
                                      Container(
                                        padding: const EdgeInsets.only(top: 4),
                                        child: SvgPicture.asset(Images.dropdown),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const DataColumn(label: verticalDivider),
                              DataColumn(
                                label: SizedBox(
                                  width: constraint.maxWidth * 0.4 - 50,
                                  child: const Text('Name'),
                                ),
                              ),
                            ],
                            rows: const [
                              DataRow(
                                cells: [
                                  DataCell(Text('John Doe')),
                                  DataCell(verticalDivider),
                                  DataCell(
                                    Expanded(
                                      child: ProgressBar(
                                        correct: 0.2,
                                        wrong: 0.4,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              DataRow(
                                cells: [
                                  DataCell(Text('John Doe')),
                                  DataCell(verticalDivider),
                                  DataCell(
                                    Expanded(
                                      child: ProgressBar(
                                        correct: 0.2,
                                        wrong: 0.4,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              DataRow(
                                cells: [
                                  DataCell(Text('John Doe')),
                                  DataCell(verticalDivider),
                                  DataCell(
                                    Expanded(
                                      child: ProgressBar(
                                        correct: 0.2,
                                        wrong: 0.4,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              DataRow(
                                cells: [
                                  DataCell(Text('John Doe')),
                                  DataCell(verticalDivider),
                                  DataCell(
                                    Expanded(
                                      child: ProgressBar(
                                        correct: 0.2,
                                        wrong: 0.4,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
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
    );
  }
}
