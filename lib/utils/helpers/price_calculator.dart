class SsappPricingCalculator {
  static double taxRate = 0.16;
  // Calculate Price based on tax and shipping
  static double calculateTotalPrice(double productPrice) {
    double taxAmount = getTax(productPrice);
    double shippingCost = getShippingCost();

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  // Calculate shipping cost
  static double getShippingCost() {
    //Based on different criteria
    return 200;
  }

  static String calculateShippingCost() {
    //Returns the cost of shipping as a string to allow for easier interpolation
    //Later rewrite code Logic
    return getShippingCost().toStringAsFixed(2);
  }

  static String calculateTax(double productPrice) {
    var tax = getTax(productPrice);
    return tax.toStringAsFixed(2);
  }

  // Calculate tax
  static double getTax(double productPrice) {
    return productPrice * taxRate;
  }
}
