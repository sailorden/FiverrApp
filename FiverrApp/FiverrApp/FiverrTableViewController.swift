//
//  FiverrTableViewController.swift
//  FiverrApp
//
//  Created by don't touch me on 6/27/16.
//  Copyright © 2016 trvl, LLC. All rights reserved.
//

import UIKit

class FiverrTableViewController: UITableViewController {
    var categoriesArray = [Category]()
    var currentCat: Category?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    let person7 = Category(name: "Business Plans, Career Advice", fvrDescription: "Business", imageName: "icon-7")
    self.categoriesArray.append(person7)
        
    let person9 = Category(name: "Hold Your Sign, Flyers and Handouts", fvrDescription: "Advertising", imageName: "icon-9")
    self.categoriesArray.append(person9)
        
    let person10 = Category(name: "Animal Care & Pets, Relationship", fvrDescription: "Lifestyle", imageName: "icon-10")
    self.categoriesArray.append(person10)
        
        

    }
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.categoriesArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! FiverrTableViewCell
        
        let cat = self.categoriesArray[indexPath.row]
        
        cell.nameLabel.text = cat.name
        cell.descriptionLabel.text = cat.fvrDescription
        cell.FiverrimageView.image = UIImage(named: cat.imageName)
        
        return cell
        
    }
    
   override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    
        self.currentCat = self.categoriesArray[indexPath.row]
    
        self.performSegueWithIdentifier("FiverSegue", sender: nil)

    
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let controller = segue.destinationViewController as? ViewController
        
        controller?.theCategory = self.currentCat
        
        
    }
        
}



    
    
    
    

