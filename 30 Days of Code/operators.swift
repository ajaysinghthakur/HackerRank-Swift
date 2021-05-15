import Foundation

// Complete the solve function below.

//Calucate percentage based on given values
func calculatePercentage(value:Double,percentageVal:Double)->Double{
    let val = value * percentageVal
    return val / 100.0
}

func solve(meal_cost: Double, tip_percent: Int, tax_percent: Int) -> Void {
    let tipValue = calculatePercentage(value: meal_cost,percentageVal: Double(tip_percent))
    let taxValue = calculatePercentage(value: meal_cost,percentageVal: Double(tax_percent))

    let totalCost: Double = meal_cost + tipValue + taxValue
    let roundedCost: Int = Int(totalCost.rounded(.toNearestOrEven))

    print(roundedCost)   
}

// single input from one line
guard let meal_cost = Double((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

guard let tip_percent = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

guard let tax_percent = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

solve(meal_cost: meal_cost, tip_percent: tip_percent, tax_percent: tax_percent)
