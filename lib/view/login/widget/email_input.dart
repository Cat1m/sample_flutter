import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_flutter/bloc/login_bloc/login_bloc.dart';

class EmailInput extends StatelessWidget {
  final FocusNode focusNode;
  const EmailInput({
    super.key,
    required this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginStates>(
      builder: (context, state) {
        return TextFormField(
          focusNode: focusNode,
          decoration: const InputDecoration(
            icon: Icon(Icons.email),
          ),
        );
      },
    );
  }
}
