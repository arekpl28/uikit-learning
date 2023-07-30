//
//  CardSelectionVC.swift
//  CardWorkout
//
//  Created by Arkadiusz Plumbaum on 30/07/2023.
//

import UIKit

class CardSelectionVC: UIViewController {
    @IBOutlet var cardImageView: UIImageView! // Image view to display cards
    @IBOutlet var buttons: [UIButton]! // Array of buttons (Stop and Restart buttons)
    
    // Array to store the card images (Deck.allValues should be an array of UIImage)
    var cards: [UIImage] = Deck.allValues
    
    var timer: Timer! // Timer to show random images
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startTimer() // Start the timer to show random images
        for button in buttons {
            button.layer.cornerRadius = 8 // Round the corners of the buttons
        }
    }
    
    // Function called when the view is about to disappear
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        timer.invalidate() // Invalidate the timer when the view is about to disappear
    }
    
    // Function to start the timer for displaying random images
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 0.1,
                                     target: self,
                                     selector: #selector(showRandomImage), // Call showRandomImage() method
                                     userInfo: nil,
                                     repeats: true) // Repeats every 0.1 seconds
    }
    
    // Function to display a random image on the cardImageView
    @objc func showRandomImage() {
        // Get a random image from the cards array and set it as the image of the cardImageView
        cardImageView.image = cards.randomElement() ?? UIImage(named: "AS") // If cards array is empty, set the default image "AS"
    }
    
    // Action when the "Stop" button is tapped
    @IBAction func stopButtonTapped(_ sender: UIButton) {
        timer.invalidate() // Stop the timer when the "Stop" button is tapped
    }
    
    // Action when the "Restart" button is tapped
    @IBAction func restartButtonTapped(_ sender: UIButton) {
        timer.invalidate() // Stop the timer
        startTimer() // Start the timer again to show random images
    }
}

