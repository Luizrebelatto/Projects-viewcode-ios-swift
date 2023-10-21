//
//  CalculatorButton.swift
//  calculator
//
//  Created by Luiz Gabriel Rebelatto Bianchi on 20/10/23.
//

import UIKit

enum CalculatorButton {
    case allClear
    case plusMinus
    case percentage
    case divide
    case multiply
    case subtract
    case add
    case equals
    case number(Int)
    case decimal
    
    init(calcButton: CalculatorButton) {
        switch calcButton {
        case .allClear, .plusMinus, .percentage, .divide, .multiply, .subtract, .add, .equals, .decimal, .subtract:
            self = calcButton
        case .number(let int):
            if int.description.count == 1 {
                self = calcButton
            } else {
                fatalError("CalculatorButton.number was not 1 digit during init ")
            }
        }
    }
}

extension CalculatorButton {
    var title: String {
        switch self {
        case .allClear:
             return "AC"
        case .plusMinus:
            return "+/-"
        case .percentage:
            return "%"
        case .divide:
            return "/"
        case .multiply:
            return "*"
        case .subtract:
            return "-"
        case .add:
            return "+"
        case .equals:
            return "="
        case .number(let int):
            return int.description
        case .decimal:
            return "."
        }
    }
    
    var color: UIColor {
        switch self {
        case .allClear, .plusMinus, .percentage:
            return .lightGray
        case .divide, .multiply, .subtract, .add, .equals:
            return .systemOrange
        case .number, .decimal:
            return .darkGray
        }
    }
    
    var selectedColor: UIColor? {
        switch self {
        case .allClear, .plusMinus, .percentage, .equals, .number, .decimal:
            return nil
        case .divide, .multiply, .subtract, .add:
            return .white
        }
    }
}
