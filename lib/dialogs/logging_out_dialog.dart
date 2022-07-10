import 'package:flutter/material.dart';
import 'package:mediate/dialogs/generic_dialogs.dart';

Future<bool> showLogOutDialog(BuildContext context) {
  return showGenericDialog(
      context: context,
      title: 'Logut',
      content: 'are you sure you want to logout ?',
      optionsBuilder: () => {
            'cancel': false,
            'Delete account': true,
          }).then((value) => value ?? false);
}
