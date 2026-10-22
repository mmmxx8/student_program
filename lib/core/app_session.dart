class AppSession {
  // Singleton instance
  static final AppSession _instance = AppSession._internal();
  factory AppSession() => _instance;
  AppSession._internal();

  // In-memory stored values
  String? currentWhatsappNumber;

  void clear() {
    currentWhatsappNumber = null;
  }
}