import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../screens/shell/app_shell.dart';
import '../screens/tabs/today/today_screen.dart';
import '../screens/tabs/mood/mood_screen.dart';
import '../screens/tabs/mood/sentiment_screen.dart';
import '../screens/tabs/dream/dream_screen.dart';
import '../screens/tabs/dream/dream_analysis_screen.dart';
import '../screens/tabs/meditate/meditate_screen.dart';
import '../screens/tabs/meditate/player_screen.dart';
import '../screens/tabs/profile/profile_screen.dart';
import '../screens/tabs/profile/edit_profile_screen.dart';
import '../screens/tabs/profile/subscription_screen.dart';
import '../screens/modals/onboarding_modal.dart';
import '../screens/modals/upgrade_modal.dart';
import '../screens/modals/delete_confirm_modal.dart';

import 'app_routes.dart';

class AppRouter {
  static final _rootKey = GlobalKey<NavigatorState>();
  static final _todayKey = GlobalKey<NavigatorState>();
  static final _moodKey = GlobalKey<NavigatorState>();
  static final _dreamKey = GlobalKey<NavigatorState>();
  static final _meditateKey = GlobalKey<NavigatorState>();
  static final _profileKey = GlobalKey<NavigatorState>();

  static GoRouter get router => _router;

  static final GoRouter _router = GoRouter(
    navigatorKey: _rootKey,
    initialLocation: AppRoutes.today,
    routes: [
      /// --- MODALS (root level) ---
      GoRoute(
        path: AppRoutes.onboarding,
        parentNavigatorKey: _rootKey,
        pageBuilder: (context, state) => const MaterialPage(
          fullscreenDialog: true,
          child: OnboardingModal(),
        ),
      ),
      GoRoute(
        path: AppRoutes.upgrade,
        parentNavigatorKey: _rootKey,
        pageBuilder: (context, state) => const MaterialPage(
          fullscreenDialog: true,
          child: UpgradeModal(),
        ),
      ),
      GoRoute(
        path: AppRoutes.deleteConfirm,
        parentNavigatorKey: _rootKey,
        pageBuilder: (context, state) => const MaterialPage(
          fullscreenDialog: true,
          child: DeleteConfirmModal(),
        ),
      ),

      /// --- SHELL (tabs) ---
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return AppShell(navigationShell: navigationShell);
        },
        branches: [
          /// Today
          StatefulShellBranch(
            navigatorKey: _todayKey,
            routes: [
              GoRoute(
                path: AppRoutes.today,
                builder: (context, state) => const TodayScreen(),
              ),
            ],
          ),

          /// Mood stack: Mood -> Sentiment
          StatefulShellBranch(
            navigatorKey: _moodKey,
            routes: [
              GoRoute(
                path: AppRoutes.mood,
                builder: (context, state) => const MoodScreen(),
                routes: [
                  GoRoute(
                    path: AppRoutes.moodSentiment,
                    builder: (context, state) => const SentimentScreen(),
                  ),
                ],
              ),
            ],
          ),

          /// Dream stack: Dream -> Analysis
          StatefulShellBranch(
            navigatorKey: _dreamKey,
            routes: [
              GoRoute(
                path: AppRoutes.dream,
                builder: (context, state) => const DreamScreen(),
                routes: [
                  GoRoute(
                    path: AppRoutes.dreamAnalysis,
                    builder: (context, state) => const DreamAnalysisScreen(),
                  ),
                ],
              ),
            ],
          ),

          /// Meditate stack: Meditate -> Player
          StatefulShellBranch(
            navigatorKey: _meditateKey,
            routes: [
              GoRoute(
                path: AppRoutes.meditate,
                builder: (context, state) => const MeditateScreen(),
                routes: [
                  GoRoute(
                    path: AppRoutes.player,
                    builder: (context, state) => const PlayerScreen(),
                  ),
                ],
              ),
            ],
          ),

          /// Profile stack: Profile -> Edit -> Subscription
          StatefulShellBranch(
            navigatorKey: _profileKey,
            routes: [
              GoRoute(
                path: AppRoutes.profile,
                builder: (context, state) => const ProfileScreen(),
                routes: [
                  GoRoute(
                    path: AppRoutes.editProfile,
                    builder: (context, state) => const EditProfileScreen(),
                  ),
                  GoRoute(
                    path: AppRoutes.subscription,
                    builder: (context, state) => const SubscriptionScreen(),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
