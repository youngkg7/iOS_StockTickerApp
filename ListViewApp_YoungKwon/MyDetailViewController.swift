//
//  MyDetailViewController.swift
//  ListViewApp_YoungKwon
//
//  Created by Young Kwon on 2/6/16.
//  Copyright © 2016 Young Kwon. All rights reserved.
//

import UIKit

class MyDetailViewController: UIViewController {
    
    

    @IBOutlet var detailImage: UIImageView!
    @IBOutlet var detailDesc: UITextView!
    @IBOutlet var detailCap: UILabel!
    @IBOutlet var detailPE: UILabel!
    
    //var detailDescText: String!
    //var detailImageText: String!
    
    var CompDetail: CompObj!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.detailDesc.text = self.CompDetail.desc
        self.detailImage.image = UIImage(named: self.CompDetail.image)
        self.detailCap.text = self.CompDetail.cap
        self.detailPE.text = self.CompDetail.pe

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
