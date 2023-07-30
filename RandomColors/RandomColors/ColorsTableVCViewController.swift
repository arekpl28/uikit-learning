//
//  ColorsTableVCViewController.swift
//  RandomColors
//
//  Created by Arkadiusz Plumbaum on 30/07/2023.
//

import UIKit

class ColorsTableVCViewController: UIViewController {
    
    // Array to store random colors
    var colors: [UIColor] = []
    
    // Enum for cell identifiers
    enum Cells {
        static let colorCell = "ColorCell"
    }
    
    // Enum for segue identifiers
    enum Segues {
        static let toDetail = "ToColorsDetailVC"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomColors() // Populate the colors array with random colors
    }
    
    // Function to generate random colors and add them to the colors array
    func addRandomColors() {
        for _ in 0..<50 {
            colors.append(.random()) // UIColor extension method to get a random color
        }
    }
    
    // Function called before a segue is performed, used to prepare data for the destination view controller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Segues.toDetail {
            // Get the destination view controller and pass the selected color as data
            let destVC = segue.destination as! ColorsDetailVC
            destVC.color = sender as? UIColor
        }
    }
}

extension ColorsTableVCViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count             // Return the number of colors to display in the table view
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.colorCell) else {
            return UITableViewCell()    // Return a default cell if there's an issue with cell dequeueing
        }
        let color = colors[indexPath.row] // Get the color for the current row
        cell.backgroundColor = color // Set the cell's background color to the selected color
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row] // Get the color of the selected row
        performSegue(withIdentifier: Segues.toDetail, sender: color) // Trigger the segue to the detail view controller with the selected color as data
    }
    
}
