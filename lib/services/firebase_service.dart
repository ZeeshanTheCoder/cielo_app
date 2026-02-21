import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class FirebaseService {
  static Future<void> init() async {
    // NOTE: These are stubs for Card 3.1.
    // Actual values will come from real Firebase + flutterfire later (Card 3.3).
    final apiKey = dotenv.env['FIREBASE_API_KEY'] ?? 'stub';
    final projectId = dotenv.env['FIREBASE_PROJECT_ID'] ?? 'stub';
    final appId = dotenv.env['FIREBASE_APP_ID'] ?? 'stub';
    final senderId = dotenv.env['FIREBASE_MESSAGING_SENDER_ID'] ?? 'stub';

    // If still stub, skip initializing to avoid crash.
    final isStub = apiKey == 'stub' || projectId == 'stub' || appId == 'stub';
    if (isStub) {
      // Safe no-op: allows app to run without Firebase access
      return;
    }

    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: apiKey,
        projectId: projectId,
        appId: appId,
        messagingSenderId: senderId,
      ),
    );
  }
}
