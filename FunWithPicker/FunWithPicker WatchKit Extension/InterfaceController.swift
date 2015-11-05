//
//  InterfaceController.swift
//  FunWithPicker WatchKit Extension
//
//  Created by Brent Zerbe on 11/5/15.
//  Copyright © 2015 Brent Zerbe. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    @IBOutlet var numberPicker: WKInterfacePicker?
    @IBOutlet var pickerLabel: WKInterfaceLabel?
    @IBOutlet var pickerGroup: WKInterfaceGroup?
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        var pickerItems = [WKPickerItem]()
        
        for index in 0...100 {
            let pickerItem = WKPickerItem()
            pickerItem.title = String(index)
            pickerItems.append(pickerItem)
        }
        
        
        numberPicker!.setItems(pickerItems)
        
        var imageArray = [UIImage]()
        
        for index in 0...100 {
            let image = UIImage(named: "single\(index)")
            imageArray.append(image!)
        }
        
        let progressImages = UIImage.animatedImageWithImages(imageArray,
            duration: 0.0)
        pickerGroup!.setBackgroundImage(progressImages)
        numberPicker!.setCoordinatedAnimations([pickerGroup!])
    }
    @IBAction func pickerChanged(value: Int) {
        let formatter = NSNumberFormatter()
        formatter.numberStyle = NSNumberFormatterStyle.SpellOutStyle
        pickerLabel?.setText(formatter.stringFromNumber(value))
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
