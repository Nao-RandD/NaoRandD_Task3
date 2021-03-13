//
//  ViewController.swift
//  AppDojoTask3
//
//  Created by Naoyuki Kan on 2021/03/13.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet private weak var leftField: UITextField!
	@IBOutlet private weak var rightField: UITextField!
	@IBOutlet private weak var leftSwitch: UISwitch!
	@IBOutlet private weak var rightSwitch: UISwitch!
	@IBOutlet private weak var leftText: UILabel!
	@IBOutlet private weak var rightText: UILabel!
	@IBOutlet private weak var resultText: UILabel!


	override func viewDidLoad() {
		super.viewDidLoad()
		// 数字のみの入力となるように設定
		leftField.keyboardType = .numberPad
		rightField.keyboardType = .numberPad
	}

	@IBAction private func tapButton(_ sender: Any) {
		var value1 = Int(leftField.text!) ?? 0
		var value2 = Int(rightField.text!) ?? 0

		guard value1 != 0 || value2 != 0 else {
			resultText.text = "数字を入力してください！"
			return
		}

		if(leftSwitch.isOn){
			value1 *= -1
		}
		if(rightSwitch.isOn){
			value2 *= -1
		}

		leftText.text = String(value1)
		rightText.text = String(value2)
		resultText.text = String(value1 + value2)
	}
}

