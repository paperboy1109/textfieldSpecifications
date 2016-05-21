//
//  ViewController.swift
//  textfieldSpecifications
//
//  Created by Daniel J Janiak on 5/21/16.
//  Copyright © 2016 Daniel J Janiak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var topMemeText: UITextField!
    @IBOutlet var bottomMemeText: UITextField!
    
    var memeTextDelegate = MemeTextDelegate()
    
    let memeTextAttributes = [
            NSStrokeColorAttributeName: UIColor.blackColor(),
            NSForegroundColorAttributeName: UIColor.whiteColor(),
            NSFontAttributeName: UIFont(name: "HelveticaNeue-CondensedBlack", size: 40)!,
            NSStrokeWidthAttributeName: 5
    ]
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.topMemeText.delegate = memeTextDelegate
        self.bottomMemeText.delegate = memeTextDelegate
        
        // Some legacy code ...
        //topMemeText.text = "TOP"
        //topMemeText.placeholder = "TOP"
        /*
        topMemeText.attributedPlaceholder = NSAttributedString(string:"TOP",
                                                   attributes:[NSForegroundColorAttributeName: UIColor.blackColor()])
         */
        
        
        //bottomMemeText.text = "BOTTOM"
        /*
        bottomMemeText.attributedPlaceholder = NSAttributedString(string:"BOTTOM",
                                                    attributes:[NSStrokeColorAttributeName: UIColor.blackColor(), NSForegroundColorAttributeName: UIColor.whiteColor(),
                                                        NSFontAttributeName: UIFont(name: "HelveticaNeue-CondensedBlack", size: 40)!,
                                                        NSStrokeWidthAttributeName: 5  ])
         */
        
        
        // Display placeholder text (with the proper text characteristics)
        topMemeText.attributedPlaceholder = NSAttributedString(string:"TOP", attributes: memeTextAttributes)
        bottomMemeText.attributedPlaceholder = NSAttributedString(string:"BOTTOM", attributes: memeTextAttributes)
        
        
        //Approximate the "Impact" font, use all caps, use black outline
        topMemeText.defaultTextAttributes = memeTextAttributes
        bottomMemeText.defaultTextAttributes = memeTextAttributes
        
        // Center-align the text (this needs to be done after the other adjustments to the appearance of the text)
        bottomMemeText.textAlignment = NSTextAlignment.Center
        topMemeText.textAlignment = NSTextAlignment.Center
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

