//
//  TVRecommendationViewController.swift
//  recommendations
//
//  Created by Spence on 7/25/18.
//  Copyright © 2018 Maya Narang. All rights reserved.
//

import UIKit

class TVRecommendationViewController: UIViewController {
    
    @IBOutlet weak var tvLabel: UILabel!
    @IBOutlet weak var tvImage: UIImageView!
    @IBOutlet weak var rec2Label: UIButton!
    
    @IBAction func rec2Button(_ sender: UIButton) {
        getRecommendation()
    }
    
    var recommendations: [String] = ["Stranger Things", "Marvel's Agents of S.H.I.E.L.D", "Supergirl", "The Flash", "Sherlock", "MasterChef Junior", "Gilmore Girls", "The Office", "Riverdale", "The Great British Bake Off"]
    
    var currentRec = 0
    var tvNum: Int = 0
    func getRecommendation() {
        tvNum = recommendations.count
        currentRec = Int(arc4random_uniform(UInt32(tvNum)))
        tvLabel.text = recommendations[currentRec]
        tvImage.image = UIImage(named: recommendations[currentRec])
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        getRecommendation()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func motionBegan(_ motion: UIEventSubtype, with event: UIEvent?) {
        getRecommendation()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
