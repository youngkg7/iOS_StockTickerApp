//
//  MyTableViewController.swift
//  ListViewApp_YoungKwon
//
//  Created by Young Kwon on 2/6/16.
//  Copyright © 2016 Young Kwon. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController, UISearchResultsUpdating {
    
    var MyComp = [
        CompObj(name: "ANAC", desc: "Anacor Pharmaceuticals is a biopharmaceutical company focused on discovering, developing and commercializing novel small-molecule therapeutics derived from its boron chemistry platform.", image: "ANAC", cap: "2.62B", pe: "-42.62"),
        CompObj(name: "FB", desc: "Facebook is an online social networking service headquartered in Menlo Park, California.", image: "FB", cap: "305.46B", pe: "83.00"),
        CompObj(name: "AAPL", desc: "Apple Inc. is an American multinational technology company headquartered in Cupertino, California, that designs, develops, and sells consumer electronics, computer software, and online services.", image: "AAPL", cap: "560.95B", pe: "10.77"),
        CompObj(name: "MNST", desc: "Monster Corporation is a beverage company that manufactures energy drinks, natural soft drinks, and fruit drinks including Monster Energy, Hansen's Natural Soda, Hansen's Energy, Hansen's Junior Juice, Hubert's Lemonade, Peace Tea, and Blue Sky.", image: "MNST", cap: "26.69B", pe: "46.36"),
        CompObj(name: "JD", desc: "JD.com or Jingdong Mall, formerly 360buy, is a Chinese electronic commerce company headquartered in Beijing.", image: "JD", cap: "36.10B", pe: "-63.59"),
        CompObj(name: "GOOGL", desc: "Alphabet Inc. is an American multinational conglomerate created in 2015 as the parent company of Google and several other companies previously owned by or tied to Google.", image: "GOOGL", cap: "503.97B", pe: "31.03"),
        CompObj(name: "NKE", desc: "Nike, Inc. is an American multinational corporation that is engaged in the design, development, manufacturing and worldwide marketing and sales of footwear, apparel, equipment, accessories and services.", image: "NKE", cap: "100.28B", pe: "28.60"),
        CompObj(name: "CMG", desc: "Chipotle Mexican Grill, Inc. is a chain of restaurants in the United States, United Kingdom, Canada, Germany, and France, specializing in Mission burritos and tacos.", image: "CMG", cap: "15.13B", pe: "33.36"),
        CompObj(name: "JPM", desc: "JPMorgan Chase & Co. is an American multinational banking and financial services holding company headquartered in New York City.", image: "JPM", cap: "215.72B", pe: "9.77"),
        CompObj(name: "UNH", desc: "UnitedHealth Group Inc. is an American diversified managed health care company based in Minnetonka, Minnesota, U.S.", image: "UNH", cap: "116.07B", pe: "20.31"),
        CompObj(name: "NFLX", desc: "Netflix is an American multinational provider of on-demand Internet streaming media, and of flat rate DVD-by-mail in the United States, where mailed DVDs and Blu-ray Disc are sent via Permit Reply Mail.", image: "NFLX", cap: "41.68B", pe: "347.71"),
        CompObj(name: "AMZN", desc: "Amazon.com, Inc., often referred to as simply Amazon, is an American electronic commerce and cloud computing company with headquarters in Seattle, Washington.", image: "AMZN", cap: "263.17B", pe: "447.14"),
        CompObj(name: "WFC", desc: "Wells Fargo & Company is an American multinational banking and financial services holding company which is headquartered in San Francisco, California, with hubquarters throughout the country.", image: "WFC", cap: "247.02B", pe: "11.77"),
        CompObj(name: "GM", desc: "General Motors Company, commonly known as GM, is an American multinational corporation headquartered in Detroit, Michigan, that designs, manufactures, markets and distributes vehicles and vehicle parts and sells financial services.", image: "GM", cap: "47.60B", pe: "5.22"),
        CompObj(name: "MCD", desc: "McDonald's is the world's largest chain of hamburger fast food restaurants, serving around 68 million customers daily in 119 countries across more than 36,000 outlets.", image: "MCD", cap: "110.17B", pe: "25.00"),
        CompObj(name: "BABA", desc: "Alibaba Group Holding Limited is a Chinese e-commerce company that provides consumer-to-consumer, business-to-consumer and business-to-business sales services via web portals.", image: "BABA", cap: "176.04B", pe: "17.51"),
        CompObj(name: "WMT", desc: "Wal-Mart Stores, Inc., doing business as Walmart, is an American multinational retail corporation that operates a chain of hypermarkets, discount department stores and grocery stores.", image: "WMT", cap: "215.84B", pe: "14.75"),
        CompObj(name: "TSLA", desc: "Tesla Motors, Inc. is an American automotive and energy storage company that designs, manufactures, and sells luxury electric cars, electric vehicle powertrain components, and battery products.", image: "TSLA", cap: "26.87B", pe: "-29.60"),
        CompObj(name: "SBUX", desc: "Starbucks Corporation is an American coffee company and coffeehouse chain.", image: "SBUX", cap: "85.02B", pe: "35.31"),
        CompObj(name: "DIS", desc: "The Walt Disney Company, commonly known as Disney, is an American diversified multinational mass media and entertainment conglomerate headquartered at the Walt Disney Studios in Burbank, California.", image: "DIS", cap: "158.33B", pe: "18.13")
    ]
    
    var searchController : UISearchController!
    var searchResults : [CompObj] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        self.searchController = UISearchController(searchResultsController: nil)
        self.searchController.searchBar.sizeToFit()
        self.searchController.hidesNavigationBarDuringPresentation = false;
        searchController.searchResultsUpdater = self
        searchController.dimsBackgroundDuringPresentation = false
        self.tableView.tableHeaderView = self.searchController.searchBar
    }
    
    override func viewDidAppear(animated: Bool) {
        self.tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if searchController.active {
            return searchResults.count
        }
        else {
            return MyComp.count
        }
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "compCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier , forIndexPath: indexPath) as! MyTableViewCell
        
        var compitem : CompObj!
        if searchController.active {
            compitem = searchResults[indexPath.row]
        }
        else{
            compitem = MyComp[indexPath.row]
        }

        // Configure the cell...
        cell.cellItemName?.text = compitem.name
        cell.cellImage?.image = UIImage(named: compitem.image)
        
        //cell.cellItemName?.text = MyComp[indexPath.row].name
        //cell.cellImage?.image = UIImage(named: MyComp[indexPath.row].image)

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        if searchController.active {
            return false
        }
        else {
            return true
        }
    }*/


    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }*/


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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "ShowItemDetail"
        {
            if let indexpath = self.tableView.indexPathForSelectedRow
            {
                let detailViewController = segue.destinationViewController as! MyDetailViewController
        
                detailViewController.CompDetail = MyComp[indexpath.row]
                
                if searchController.active {
                    detailViewController.CompDetail = searchResults[indexpath.row]
                }
                else{
                    detailViewController.CompDetail = MyComp[indexpath.row]
                }
            }
            
        }
        else if (segue.identifier == "AddNewItem") {
            let addViewController = segue.destinationViewController as! AddItemViewController
            addViewController.NewComp = addData
        }
    }
    
    func addData(newItem: CompObj){
        MyComp.append(newItem)
    }
    
    func filterContentForSearchText(searchText: String){
        searchResults = MyComp.filter({ (CompItem:CompObj) -> Bool in
            let namematch = CompItem.name.rangeOfString(searchText, options: NSStringCompareOptions.CaseInsensitiveSearch)
            return namematch != nil
        })
    }
    
    func updateSearchResultsForSearchController(searchController: UISearchController) {
        if let searchText =  searchController.searchBar.text {
            filterContentForSearchText(searchText)
            tableView.reloadData()
        }
    }
}
