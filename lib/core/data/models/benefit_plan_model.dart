class BenefitPlanModel {
  final String title;
  final String price;
  final String subtitle;
  final List<String> features;
  final bool highlighted;

  const BenefitPlanModel({
    required this.title,
    required this.price,
    required this.subtitle,
    required this.features,
    required this.highlighted,
  });
}
