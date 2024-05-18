/// Border roundness values for styling widgets.
///
/// Inspired by [Tailwind CSS](https://tailwindcss.com/docs/border-radius). 🐬
///
/// ```dart
/// Container(
///   decoration: BoxDecoration(
///     borderRadius: BorderRadius.only(
///       topLeft: Radius.circular(BorderRoundness.sm.value),
///       topRight: Radius.circular(BorderRoundness.sm.value),
///     ),
///   ),
/// );
/// ```
///
/// The values are:
/// * [none] - 0
/// * [xs] - 4
/// * [sm] - 8
/// * [md] - 12
/// * [lg] - 16
/// * [xl] - 24
/// * [full] - 9999
enum BorderRoundness {
  none(0),
  xs(4),
  sm(8),
  md(12),
  lg(16),
  xl(24),
  full(9999),
  ;

  const BorderRoundness(this.value);

  final double value;
}
