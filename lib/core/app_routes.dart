class AppRoutes {
  // tabs
  static const today = '/today';
  static const mood = '/mood';
  static const dream = '/dream';
  static const meditate = '/meditate';
  static const profile = '/profile';

  // stacks
  static const moodSentiment = 'sentiment';
  static const dreamAnalysis = 'analysis';
  static const player = 'player';
  static const editProfile = 'edit';
  static const subscription = 'subscription';

  // modals
  static const onboarding = '/onboarding';
  static const upgrade = '/upgrade';
  static const deleteConfirm = '/delete-confirm';

  // ✅ full paths (helpers)
  static const moodSentimentPath = '$mood/$moodSentiment';
  static const dreamAnalysisPath = '$dream/$dreamAnalysis';
  static const playerPath = '$meditate/$player';
  static const editProfilePath = '$profile/$editProfile';
  static const subscriptionPath = '$profile/$subscription';
}
