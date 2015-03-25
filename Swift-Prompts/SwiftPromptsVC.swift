//
//  ViewController.swift
//  Swift-Prompts
//
//  Created by Gabriel Alvarado on 3/15/15.
//  Copyright (c) 2015 Gabriel Alvarado. All rights reserved.
//

import UIKit

class ViewController: UIViewController,  SwiftPromptsProtocol{

    @IBOutlet var backgroundImageView: UIImageView!
    
    var prompt = SwiftPromptsView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Set the background view image
        backgroundImageView.image = UIImage(named: "Alps")
        backgroundImageView.contentMode = .ScaleAspectFill
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "rotated", name: UIDeviceOrientationDidChangeNotification, object: nil)
    }

    @IBAction func facebookPrompt(sender: UIButton)
    {
        //Create an instance of SwiftPromptsView and assign its delegate
        prompt = SwiftPromptsView(frame: self.view.bounds)
        prompt.delegate = self
        
        //Set the properties for the background
        prompt.setBlurringLevel(2.0)
        prompt.setColorWithTransparency(UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 0.64))
        
        //Set the properties of the promt
        prompt.setPromtHeader("Facebook")
        prompt.setPromptTopBarVisibility(true)
        prompt.setPromptBottomBarVisibility(false)
        prompt.setPromptTopLineVisibility(false)
        prompt.setPromptBottomLineVisibility(true)
        prompt.setPromptHeaderBarColor(UIColor(red: 59.0/255.0, green: 89.0/255.0, blue: 152.0/255.0, alpha: 0.67))
        prompt.setPromptHeaderTxtColor(UIColor.whiteColor())
        prompt.setPromptContentTxtColor(UIColor(red: 59.0/255.0, green: 89.0/255.0, blue: 152.0/255.0, alpha: 0.72))
        prompt.setPromptBottomLineColor(UIColor(red: 151.0/255.0, green: 151.0/255.0, blue: 151.0/255.0, alpha: 1.0))
        prompt.setMainButtonText("ok")
        
        self.view.addSubview(prompt)
    }
    
    @IBAction func whatsAppPrompt(sender: UIButton)
    {
        //Create an instance of SwiftPromptsView and assign its delegate
        prompt = SwiftPromptsView(frame: self.view.bounds)
        prompt.delegate = self
        
        //Set the properties for the background
        prompt.setColorWithTransparency(UIColor.clearColor())
        
        //Set the properties of the promt
        prompt.setPromtHeader("WhatsApp")
        prompt.setPromptContentText("Would you like to send this image through WhatsApp?")
        prompt.setPromptTopBarVisibility(true)
        prompt.setPromptBottomBarVisibility(false)
        prompt.setPromptTopLineVisibility(false)
        prompt.setPromptBottomLineVisibility(true)
        prompt.setPromptHeaderBarColor(UIColor(red: 100.0/255.0, green: 212.0/255.0, blue: 72.0/255.0, alpha: 1.0))
        prompt.setPromptHeaderTxtColor(UIColor.whiteColor())
        prompt.setPromptBottomLineColor(UIColor(red: 151.0/255.0, green: 151.0/255.0, blue: 151.0/255.0, alpha: 1.0))
        prompt.setPromptButtonDividerColor(UIColor(red: 151.0/255.0, green: 151.0/255.0, blue: 151.0/255.0, alpha: 1.0))
        prompt.enableDoubleButtonsOnPrompt()
        prompt.setMainButtonText("Send")
        prompt.setSecondButtonText("Cancel")
        
        self.view.addSubview(prompt)
    }
    
    @IBAction func successPrompt(sender: UIButton)
    {
        //Create an instance of SwiftPromptsView and assign its delegate
        prompt = SwiftPromptsView(frame: self.view.bounds)
        prompt.delegate = self
        
        //Set the properties for the background
        prompt.enableLightEffectView()
        
        //Set the properties of the promt
        prompt.setPromtHeader("Success")
        prompt.setPromptContentText("The photo was successfully saved to your camera roll and your media library.")
        prompt.setPromptTopLineVisibility(true)
        prompt.setPromptBottomLineVisibility(false)
        prompt.setPromptBottomBarVisibility(true)
        prompt.setPromptTopLineColor(UIColor(red: 151.0/255.0, green: 151.0/255.0, blue: 151.0/255.0, alpha: 1.0))
        prompt.setPromptBackgroundColor(UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 0.67))
        prompt.setPromptBottomBarColor(UIColor(red: 34.0/255.0, green: 139.0/255.0, blue: 34.0/255.0, alpha: 0.67))
        prompt.setMainButtonColor(UIColor.whiteColor())
        prompt.setMainButtonText("OK")
        
        self.view.addSubview(prompt)
    }
    
    @IBAction func instagramPrompt(sender: UIButton) {
    }
    
    @IBAction func deletePrompt(sender: UIButton)
    {
        //Create an instance of SwiftPromptsView and assign its delegate
        prompt = SwiftPromptsView(frame: self.view.bounds)
        prompt.delegate = self
        
        //Set the properties for the background
        prompt.enableExtraLightEffectView()
        
        //Set the properties of the promt
        prompt.setPromtHeader("Delete")
        prompt.setPromptContentText("Would you like to remove this item permanently from your library?")
        prompt.setPromptTopLineVisibility(true)
        prompt.setPromptBottomLineVisibility(false)
        prompt.setPromptBottomBarVisibility(true)
        prompt.setPromptDismissIconVisibility(true)
        prompt.setPromptOutlineVisibility(true)
        prompt.setPromptHeaderTxtColor(UIColor(red: 255.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1.0))
        prompt.setPromptOutlineColor(UIColor(red: 133.0/255.0, green: 133.0/255.0, blue: 133.0/255.0, alpha: 1.0))
        prompt.setPromptDismissIconColor(UIColor(red: 133.0/255.0, green: 133.0/255.0, blue: 133.0/255.0, alpha: 1.0))
        prompt.setPromptTopLineColor(UIColor(red: 151.0/255.0, green: 151.0/255.0, blue: 151.0/255.0, alpha: 1.0))
        prompt.setPromptBackgroundColor(UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 0.67))
        prompt.setPromptBottomBarColor(UIColor(red: 133.0/255.0, green: 133.0/255.0, blue: 133.0/255.0, alpha: 1.0))
        prompt.setMainButtonColor(UIColor.whiteColor())
        prompt.setMainButtonText("Delete")
        
        self.view.addSubview(prompt)
    }
    
    func rotated()
    {
        prompt.removeFromSuperview()
    }
    
    func clickedOnTheMainButton() {
        println("Clicked on the main button")
    }
    
    func clickedOnTheSecondButton() {
        println("Clicked on the second button")
        prompt.dismissPrompt()
        
    }
    
    func promptWasDismissed() {
        println("Dismissed view")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

