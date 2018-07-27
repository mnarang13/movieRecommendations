//
//  RecommendationViewController.swift
//  recommendations
//
//  Created by Spence on 7/25/18.
//  Copyright © 2018 Maya Narang. All rights reserved.
//

import UIKit
import Foundation

class RecommendationViewController: UIViewController {

    @IBOutlet weak var movImage: UIImageView!
    @IBOutlet weak var movLabel: UILabel!
    @IBOutlet weak var rec2Label: UIButton!
    
    @IBAction func rec2Button(_ sender: UIButton) {
        getRecommendation()
    }
    
    var recommendations: [String] = ["Black Panther", "Captain America: Civil War", "Star Wars: the Force Awakens", "Harry Potter and the Sorceror's Stone", "Avengers: Infinity War", "Star Wars: A New Hope", "Ocean's 8", "Wonder Woman", "Thor Ragnarok", "Spider-Man: Homecoming", "Now You See Me", "The Incredibles", "The Fellowship of the Ring", "Gifted", "The Avengers", "Bend it like Beckham"]

    var currentRec = 0
    var movieNum: Int = 0
    func getRecommendation() {
        movieNum = recommendations.count
        currentRec = Int(arc4random_uniform(UInt32(movieNum)))
        movLabel.text = recommendations[currentRec]
        movImage.image = UIImage(named: recommendations[currentRec])
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
