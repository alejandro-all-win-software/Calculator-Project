//
//  ViewController.swift
//  Calculator Project
//
//  Created by build-server on 7/5/21.
//

import UIKit

class ViewController: UIViewController {
    //Hola
    var firstNumber = Float()
    var secondNumber = Float()
    var signOfTheOperation = String()
    var result = Float()
    let numberDivideByZero = "Cannot divide a number by zero"
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkText
        textView.backgroundColor = .darkText
    }
    
    func setNumbers() {
        if textView.text == "+" || textView.text == "-" || textView.text == "x" || textView.text == "÷" {
            signOfTheOperation = textView.text
            textView.text = ""
        } else if textView.text == String(result) {
            textView.text = ""
        } else if textView.text == numberDivideByZero {
            textView.text = ""
        }
    }
    
    func setUpMathOperation(textView: UITextView) {
        if secondNumber == 0 {
            secondNumber = Float(textView.text) ?? 0
        }
        switch signOfTheOperation {
        case "+":
            result = firstNumber + secondNumber
            firstNumber = result
        case "-":
            result = firstNumber - secondNumber
            firstNumber = result
        case "x":
            result = firstNumber * secondNumber
            firstNumber = result
        case "÷":
            if secondNumber != 0 {
                result = firstNumber / secondNumber
                firstNumber = result
            } else {
                textView.text = numberDivideByZero
                firstNumber = 0
                secondNumber = 0
                result = 0
                signOfTheOperation = ""
            }
        default:
            textView.text = ""
        }
    }
    
    @IBAction func clearText(_ sender: Any) {
        textView.text = ""
        firstNumber = 0
        secondNumber = 0
        result = 0
        signOfTheOperation = ""
    }
    @IBAction func deleteLastNumber(_ sender: Any) {
        let deletedNumber = textView.text.dropLast()
        textView.text = String(deletedNumber)
    }
    
    @IBAction func numberZeroAction(_ sender: Any) {
        setNumbers()
        textView.text.append(contentsOf: "0")
    }
    
    @IBAction func numberOneAction(_ sender: Any) {
        setNumbers()
        textView.text.append(contentsOf: "1")
    }
    
    @IBAction func numberTwoAction(_ sender: Any) {
        setNumbers()
        textView.text.append(contentsOf: "2")
    }
    
    @IBAction func numberThreeAction(_ sender: Any) {
        setNumbers()
        textView.text.append(contentsOf: "3")
    }
    
    @IBAction func numberFourAction(_ sender: Any) {
        setNumbers()
        textView.text.append(contentsOf: "4")
    }
    
    @IBAction func numberFiveAction(_ sender: Any) {
        setNumbers()
        textView.text.append(contentsOf: "5")
    }
    
    @IBAction func numberSixAction(_ sender: Any) {
        setNumbers()
        textView.text.append(contentsOf: "6")
    }
    
    @IBAction func numberSevenAction(_ sender: Any) {
        setNumbers()
        textView.text.append(contentsOf: "7")
    }
    
    @IBAction func numberEightAction(_ sender: Any) {
        setNumbers()
        textView.text.append(contentsOf: "8")
    }
    
    @IBAction func numberNineAction(_ sender: Any) {
        setNumbers()
        textView.text.append(contentsOf: "9")
    }
    
    @IBAction func pointAction(_ sender: Any) {
        if textView.text.last == "+" || textView.text.last == "-" || textView.text.last == "x" || textView.text.last == "÷" || textView.text == "" {
            textView.text.append(contentsOf: "0.")
        } else {
            textView.text.append(contentsOf: ".")
        }
    }
    
    @IBAction func percentAction(_ sender: Any) {
        if textView.text.last == "+" || textView.text.last == "-" || textView.text.last == "x" || textView.text.last == "÷" || textView.text == "" {
        } else {
            textView.text.append(contentsOf: "%")
        }
    }
    
    @IBAction func changeToPositiveOrNegative(_ sender: Any) {
        if textView.text == "" || textView.text == "+" || textView.text == "-" || textView.text == "x" || textView.text == "÷" || textView.text == numberDivideByZero {
        } else if Float(textView.text) ?? 0 > 0 {
            textView.text.insert("-", at: textView.text.startIndex)
        } else if Float(textView.text) ?? 0 < 0 {
            let removedNegativeSign = textView.text.replacingOccurrences(of: "-", with: "")
            textView.text = removedNegativeSign
        }
    }
    @IBAction func sumANumber(_ sender: Any) {
        if textView.text.last == "+" || textView.text.last == "-" || textView.text.last == "x" || textView.text.last == "÷" || textView.text == "" {
            let changedSign = textView.text.replacingOccurrences(of: "\(textView.text.last ?? "+")", with: "+")
            textView.text = changedSign
        } else {
            if firstNumber == 0 {
                firstNumber = Float(textView.text) ?? 0
                textView.text = "+"
            } else {
                setUpMathOperation(textView: textView)
                textView.text = "+"
            }
        }
    }
    
    @IBAction func subtractANumber(_ sender: Any) {
        if textView.text.last == "+" || textView.text.last == "-" || textView.text.last == "x" || textView.text.last == "÷" || textView.text == "" {
            let changedSign = textView.text.replacingOccurrences(of: "\(textView.text.last ?? "-")", with: "-")
            textView.text = changedSign
        } else {
            if firstNumber == 0 {
                firstNumber = Float(textView.text) ?? 0
                textView.text = "-"
            } else {
                setUpMathOperation(textView: textView)
                textView.text = "-"
            }
        }
    }
    
    @IBAction func multiplyANumber(_ sender: Any) {
        if textView.text.last == "+" || textView.text.last == "-" || textView.text.last == "x" || textView.text.last == "÷" || textView.text == "" {
            let changedSign = textView.text.replacingOccurrences(of: "\(textView.text.last ?? "x")", with: "x")
            textView.text = changedSign
        } else {
            if firstNumber == 0 {
                firstNumber = Float(textView.text) ?? 0
                textView.text = "x"
            } else {
                setUpMathOperation(textView: textView)
                textView.text = "x"
            }
        }
    }
    
    @IBAction func divideANumber(_ sender: Any) {
        if textView.text.last == "+" || textView.text.last == "-" || textView.text.last == "x" || textView.text.last == "÷" || textView.text == "" {
            let changedSign = textView.text.replacingOccurrences(of: "\(textView.text.last ?? "÷")", with: "÷")
            textView.text = changedSign
        } else {
            if firstNumber == 0 {
                firstNumber = Float(textView.text) ?? 0
                textView.text = "÷"
            } else {
                setUpMathOperation(textView: textView)
                textView.text = "÷"
            }
        }
    }
    
    @IBAction func result(_ sender: Any) {
        secondNumber = Float(textView.text) ?? 0
        switch signOfTheOperation {
        case "+":
            result = firstNumber + secondNumber
            firstNumber = 0
            textView.text = String(result)
        case "-":
            result = firstNumber - secondNumber
            firstNumber = 0
            textView.text = String(result)
        case "x":
            result = firstNumber * secondNumber
            firstNumber = 0
            textView.text = String(result)
        case "÷":
            if secondNumber != 0 {
                result = firstNumber / secondNumber
                firstNumber = 0
                textView.text = String(result)
            } else {
                textView.text = numberDivideByZero
                firstNumber = 0
                secondNumber = 0
                result = 0
                signOfTheOperation = ""
            }
        default:
            textView.text = ""
        }
        
    }
}
