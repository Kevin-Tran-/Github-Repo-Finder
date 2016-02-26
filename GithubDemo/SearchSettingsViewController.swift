//
//  SearchSettingsViewController.swift
//  GithubDemo
//
//  Created by Kevin Tran on 2/25/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

class SearchSettingsViewController: UIViewController {
    
    weak var delegate: SettingsPresentingViewControllerDelegate?
    var settings: GithubRepoSearchSettings!
    
    @IBOutlet weak var starLabel: UILabel!
    @IBOutlet weak var starSlider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        starLabel.text = "Minimum number of stars = \(settings.minStars)"
        starSlider.value = Float(settings.minStars)
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        starLabel.text = "Minimum number of stars = \(settings.minStars)"
        starSlider.value = Float(settings.minStars)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveButtonTapped(sender: UIBarButtonItem) {
        //print(starSlider.value)
        settings.minStars = Int(starSlider.value)
        self.delegate?.didSaveSettings(settings)
        print(settings.minStars)
    }
    
    @IBAction func backButtonPress(sender: AnyObject) {
        self.delegate?.didCancelSettings()
        dismissViewControllerAnimated(true, completion: nil)

    }
    @IBAction func onValueChanged(sender: UISlider) {
        let roundedValue: Int = Int(round(sender.value))
        sender.value = Float(roundedValue)
        starLabel.text = "Minimum number of stars = \(roundedValue)"
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
