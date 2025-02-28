public class UtilityHelper {

    // Method to calculate the discount amount
    public static Decimal calculateDiscount(Decimal originalPrice, Decimal discountPercentage) {
        if (originalPrice == null || discountPercentage == null || originalPrice <= 0 || discountPercentage < 0) {
            throw new IllegalArgumentException('Invalid input values.');
        }
        return originalPrice * (discountPercentage / 100);
    }

    // Method to reverse a given string
    public static String reverseString(String input) {
        if (String.isEmpty(input)) {
            return input; // Return empty or null string as-is
        }
        String reversed = '';
        for (Integer i = input.length() - 1; i >= 0; i--) {
            reversed += input.charAt(i);
        }
        return reversed;
    }
    //test changes
    public static String reverseString(String input) {
        if (String.isEmpty(input)) {
            return input; // Return empty or null string as-is
        }
        String reversed = '';
        for (Integer i = input.length() - 1; i >= 0; i--) {
            reversed += input.charAt(i);
        }
        return reversed;
    }
}