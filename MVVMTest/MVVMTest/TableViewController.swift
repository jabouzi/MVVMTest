//
//  TableViewController.swift
//  MVVMTest
//
//  Created by Skander Jabouzi on 2018-01-21.
//  Copyright © 2018 Skander Jabouzi. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var cars: Cars?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cars = Cars();
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "tableCell")
        self.navigationItem.title = "Main"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return (cars?.cars.count)!
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell(style: .value1, reuseIdentifier: "tableCell")
        let carViewModel = cars?.cars[indexPath.row]
        cell.textLabel?.text = carViewModel?.titleText
        cell.detailTextLabel?.text = carViewModel?.horsepowerText
        loadImage(cell: cell, photoURL: carViewModel?.photoURL)
        return cell
    }
    

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("Num: \(indexPath.row)")
        print("Value: \(cars?.cars[indexPath.row].horsepowerText)")
    }
    
    func loadImage(cell: UITableViewCell, photoURL: NSURL?) {
        DispatchQueue.global(qos: .userInitiated).async {
            guard let imageURL = photoURL, let imageData = NSData(contentsOf: imageURL as URL) else {
                return
            }
            DispatchQueue.main.async {
                cell.imageView?.image = UIImage(data: imageData as Data)
                cell.setNeedsLayout()
            }
        }
    }

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
