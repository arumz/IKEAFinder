//
//  IKEATableViewController.swift
//  IKEAFinder
//
//  Created by Andrew Roembke on 9/24/18.
//  Copyright © 2018 Andrew Roembke. All rights reserved.
//

import UIKit

class IKEATableViewController: UITableViewController {
    
    // ! means not allowed to be nil
    var IKEABucket: IKEADataStore!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //get the height of the status bar
        let statusBarHeight = UIApplication.shared.statusBarFrame.height

        //spacing
        let insets = UIEdgeInsets(top: statusBarHeight,left: 0, bottom: 0, right: 0)

        //Apply insets to the tableView
        tableView.contentInset = insets
        tableView.scrollIndicatorInsets = insets
    }
    
    override func tableView(_ tableView: UITableView,
        numberOfRowsInSection section: Int) -> Int {
        
        return IKEABucket.allIKEAs.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt
        indexPath:IndexPath) -> UITableViewCell {
        
        // FIND A REUSABLE CELL FROM THE STORYBOARD
        let thisCell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        
        //BIND A SPECIFIC INSTANCE OF THE IKEA CLASS (STORED IN OUR BUCKET)
        //TO THE TABLE CELL WE FOUND
        let thisIKEA = IKEABucket.allIKEAs[indexPath.row]
        
        // DISPLAY INFORMATION TO THE USER ON THE TABLE CELL
        thisCell.textLabel?.text = thisIKEA.storeName
        thisCell.detailTextLabel?.text = thisIKEA.country
        
        //RETURN TO THE FORMATTED CELL
        return thisCell
    }
    
    //segue will engage
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //Figure out which segue will be iniated
        // if segue.identifier == "detailView" {
        //get a reference to our segue target
        let detailView = segue.destination as! IKEADetailViewController
        
        //figure out which table cell was clicked
        if let indexPath = self.tableView.indexPathForSelectedRow {
            
            //find the specific ikea object corresponding to that cell
            let selectedIKEA = IKEABucket.allIKEAs[indexPath.row]
            
            //move (a copy of) the instance of the selected ikea class
            //from this view controller to the next view controller
            
            detailView.selectedIKEA = selectedIKEA
        }
        //}
    }
}
