//
//  ViewController.swift
//  SampleApp
//
//  Created by 羽田 健太郎 on 2017/06/05.
//  Copyright © 2017年 羽田 健太郎. All rights reserved.
//

import UIKit

struct Model{
    var text:String
}

class CustomTableViewCell:UITableViewCell{
    @IBOutlet weak var label:UILabel!
    func configure(model:Model){
        label.text = model.text
    }
}

class ViewController: UIViewController {
    
    
    @IBOutlet weak var profileLeftMargin: NSLayoutConstraint!
    @IBOutlet weak var profileImageView: CustomImageView!
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tapButton(){
        self.profileLeftMargin.constant = 0
        UIView.animate(withDuration: 1.0, delay: 0, options: UIViewAnimationOptions.allowUserInteraction, animations: {
            self.profileLeftMargin.constant = 100
            self.view.layoutIfNeeded()
        }) { (res) in
            
        }
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        
        let model = Model(text: "test")
        cell.configure(model: model)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let view = UIView()
        view.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 30)
        view.backgroundColor = UIColor.red
        return view
    }
}
