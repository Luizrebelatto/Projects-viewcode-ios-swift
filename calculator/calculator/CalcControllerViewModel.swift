//
//  CalcControllerViewModel.swift
//  calculator
//
//  Created by Luiz Gabriel Rebelatto Bianchi on 20/10/23.
//

import Foundation

class CalcControllerViewModel {
    // MARK: - TableView DataSource Array
    let calcButtonCells: [CalculatorButton] = [
        .allClear, .plusMinus, .percentage, .divide,
        .number(7), .number(8), .number(9), .multiply,
        .number(4), .number(5), .number(6), .subtract,
        .number(1), .number(2), .number(3), .add,
        .number(0), .decimal, .equals
    ]
    
    private(set) lazy var calcHeaderLabel: String = "42"
    
}
