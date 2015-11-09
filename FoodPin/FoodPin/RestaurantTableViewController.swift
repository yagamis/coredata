//
//  RestaurantTableViewController.swift
//  FoodPin
//
//  Created by xiaobo on 15/10/5.
//  Copyright © 2015年 xiaobo. All rights reserved.
//

import UIKit
import CoreData

class RestaurantTableViewController: UITableViewController,NSFetchedResultsControllerDelegate {
    
    var restaurants:[Restaurant] = []
    
    var frc : NSFetchedResultsController!

    override func viewDidLoad() {
        super.viewDidLoad()
            
            tableView.estimatedRowHeight = 80
            tableView.rowHeight = UITableViewAutomaticDimension

        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .Plain, target: nil, action: nil)
        
        let request = NSFetchRequest(entityName: "Restaurant")
        let sd = NSSortDescriptor(key: "name", ascending: true)
        request.sortDescriptors = [sd]
        
        let buffer = (UIApplication.sharedApplication().delegate as? AppDelegate)?.managedObjectContext
        
        frc = NSFetchedResultsController(fetchRequest: request, managedObjectContext: buffer!, sectionNameKeyPath: nil, cacheName: nil)
        frc.delegate = self
        
        do {
            try frc.performFetch()
            restaurants = frc.fetchedObjects as! [Restaurant]
        } catch {
            print(error)
        }
        
    }
    
    func controllerWillChangeContent(controller: NSFetchedResultsController) {
        tableView.beginUpdates()
    }
    
    func controllerDidChangeContent(controller: NSFetchedResultsController) {
        tableView.endUpdates()
    }
    
    func controller(controller: NSFetchedResultsController, didChangeObject anObject: AnyObject, atIndexPath indexPath: NSIndexPath?, forChangeType type: NSFetchedResultsChangeType, newIndexPath: NSIndexPath?) {
        switch type {
        case .Insert:
            if let _newIndexPath = newIndexPath {
                tableView.insertRowsAtIndexPaths([_newIndexPath], withRowAnimation: .Automatic)
            }
        case .Delete:
            if let _indexPath = indexPath {
                tableView.deleteRowsAtIndexPaths([_indexPath], withRowAnimation: .Automatic)
            }
        case .Update:
            if let _indexPath = indexPath {
                tableView.reloadRowsAtIndexPaths([_indexPath], withRowAnimation: .Automatic)
            }
        default:
            tableView.reloadData()
        }
        
        restaurants = controller.fetchedObjects as! [Restaurant]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

//    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 1
//    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return restaurants.count
    }
    
    /*
    //选择了行以后的操作
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let alert = UIAlertController(title: "亲，您选择了我", message: "消息", preferredStyle: .ActionSheet)
    
        let cancelAction = UIAlertAction(title: "取消", style: .Cancel,handler: nil)

        let 拨打行为的处理 = { (action: UIAlertAction) -> Void in
            let alert = UIAlertController(title: "提示", message: "您拨打的电话号码暂时无法接通", preferredStyle: .Alert)
            let action = UIAlertAction(title: "ok", style: .Default, handler: nil)
            alert.addAction(action)
            self.presentViewController(alert, animated: true, completion: nil)
        }

        
        let dialAction = UIAlertAction(title: "拨打 021-6532 \(indexPath.row)", style: .Default,handler: 拨打行为的处理)

        let 我来过 = UIAlertAction(title: "我来过",style: .Default) { (_) -> Void in
            let cell = tableView.cellForRowAtIndexPath(indexPath)
            cell?.accessoryType = UITableViewCellAccessoryType.Checkmark
            
            self.去过的餐馆[indexPath.row] = true
        }
        
        alert.addAction(cancelAction)
        alert.addAction(dialAction)
        alert.addAction(我来过)

        
        self.presentViewController(alert, animated: true, completion: nil)
    
    }
    
    */
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! CustomTableViewCell

        // Configure the cell...
        cell.restaurantImage.image = UIImage(data: restaurants[indexPath.row].image!)
        cell.restaurantName.text = restaurants[indexPath.row].name
        cell.restaurantType.text = restaurants[indexPath.row].type
        cell.location.text = restaurants[indexPath.row].location
    
        
        cell.restaurantImage.layer.cornerRadius = cell.restaurantImage.frame.size.width / 2
        
        cell.restaurantImage.clipsToBounds = true
        
        cell.accessoryType = restaurants[indexPath.row].isVisited.boolValue ? .Checkmark : .None

        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            restaurants.removeAtIndex(indexPath.row)
            
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
            
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    
    override func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]? {
        let 分享行为 = UITableViewRowAction(style: .Default, title: "分享") { (action, indexPath) -> Void in
            
            let alert = UIAlertController(title: "分享到",message: "请选择您要分享的社交类型", preferredStyle: .ActionSheet)
            
            let qqAction = UIAlertAction(title: "qq",style: .Default, handler: nil)
            let weiboAction = UIAlertAction(title: "微博",style: .Default, handler: nil)
            let wxAction = UIAlertAction(title: "微信",style: .Default, handler: nil)
            
            alert.addAction(qqAction)
            alert.addAction(weiboAction)
            alert.addAction(wxAction)
            self.presentViewController(alert, animated: true, completion: nil)
            
        }
        
        分享行为.backgroundColor = UIColor(red: 218/255, green: 225/255, blue: 218/255, alpha: 1)
        
        
        let 删除行为  = UITableViewRowAction(style: .Default, title: "删除") { (action, indexPath) -> Void in
            let buffer = (UIApplication.sharedApplication().delegate as? AppDelegate)?.managedObjectContext
            
            let restaurantToDel = self.frc.objectAtIndexPath(indexPath) as! Restaurant
            
            buffer?.deleteObject(restaurantToDel)
            
            do {
                try buffer?.save()
            } catch {
                print(error)
            }
        }
        
        
        return [分享行为, 删除行为]
    }


    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */
    
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "showRestaurantDetail" {
            let destVC = segue.destinationViewController as! DetailTableViewController
            
            destVC.restaurant = restaurants[(tableView.indexPathForSelectedRow!.row)]
            
        }
        
        
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    
    @IBAction func unwindToHomeScreen(segue: UIStoryboardSegue) {
        
    }

}
