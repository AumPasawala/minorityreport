//
//  ViewController.swift
//  minorityreport
//
//  Created by Aum Pasawala on 6/13/17.
//  Copyright © 2017 Aum Pasawala. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var futureLabel: UILabel!
    @IBOutlet weak var preCogsLabel: UILabel!

    override func viewDidLoad()
    {
      
        super.viewDidLoad()
    }
    @IBAction func onDrag(_ sender: UIPanGestureRecognizer)
    {
        print("Drag")
        
        let point = sender.location(in: view)
        print(point.x , point.y)
        futureLabel.center = point
        
        if sender.state == .ended
        {
            print("end")
            UIView.animate(withDuration: 0.75, animations:
                {
                    self.futureLabel.center = self.view.center
            })
    }
    }
            }

