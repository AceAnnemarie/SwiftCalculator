import Foundation

func performOperation(_ operation: String, _ a: Double, _ b: Double) -> Double? {
    switch operation {
    case "+":
        return a + b
    case "-":
        return a - b
    case "*":
        return a * b
    case "/":
        return b != 0 ? a / b : nil
    default:
        return nil
    }
}

func main() {
    print("Enter first number:")
    guard let input1 = readLine(), let num1 = Double(input1) else {
        print("Invalid input.")
        return
    }

    print("Enter operator (+, -, *, /):")
    guard let operator = readLine(), ["+", "-", "*", "/"].contains(operator) else {
        print("Invalid operator.")
        return
    }

    print("Enter second number:")
    guard let input2 = readLine(), let num2 = Double(input2) else {
        print("Invalid input.")
        return
    }

    if let result = performOperation(operator, num1, num2) {
        print("Result: \(result)")
    } else {
        print("Error: Division by zero or invalid operation.")
    }
}

main()
