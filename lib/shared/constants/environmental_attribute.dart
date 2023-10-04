import '../../api/api_constants.dart';

import '../utils/app_flavor_helper.dart';

class EnvironmentalAttribute {
  EnvironmentalAttribute.development()
      : flavorType = AppFlavor.development,
        apiBaseUrl = ApiConstants.baseUrlDevelopment;

  EnvironmentalAttribute.production()
      : flavorType = AppFlavor.production,
        apiBaseUrl = ApiConstants.baseUrlProduction;

  final String apiBaseUrl;
  final AppFlavor flavorType;

  bool get isDevelopment => flavorType == AppFlavor.development;

  bool get isProduction => flavorType == AppFlavor.production;
}
