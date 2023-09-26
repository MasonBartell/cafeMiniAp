//
//  ViewController.swift
//  cafeMiniApp
//
//  Created by MASON BARTELL on 9/15/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var shoppingCart: UILabel!
    @IBOutlet weak var shopLabel: UILabel!
    
    @IBOutlet weak var textview: UITextView!
    
    @IBOutlet weak var textview2: UITextView!
    
    @IBOutlet weak var foodtext: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var food : [String] = ["Hotdog","Hamburger","The Grubbb Meal", "Chicken Sandwich","Fries"]
    var price : [String] = ["5.00","5.00","13.95","7.50","2.00"]
    
    
    @IBAction func StartOrder(_ sender: UIButton) {
        textview.text = food.joined(separator: "\n")
        textview2.text = price.joined(separator: "\n")
    }
    
    @IBAction func addButton(_ sender: UIButton) {
        var dict : [String : String] = [:]
        for a in food
        {
            if foodtext.text! == a
            {
                for b in price
                {
                    dict[a] = b
                    print(dict)
                }
            }
            
        }
        shopLabel.text = "\(dict)"
        shoppingCart.text = "Shopping Cart $\(dict.values)"
    }
    
}
