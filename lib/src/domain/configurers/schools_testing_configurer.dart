import 'package:injectable/injectable.dart';
import 'package:testing/testing.dart';

@LazySingleton(as: TestingConfigurer)
class SchoolsTestingConfigurer extends TestingConfigurer {
  @override
  bool get showEndAssessmentButton => false;

  @override
  bool get allowContinuousTesting => true;
}
