import 'package:flutter/material.dart';
import 'package:portfolio/common/utils/redirection/redirection_type.dart';

class Redirection {
  final RedirectionType type;
  final String value;

  const Redirection({
    required this.type,
    required this.value,
  });

  Future<Object?> callback(BuildContext context) {
    switch (type) {
      case RedirectionType.link:
      case RedirectionType.route:
        return Navigator.of(context).pushNamed(value);
    }
  }
}
