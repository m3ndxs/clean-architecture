import 'package:flutter/material.dart';

class AppShadows {
  static const Color _baseShadowColor = Color(0xFF848484);

  static final BoxShadow cardElevation = BoxShadow(
    color: _baseShadowColor.withValues(alpha: 0.10),
    offset: Offset(0, 4),
    blurRadius: 10,
  );

  static final BoxShadow mediumElevation = BoxShadow(
    color: _baseShadowColor.withValues(alpha: 0.20),
    offset: Offset(0, 8),
    blurRadius: 20,
  );

  static final BoxShadow darkElevation = BoxShadow(
    color: _baseShadowColor.withValues(alpha: 0.25),
    offset: Offset(0, 12),
    blurRadius: 30,
  );

  static final List<BoxShadow> cardShadow = [cardElevation];
  static final List<BoxShadow> modalShadow = [mediumElevation];
}
