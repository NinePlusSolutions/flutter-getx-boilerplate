import '../constants/environmental_attribute.dart';

enum AppFlavor {
  development,
  production,
}

extension AppFlavorHelper on AppFlavor {
  EnvironmentalAttribute get attributeFlavor {
    switch (this) {
      case AppFlavor.development:
        return EnvironmentalAttribute.development();

      case AppFlavor.production:
        return EnvironmentalAttribute.production();
    }
  }

  String get apiBaseUrl => attributeFlavor.apiBaseUrl;

  bool get isDevelopment => this == AppFlavor.development;

  bool get isProduction => this == AppFlavor.production;
}
