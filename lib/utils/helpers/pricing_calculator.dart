class TPricingCalculator {
  //Calculate Price Based on Shipping
  static String calculateShippingCost(
    double productPrice,
    double shippingRate,
  ) {
    double shippingCost = productPrice * shippingRate / 100;
    return shippingCost.toStringAsFixed(2);
  }
}
