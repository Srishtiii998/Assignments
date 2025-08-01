//
//  ResultsViewController.swift
//  Personality-Quiz
//
//  Created by srishti  on 30/07/25.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var resultAnswerLabel: UILabel!
    
    @IBOutlet weak var resultDefinitionLabel: UILabel!
    
    
    var responses: [Answer]
    init?(coder : NSCoder , responses : [Answer]){
        self.responses = responses
        super.init(coder : coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculatePersonalityResult()
        // Do any additional setup after loading the view.
        navigationItem.hidesBackButton = true

    }
    
   
    func calculatePersonalityResult() {
        let frequencyOfAnswers = responses.reduce(into:
           [AnimalType: Int]()) { (counts, answer) in
            if let existingCount = counts[answer.type] {
                counts[answer.type] = existingCount + 1
            } else {
                counts[answer.type] = 1
            }
        }
        
        let frequentAnswersSorted = frequencyOfAnswers.sorted { $0.value > $1.value }
        let mostCommonAnswer = frequentAnswersSorted.first!.key
        
        resultAnswerLabel.text = "You are a \(mostCommonAnswer.rawValue)!"
        resultDefinitionLabel.text = mostCommonAnswer.definition


        
        
        
    }
    

    
    
    
    
   
    
}
