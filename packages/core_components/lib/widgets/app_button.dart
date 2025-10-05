import 'package:core_components/tokens/colors.dart';
import 'package:core_components/tokens/spacing.dart';
import 'package:core_components/tokens/typography.dart';
import 'package:flutter/material.dart';

enum ButtonVariant { primary, text, secondary }

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final ButtonVariant variant;
  final bool isLoading;
  final bool fullWidth;

  const AppButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.variant = ButtonVariant.primary,
    this.isLoading = false,
    this.fullWidth = true,
  });

  Color _getBackgroundColor() {
    if (onPressed == null || isLoading) {
      return AppColors.neutralComponents.withValues(alpha: 0.4);
    }
    switch (variant) {
      case ButtonVariant.primary:
        return AppColors.brandPrimaryPure;
      case ButtonVariant.secondary:
        return AppColors.brandPrimaryLight;
      case ButtonVariant.text:
        return Colors.transparent;
    }
  }

  Color _getForegroundColor() {
    if (onPressed == null || isLoading) {
      return AppColors.neutralTextSoft;
    }
    switch (variant) {
      case ButtonVariant.primary:
        return AppColors.neutralWhite;
      case ButtonVariant.secondary:
        return AppColors.neutralText;
      case ButtonVariant.text:
        return AppColors.brandPrimaryPure;
    }
  }

  // Define o estilo do botão
  ButtonStyle _getStyle() {
    final backgroundColor = _getBackgroundColor();
    final foregroundColor = _getForegroundColor();

    return ButtonStyle(
      foregroundColor: WidgetStateProperty.all(foregroundColor),
      textStyle: WidgetStateProperty.all(
        AppTypography.fontBodyMD.copyWith(fontWeight: FontWeight.w600),
      ),
      backgroundColor: WidgetStateProperty.all(backgroundColor),
      elevation: WidgetStateProperty.all(0),
      padding: WidgetStateProperty.all(
        AppSpacing.paddingVerticalSm.copyWith(
          left: AppSpacing.lg,
          right: AppSpacing.lg,
        ),
      ),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(300),
          side: variant == ButtonVariant.text
              ? BorderSide.none
              : BorderSide.none,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final button = ElevatedButton(
      onPressed: isLoading ? null : onPressed,
      style: _getStyle(),
      child: isLoading
          ? SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                color: _getForegroundColor(),
                strokeWidth: 2,
              ),
            )
          : Text(text),
    );

    // Aplica fullWidth se necessário
    return fullWidth ? SizedBox(width: double.infinity, child: button) : button;
  }
}
