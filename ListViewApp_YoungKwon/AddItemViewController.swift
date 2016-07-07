//
//  AddItemViewController.swift
//  Lab4_YoungKwon
//
//  Created by Young Kwon on 3/11/16.
//  Copyright © 2016 Young Kwon. All rights reserved.
//

import UIKit

class AddItemViewController: UIViewController {
    @IBOutlet var AddName: UITextField!

    @IBOutlet var AddDesc: UITextField!
    
    @IBOutlet var AddImage: UITextField!
    
    @IBOutlet var AddCap: UITextField!
    
    @IBOutlet var AddPE: UITextField!
    
    var NewComp : (CompObj -> ())!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ClickedCancel(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func ClickedSave(sender: AnyObject) {
//        self.NewComp?.name = self.AddName.text!
//        self.NewComp?.desc = self.AddDesc.text!
//        self.NewComp?.image = self.AddImage.text!
//        self.NewComp?.cap = self.AddCap.text!
//        self.NewComp?.pe = self.AddPE.text!
        NewComp(CompObj(name: self.AddName.text!, desc: self.AddDesc.text!, image: self.AddImage.text!, cap: self.AddCap.text!, pe: self.AddPE.text!))
        
        self.dismissViewControllerAnimated(true, completion: nil)
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
