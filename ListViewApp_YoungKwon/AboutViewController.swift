//
//  AboutViewController.swift
//  ListViewApp_YoungKwon
//
//  Created by Young Kwon on 2/9/16.
//  Copyright © 2016 Young Kwon. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

    @IBOutlet var aboutImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.aboutImage.image = UIImage(named: "wallstreet.jpg")

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
