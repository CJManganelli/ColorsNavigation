//
//  ColorDetailViewController.swift
//  ColorsWithNav
//
//  Created by Carl Manganelli on 7/19/17.
//  Copyright © 2017 Carl Manganelli. All rights reserved.
//

import UIKit

class ColorDetailViewController: UIViewController {

    
    var color: Color?
    
    
    @IBOutlet weak var colorNameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorNameLabel.text = color?.colorLabel
        self.title = color?.colorLabel
        self.view.backgroundColor = color?.colorValue

        // Do any additional setup after loading the view.
    }

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
