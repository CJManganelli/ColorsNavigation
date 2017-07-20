//
//  ColorTableViewController.swift
//  ColorsWithNav
//
//  Created by Carl Manganelli on 7/19/17.
//  Copyright © 2017 Carl Manganelli. All rights reserved.
//

import UIKit

class ColorTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {


    
    var colors: [Color] = [Color(colorLabel: "red", colorValue: UIColor.red), Color(colorLabel: "orange", colorValue: UIColor.orange), Color(colorLabel: "yellow", colorValue: UIColor.yellow), Color(colorLabel: "green", colorValue: UIColor.green), Color(colorLabel: "blue", colorValue: UIColor.blue), Color(colorLabel: "purple", colorValue: UIColor.purple), Color(colorLabel: "brown", colorValue: UIColor.brown)]

    
    
    //var colors: [Colors] = [Colors.init(colorLabel: "red", colorValue: UIColor.red), Colors.init(colorLabel: "orange", colorValue: UIColor.orange), Colors.init(colorLabel: "yellow", colorValue: UIColor.yellow), Colors.init(colorLabel: "green", colorValue: UIColor.green), Colors.init(colorLabel: "blue", colorValue: UIColor.blue), Colors.init(colorLabel: "purple", colorValue: UIColor.purple), Colors.init(colorLabel: "brown", colorValue: UIColor.brown)]
    
    
    @IBOutlet weak var colorsTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Colors"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        
        cell.textLabel?.text = colors[indexPath.row].colorLabel
        cell.backgroundColor = colors[indexPath.row].colorValue
        cell.selectionStyle = .none
        
        return cell
    }
    
    /*
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.isSelected = false
    }
    */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ColorDetailViewController,
           let row = colorsTableView.indexPathForSelectedRow?.row {
            destination.color = colors[row]
        }
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
