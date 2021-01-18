//
//  AddViewController.swift
//  kadai14
//
//  Created by 坂本龍哉 on 2021/01/17.
//

import UIKit

class AddViewController: UIViewController {
    @IBOutlet weak private var addTextField: UITextField!
    private(set) var additionName = ""

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction private func saveButton(_ sender: Any) {
        additionName = addTextField.text!
        performSegue(withIdentifier: "exit", sender: nil)
    }
}
