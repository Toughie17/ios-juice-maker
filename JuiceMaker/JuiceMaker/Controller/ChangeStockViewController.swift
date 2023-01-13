//
//  ChangeStockViewController.swift
//  JuiceMaker
//
//  Created by 신동오 on 2023/01/09.
//

import UIKit

class ChangeStockViewController: UIViewController {
    
    @IBOutlet weak var kiwiLabel: UILabel!
    @IBOutlet weak var mangoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func setup() {
        mangoLabel.text = String(FruitStore.shared.fruitStock[.mango]!)
        kiwiLabel.text = String(FruitStore.shared.fruitStock[.kiwi]!)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func closeButtonTapped(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)

    }
    
}
