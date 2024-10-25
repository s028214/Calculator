//
//  ContentView.swift
//  Calculator
//
//  Created by Mason Z on 10/21/24.
//

import SwiftUI

enum Operation{ // enum is a type define the potential variable that this type can have
    case addition, substraction, multiplication, division, modulus
}

struct ContentView: View {
    @State var total: Int = 0
    @State var operation: Operation = .addition
    
    var body: some View {
        VStack {
            HStack {
                ZStack {
                    Rectangle()
                        .foregroundColor(Color.buttonPink)
                        .cornerRadius(10)
                    Text("\(total)")
                        .font(Constants.textFont)
                        .foregroundColor(.white)
                        .padding(Constants.buttonPadding)
                }
            }.padding() // answer
            HStack {
                CalculatorButton(digit: 9, total: $total, operation: $operation)
                
                CalculatorButton(digit: 8, total: $total, operation: $operation)
                
                CalculatorButton(digit: 7, total: $total, operation: $operation)
                
                Button(action: {
                    operation = .addition
                }, label: {
                    ZStack {
                        Rectangle()
                            .foregroundColor(Color.buttonPink)
                            .cornerRadius(10)
                        Text("+")
                            .font(Constants.textFont)
                            .foregroundColor(.white)
                            .padding(Constants.buttonPadding)
                    }
                })
            }.padding() // row 1
            HStack {
                CalculatorButton(digit: 6, total: $total, operation: $operation)
                
                CalculatorButton(digit: 5, total: $total, operation: $operation)
                
                CalculatorButton(digit: 4, total: $total, operation: $operation)
                
                Button(action: {
                    operation = .substraction
                }, label: {
                    ZStack {
                        Rectangle()
                            .foregroundColor(Color.buttonPink)
                            .cornerRadius(10)
                        Text("-")
                            .font(Constants.textFont)
                            .foregroundColor(.white)
                            .padding(Constants.buttonPadding)
                    }
                })

            }.padding() // row 2
            HStack {
                CalculatorButton(digit: 3, total: $total, operation: $operation)
                
                CalculatorButton(digit: 2, total: $total, operation: $operation)
                
                CalculatorButton(digit: 1, total: $total, operation: $operation)
                Button(action: {
                    operation = .multiplication
                }, label: {
                    ZStack {
                        Rectangle()
                            .foregroundColor(Color.buttonPink)
                            .cornerRadius(10)
                        Text("x")
                            .font(Constants.textFont)
                            .foregroundColor(.white)
                            .padding(Constants.buttonPadding)
                    }
                })

            }.padding() // row 3
            HStack {
                Button(action: {
                    total *= -1
                }, label: {
                    ZStack {
                        Rectangle()
                            .foregroundColor(Color.buttonPink)
                            .cornerRadius(10)
                        Text("±")
                            .font(Constants.textFont)
                            .foregroundColor(.white)
                            .padding(Constants.buttonPadding)
                    }
                })
                CalculatorButton(digit: 0, total: $total, operation: $operation)
                
                Button(action: {
                    operation = .modulus
                }, label: {
                    ZStack {
                        Rectangle()
                            .foregroundColor(Color.buttonPink)
                            .cornerRadius(10)
                        Text("%")
                            .font(Constants.textFont)
                            .foregroundColor(.white)
                            .padding(Constants.buttonPadding)
                    }
                })
                Button(action: {
                    operation = .division
                }, label: {
                    ZStack {
                        Rectangle()
                            .foregroundColor(Color.buttonPink)
                            .cornerRadius(10)
                        Text("/")
                            .font(Constants.textFont)
                            .foregroundColor(.white)
                            .padding(Constants.buttonPadding)
                    }
                })

            }.padding() // options
            HStack { // clear and equals
                Button(action: {
                    total = 0
                    operation = .addition 
                }, label: {
                    ZStack {
                        Rectangle()
                            .foregroundColor(Color.buttonPink)
                            .cornerRadius(10)
                        Text("clear")
                            .font(Constants.textFont)
                            .foregroundColor(.white)
                            .padding(Constants.buttonPadding)
                    }
                })
                Button(action: {
                    
                }, label: {
                    ZStack {
                        Rectangle()
                            .foregroundColor(Color.buttonPink)
                            .cornerRadius(10)
                        Text("=")
                            .font(Constants.textFont)
                            .foregroundColor(.white)
                            .padding(Constants.buttonPadding)
                    }
                })
            }.padding()
         //   .edgesIgnoringSafeArea(.all)
        }
        .background(Color.backgroundPink)
            
    }
}

#Preview {
    ContentView()
}
