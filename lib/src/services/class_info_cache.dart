import 'dart:async';

import 'package:core/di.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@singleton
class ClassInfoCache {
  ClassInfoCache(this._prefs, {bool showLogs = true}) : _showLogs = showLogs {
    _classIdStream.add(getClassId());
  }

  late final classIdStream = _classIdStream.stream.asBroadcastStream();
  final SharedPreferences _prefs;
  final bool _showLogs;

  final _classIdStream = StreamController<String?>();

  @factoryMethod
  static Future<ClassInfoCache> init() async {
    final prefs = await SharedPreferences.getInstance();
    return ClassInfoCache(prefs);
  }

  // TODO(sam): stream is not closed
  void closeClassIdStream() => _classIdStream.close();

  Future<bool> setClassId(String classId) {
    _classIdStream.add(classId);
    return _setString('classId', classId);
  }

  String? getClassId() => _prefs.getString('classId');

  Future<bool> setTopicId(String? topicId) => _setString('topicId', topicId);

  String? getTopicId() => _prefs.getString('topicId');

  Future<bool> setSubtopicId(String? topicId) => _setString('subtopicId', topicId);

  String? getSubtopicId() => _prefs.getString('subtopicId');

  Future<bool> setSkillId(String? topicId) => _setString('skillId', topicId);

  String? getSkillId() => _prefs.getString('skillId');

  Future<bool> setYearId(String? yearId) => _setString('yearId', yearId);

  String? getYearId() => _prefs.getString('yearId');

  Future<bool> clear() => _prefs.clear();

  Future<bool> _setString(String key, String? value) {
    if (_showLogs) {
      log.d(
        'ClassInfoCache: Setting $key to $value',
      );
    }

    assert(value?.isNotEmpty ?? true, 'Cannot set $key to an empty string in ClassInfoCache');
    return value == null ? _prefs.remove(key) : _prefs.setString(key, value);
  }
}

mixin ClassInfoCacheMixin {
  ClassInfoCache get classInfoCache => gi<ClassInfoCache>();

  String? get classId => classInfoCache.getClassId();
  String? get topicId => classInfoCache.getTopicId();
  String? get yearId => classInfoCache.getYearId();
  String? get subtopicId => classInfoCache.getSubtopicId();
  String? get skillId => classInfoCache.getSkillId();
}
