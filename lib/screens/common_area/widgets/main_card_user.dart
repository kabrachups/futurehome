import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:futurehome/widgets/cards/user_card.dart';

import '../../../models/user.dart';
import '../../../providers/providers.dart';

class MainCardUser extends ConsumerWidget {
  const MainCardUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<User> user = ref.watch(userFutureProvider);
    // TODO implement loading and error handling
    return user.when(
      loading: () => const CircularProgressIndicator(),
      error: (error, stack) => const Text('Oops'),
      data: (user) => UserCard(user: user),
    );
  }
}
