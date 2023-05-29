class LastVisitedUrlData {
  const LastVisitedUrlData({
    required this.url,
    this.topicId,
    this.subtopicId,
  });

  final Uri url;
  final String? topicId;
  final String? subtopicId;

  @override
  String toString() {
    return 'LastVisitedUrlData(url: $url, topicId: $topicId, subtopicId: $subtopicId)';
  }
}
