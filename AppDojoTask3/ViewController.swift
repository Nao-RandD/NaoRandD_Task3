//
//  ViewController.swift
//  AppDojoTask3
//
//  Created by Naoyuki Kan on 2021/03/13.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet private weak var leftTextField: UITextField!
	@IBOutlet private weak var rightTextField: UITextField!
	@IBOutlet private weak var leftSwitch: UISwitch!
	@IBOutlet private weak var rightSwitch: UISwitch!
	@IBOutlet private weak var leftLabel: UILabel!
	@IBOutlet private weak var rightLabel: UILabel!
	@IBOutlet private weak var resultLabel: UILabel!


	override func viewDidLoad() {
		super.viewDidLoad()
		// 数字のみの入力となるように設定
		leftTextField.keyboardType = .numberPad
		rightTextField.keyboardType = .numberPad
	}

	@IBAction private func tapButton(_ sender: Any) {
		let leftValue = Int(leftTextField.text!) ?? 0
		let rightValue = Int(rightTextField.text!) ?? 0

		guard leftValue != 0 && rightValue != 0 else {
			resultLabel.text = "数字を入力してください！"
			return
		}

        let signedLeftValue: Int
        if leftSwitch.isOn {
            signedLeftValue = -leftValue
        } else {
            signedLeftValue = leftValue
        }

        let signedRightValue: Int
        if rightSwitch.isOn {
            signedRightValue = -rightValue
        } else {
            signedRightValue = rightValue
        }

		leftLabel.text = String(signedLeftValue)
		rightLabel.text = String(signedRightValue)
		resultLabel.text = String(signedLeftValue + signedRightValue)
	}
}

