//
//  ViewController.swift
//  Date Picker Alarm Timer
//
//  Created by D7703_13 on 2018. 4. 12..
//  Copyright © 2018년 ous. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var currentTime: UILabel!
    @IBOutlet weak var setTime: UILabel!
    
    var myTimer = Timer()
    
    
 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       //현재 시간 넣어야함
        
        
        myTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {(myTimer) in
            self.updateTime()
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func updateTime() {_ = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        currentTime.text = formatter.string(from: datePicker.date)
        //        timeLabel.text = String(describing: date)
        
        if currentTime.text == setTime.text {
            view.backgroundColor = UIColor.red
        }
    }
    
    
    @IBAction func UIDatePicker(_ sender: UIDatePicker) {
        _ = sender
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        setTime.text = formatter.string(from: datePicker.date)

    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        view.backgroundColor = UIColor.white
    }
    
    
    
}

