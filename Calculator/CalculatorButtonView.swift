//
//  CalculatorButtonView.swift
//  Calculator
//
//  Created by Mason Zhu (student LM) on 10/22/24.
//

import SwiftUI


struct CalculatorButton: View {
    var digit: Int
    @Binding var total: Int
    @Binding var operation: Operation
    

    var body: some View {
        Button(action: {
            switch operation {
            case .addition:
                total += digit
            case .substraction:
                total -= digit
            case .multiplication:
                total *= digit
            case .division:
                total /= digit
            case .modulus:
                total %= digit
            }
        }, label: {
            ZStack {
                Rectangle()
                    .foregroundColor(Color.buttonPink)
                    .cornerRadius(10)
                Text("\(digit)")
                    .font(Constants.textFont)
                    .foregroundColor(.white)
                    .padding(Constants.buttonPadding)
            }
        })
    }
}

#Preview {
    CalculatorButton(digit: 9, total: Binding.constant(0), operation: Binding.constant(.addition))
}
