//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by 홍성범 on 2021/09/28.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var totalValue: String?
    var tipValue: Double?
    var splitNumberValue: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        totalLabel.text = totalValue
        settingsLabel.text = "Split between \(splitNumberValue!) people, with \(tipValue!)% tips."
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
