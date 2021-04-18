//
//  ViewController.swift
//  myHelloApp
//
//  Created by Daniel-PC on 2021/4/11.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
       /*
        let org = CGPoint(x: 40, y: 80) // y軸上方有bar, length=40
        let size = CGSize(width: 200, height: 200)
        let rect = CGRect(origin: org, size: size)
        let theView  = UIView(frame: rect)
        theView.backgroundColor = UIColor.blue
        self.view.addSubview(theView)
        
        let org2 = CGPoint(x: 80, y: 120)
        let size2 = CGSize(width: 120, height: 120)
        let rect2 = CGRect(origin: org2, size: size2)
        let theView2  = UIView(frame: rect2)
        theView2.backgroundColor = UIColor.red
        self.view.addSubview(theView2) */
    }
    
    @IBOutlet weak var displayLabel: UILabel!
    var memory = 0
    var lastS = ""
    var isLastCount = false
    

    @IBAction func buttonAction(_ sender: UIButton) {
        //print("time:\(Date().timeIntervalSince1970)")
        if let n = sender.titleLabel?.text{ // 確認是否存在Lable上的text
            print("Btn:\(n)")
            var currentText = displayLabel.text ?? ""
            if isLastCount == true{
                currentText = ""
                isLastCount = false
            }
            //currentText = currentText + n
            //let num = Int(currentText) ?? 0
            //displayLabel.text = currentText
            //displayLabel.text = "\(num)"
            displayLabel.text = "\(Int(currentText + n) ?? 0)"
        }
    }
    
    @IBAction func clear(_ sender: Any) {
        displayLabel.text = "0"
    }
    
    
    @IBAction func add(_ sender: Any) {
        let answer = memory + (Int(displayLabel.text ?? "") ?? 0)
        memory = answer
        displayLabel.text = "\(answer)"
        lastS = "+"
        isLastCount = true
    }
    
}

