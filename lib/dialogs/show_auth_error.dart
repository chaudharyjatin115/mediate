import 'package:flutter/material.dart';
import 'package:mediate/dialogs/generic_dialogs.dart';

import '../auth/auth_error.dart';

Future<void> showAuthError({
  required AuthError authError,
  required BuildContext context,
}) {
  return showGenericDialog<void>(
    context: context,
    title: authError.dialogTitle,
    content: authError.dialogText,
    optionsBuilder: () => {
      'ok': true,
      'logout': true,
    },
  );
}

Future<void> showLoadingError({
  required Object authError,
  required BuildContext context,
}) {
  return showGenericDialog<void>(
    context: context,
    title: 'theres an error',
    content: authError.toString(),
    optionsBuilder: () => {
      'ok': true,
      'logout': true,
    },
  );
}
