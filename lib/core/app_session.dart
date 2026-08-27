class AppSession {
  // Singleton instance
  static final AppSession _instance = AppSession._internal();
  factory AppSession() => _instance;
  AppSession._internal();

  // In-memory stored WhatsApp number
  String? currentWhatsappNumber;
}