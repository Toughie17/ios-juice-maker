//
//  ChangeStockViewController.swift
//  JuiceMaker
//
//  Created by 신동오 on 2023/01/09.
//

import UIKit

class ChangeStockViewController: UIViewController {
    
    var vCon: ViewController? = nil
    
    @IBOutlet weak var strawberryLabel: UILabel!
    @IBOutlet weak var pineappleLabel: UILabel!
    @IBOutlet weak var bananaLabel: UILabel!
    @IBOutlet weak var kiwiLabel: UILabel!
    @IBOutlet weak var mangoLabel: UILabel!
    
    @IBOutlet weak var strawberryStepper: UIStepper!
    @IBOutlet weak var bananaStepper: UIStepper!
    @IBOutlet weak var pineappleStepper: UIStepper!
    @IBOutlet weak var mangoStepper: UIStepper!
    @IBOutlet weak var kiwiStepper: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func setup() {
        strawberryLabel.text = String(FruitStore.shared.fruitStock[.strawberry]!)
        bananaLabel.text = String(FruitStore.shared.fruitStock[.banana]!)
        pineappleLabel.text = String(FruitStore.shared.fruitStock[.pineapple]!)
        mangoLabel.text = String(FruitStore.shared.fruitStock[.mango]!)
        kiwiLabel.text = String(FruitStore.shared.fruitStock[.kiwi]!)
        
        strawberryStepper.value = Double(FruitStore.shared.fruitStock[.strawberry]!)
        bananaStepper.value = Double(FruitStore.shared.fruitStock[.banana]!)
        pineappleStepper.value = Double(FruitStore.shared.fruitStock[.pineapple]!)
        mangoStepper.value = Double(FruitStore.shared.fruitStock[.mango]!)
        kiwiStepper.value = Double(FruitStore.shared.fruitStock[.kiwi]!)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        print("nexVC viewWillDisappear function")
    }
    
    
    
    @IBAction func strawberryStepper(_ sender: UIStepper) {
        print(strawberryStepper.value)
        strawberryLabel.text =  String(Int(strawberryStepper.value))
        FruitStore.shared.changeQuantity(of: .strawberry, num: UInt(strawberryStepper.value))
    }
    
    @IBAction func bananaStepper(_ sender: UIStepper) {
        print(bananaStepper.value)
        bananaLabel.text =  String(Int(bananaStepper.value))
        FruitStore.shared.changeQuantity(of: .banana, num: UInt(bananaStepper.value))
    }
    
    @IBAction func pineappleStepper(_ sender: UIStepper) {
        print(pineappleStepper.value)
        pineappleLabel.text =  String(Int(pineappleStepper.value))
        FruitStore.shared.changeQuantity(of: .pineapple, num: UInt(pineappleStepper.value))
    }

    @IBAction func kiwiStepper(_ sender: UIStepper) {
        print(kiwiStepper.value)
        kiwiLabel.text =  String(Int(kiwiStepper.value))
        FruitStore.shared.changeQuantity(of: .kiwi, num: UInt(kiwiStepper.value))
    }
    
    @IBAction func mangoStepper(_ sender: UIStepper) {
        print(mangoStepper.value)
        mangoLabel.text =  String(Int(mangoStepper.value))
        FruitStore.shared.changeQuantity(of: .mango, num: UInt(mangoStepper.value))
    }
    
    
    
    @IBAction func closeButtonTapped(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
        vCon?.kiwiCurrentStock.text = String(FruitStore.shared.quantity(of: .kiwi)!)
        
    }
    
    
    
}
