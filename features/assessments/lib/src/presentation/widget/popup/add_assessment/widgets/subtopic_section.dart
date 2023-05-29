part of '../add_assessment_popup.dart';

class SubtopicSection extends StatefulWidget {
  SubtopicSection({
    required this.initialSubtopicIds,
    required this.subtopics,
    required this.isLoading,
    required this.color,
    required this.onSubtopicChanged,
    Key? key,
  }) : super(key: key) {
    if (initialSubtopicIds.isEmpty) {
      return;
    }
    onSubtopicChanged(initialSubtopicIds);
    if (initialSubtopicIds.length == subtopics.length) {
      return;
    }
    final initialSubtopicInfos = subtopics.where((e) => initialSubtopicIds.contains(e.id)).toList();
    subtopics
      ..removeWhere((e) => initialSubtopicIds.contains(e.id))
      ..insertAll(0, initialSubtopicInfos);
  }

  final List<String> initialSubtopicIds;
  final List<SubtopicInfo> subtopics;
  final bool isLoading;
  final Color? color;
  final ValueChanged<List<String>> onSubtopicChanged;

  @override
  State<SubtopicSection> createState() => SubtopicSectionState();
}

class SubtopicSectionState extends State<SubtopicSection> {
  final scrollController = ScrollController();
  late final _selectedSubtopicIds = [
    ...widget.initialSubtopicIds,
  ];

  void clearSubtopics() {
    _selectedSubtopicIds.clear();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final subtopicIds = widget.subtopics.map((e) => e.id).toList();

    return Container(
      constraints: const BoxConstraints(maxHeight: 239),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        border: Border.all(color: tuteroBlack16),
        color: TColors.white,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 16,
            ),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              border: Border.all(color: tuteroBlack04),
              color: tuteroBlack04,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Subtopics',
                  style: context.textTheme.bodyMedium?.copyWith(
                    color: tuteroBlack36,
                    fontSize: 12,
                    fontWeight: medium,
                  ),
                ),
                InkWell(
                  onTap: () {
                    if (_selectedSubtopicIds.isEmpty) {
                      _selectedSubtopicIds.addAll(subtopicIds);
                    } else {
                      _selectedSubtopicIds.clear();
                    }
                    widget.onSubtopicChanged(_selectedSubtopicIds);

                    setState(() {});
                  },
                  child: Text(
                    '${_selectedSubtopicIds.isEmpty ? 'Select' : 'Unselect'} All',
                    style: const TTextStyle.regularXS(
                      color: TColors.primary,
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (widget.isLoading)
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 32.0),
              child: DefaultCircularProgressIndicator(
                color: TColors.primary,
              ),
            )
          else
            Flexible(
              child: Scrollbar(
                thumbVisibility: true,
                controller: scrollController,
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: subtopicIds.length,
                  controller: scrollController,
                  separatorBuilder: (context, index) => const Divider(
                    height: 1,
                    thickness: 1.7,
                    color: tuteroBlack06,
                  ),
                  itemBuilder: (context, index) {
                    final subtopic = widget.subtopics[index];

                    return CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 1,
                      ),
                      title: Row(
                        children: [
                          SvgPicture.network(
                            subtopic.icon,
                            color: widget.color,
                            width: 20,
                            placeholderBuilder: (context) => Icon(
                              Icons.image,
                              size: 20,
                              color: TColors.black.shade100,
                            ),
                          ),
                          const SizedBox(width: 20),
                          TText(
                            subtopic.title,
                            style: const TTextStyle.mediumS(),
                          ),
                        ],
                      ),
                      value: _selectedSubtopicIds.contains(subtopic.id),
                      onChanged: (_) {
                        if (!_selectedSubtopicIds.contains(subtopic.id)) {
                          _selectedSubtopicIds.add(subtopic.id);
                        } else {
                          _selectedSubtopicIds.remove(subtopic.id);
                        }
                        widget.onSubtopicChanged(_selectedSubtopicIds);
                        setState(() {});
                      },
                    );
                  },
                ),
              ),
            ),
        ],
      ),
    );
  }
}
