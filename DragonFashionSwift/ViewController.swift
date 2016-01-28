//
//  ViewController.swift
//  DragonFashionSwift
//
//  Created by Yemi Ajibola on 1/28/16.
//  Copyright © 2016 Yemi Ajibola. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource
{
    var delegate:UITableViewDelegate?
    var dataSource:UITableViewDataSource?
    var dragons:[Dragon] = [Dragon]();
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let dragonOne:Dragon = Dragon(name: "Fred", swag: "Blue Umbrella")
        let dragonTwo:Dragon = Dragon(name: "Bob", swag: "Purple suit")
        let dragonThree:Dragon = Dragon(name: "Steve", swag: "Orange trousers")
        
        dragons = [dragonOne, dragonTwo, dragonThree];
        
        
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dragons.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let dragon:Dragon =  dragons[indexPath.row]
        let cell:UITableViewCell = tableView.dequeueReusableCellWithIdentifier("DragonCell")!
        
        cell.textLabel?.text = dragon.fullName
        cell.detailTextLabel?.text = dragon.swag
        
        return cell
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        let detailVC:DetailViewController = segue.destinationViewController as!DetailViewController
        let indexPath:NSIndexPath = self.tableView.indexPathForSelectedRow!
        
        let dragon:Dragon = self.dragons[indexPath.row]
        
        detailVC.title = dragon.fullName
        detailVC.dragon = dragon
        
    }
    
    




}

