part of '../add_assessment_popup.dart';

class _TopicSection extends StatefulWidget {
  const _TopicSection({
    required this.initialTopicId,
    required this.onTopicChanged,
    required this.topicTitle,
    required this.topicEmoji,
    required this.topics,
    Key? key,
  }) : super(key: key);

  final String? initialTopicId;
  final ValueChanged<String> onTopicChanged;
  final List<Topic>? topics;

  // When the user is in the topic screen, topic list is null which would
  // display a widget instead of the dropdown, so topic title and emoji is used
  final String? topicTitle;
  final String? topicEmoji;

  @override
  State<_TopicSection> createState() => _TopicSectionState();
}

class _TopicSectionState extends State<_TopicSection> {
  late String? _selectedTopicId = widget.initialTopicId;

  @override
  Widget build(BuildContext context) {
    final topics = widget.topics;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 8, left: 3),
          child: TText(
            'Topic',
            style: TTextStyle.regularXS(),
          ),
        ),
        topics == null
            ? Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: TColors.black.shade200),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: _TopicListItem(
                  emoji: widget.topicEmoji ?? '',
                  title: widget.topicTitle ?? '',
                ),
              )
            : TDropdown<String>(
                value: _selectedTopicId,
                onChanged: (topic) {
                  if (topic == null) return;
                  setState(() {
                    _selectedTopicId = topic;
                  });

                  widget.onTopicChanged(topic);
                },
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                border: Border.all(color: TColors.black.shade200),
                hint: const TText('Select Topic', style: TTextStyle.mediumS()),
                items: topics
                    .map(
                      (topic) => TDropdownItem<String>(
                        value: topic.id,
                        child: _TopicListItem(
                          emoji: topic.emoji,
                          title: topic.title,
                        ),
                      ),
                    )
                    .toList(),
              ),
      ],
    );
  }
}

class _TopicListItem extends StatelessWidget {
  const _TopicListItem({
    required this.emoji,
    required this.title,
    Key? key,
  }) : super(key: key);

  final String emoji;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      child: Row(
        children: [
          Text(
            emoji,
            style: const TextStyle(
              fontSize: 13,
              fontFamily: 'NotoColorEmoji',
            ),
          ),
          const SizedBox(width: 9),
          TText(
            title,
            style: const TTextStyle.mediumS(),
          ),
        ],
      ),
    );
  }
}
