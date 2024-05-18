/// Spacing scale for spacing between widgets
///
/// Inspired by [Tailwind CSS](https://tailwindcss.com/docs/customizing-spacing). 🐬
///
/// ```dart
/// Container(
///   margin: EdgeInsets.symmetric(
///     horizontal: SpacingScale.lg.value,
///     vertical: SpacingScale.md.value,
///   ),
/// );
/// ```
///
/// The values are:
/// * [none] - 0
/// * [xs] - 2
/// * [sm] - 4
/// * [md] - 8
/// * [lg] - 12
/// * [xl] - 16
/// * [xxl] - 24
/// * [xxxl] - 32
/// * [xxxxl] - 48
enum SpacingScale {
  none(0),
  xs(2),
  sm(4),
  md(8),
  lg(12),
  xl(16),
  xxl(24),
  xxxl(32),
  xxxxl(48),
  ;

  const SpacingScale(this.value);

  final double value;
}
