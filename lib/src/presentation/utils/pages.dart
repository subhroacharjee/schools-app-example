import 'package:core_flutter/presentation/screens/not_found_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

Page notFoundPage(BuildContext context, GoRouterState state) => MaterialPage(
      child: NotFoundScreen(
        onGoBackHome: (context) => context.go('/loading'),
      ),
    );
