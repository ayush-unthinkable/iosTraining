//
//  ViewController.swift
//  mydemo
//
//  Created by Unthinkable on 20/04/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLbl: UILabel!
    var didTap=true
    override func viewDidLoad() {
        super.viewDidLoad()
        textLbl.text="ayush and shivam"
        textLbl.textColor=UIColor.black
        textLbl.textAlignment = .center
        textLbl.backgroundColor=UIColor.cyan
        let tap=UITapGestureRecognizer(
            target: self, action: #selector(didTextLabel))
        textLbl.isUserInteractionEnabled=true
        textLbl.addGestureRecognizer(tap)
        // Do any additional setup after loading the view.
    }
    @objc func didTextLabel()
    {
        if(didTap)
        {    textLbl.backgroundColor=UIColor.blue
            didTap=false
        }
        else
        {
            textLbl.backgroundColor=UIColor.brown
            didTap=true
        }
    }
    @IBOutlet var myview: UIView!
    var didTapSubmit=true
    @IBAction func submitBtn(_ sender: Any) {
        if(didTapSubmit==true)
        {
            myview.backgroundColor=UIColor.red
            didTapSubmit=false
            
        }
        else{
            myview.backgroundColor=UIColor.yellow
            didTapSubmit=true
        }
    }
    

}

