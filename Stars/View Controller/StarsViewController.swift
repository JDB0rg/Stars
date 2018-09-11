//
//  StarsViewController.swift
//  Stars
//
//  Created by Madison Waters on 9/11/18.
//  Copyright © 2018 Jonah Bergevin. All rights reserved.
//

import UIKit

class StarsViewController: UIViewController {

    @IBOutlet weak var starNameTextField: UITextField!
    @IBOutlet weak var distanceTextField: UITextField!
    @IBOutlet weak var starListTextView: UITextView!
    
    let starsController = StarsController()
    
    @IBAction func listStarsButtonTapped(_ sender: Any) {
        var output = ""
        
        for star in starsController.stars {
            output += "\(star.name) is \(star.distance) light years away.\n"
            
        }
        starListTextView.text = output
    }
    
    @IBAction func createStarButtonTapped(_ sender: Any) {
        
        guard let name = starNameTextField.text,
            let distanceString = distanceTextField.text,
            let distance = Double(distanceString) else { return }
        
        starsController.createStar(withName: name, distance: distance)
    }

        // Do any additional setup after loading the view.


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
