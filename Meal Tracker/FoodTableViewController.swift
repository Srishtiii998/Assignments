//
//  FoodTableViewController.swift
//  Meal Tracker
//
//  Created by Srishti on 18/08/25.
//

import UIKit

class FoodTableViewController: UITableViewController {
    
    var meal: [Meal]{
        let breakfast = Meal(name: "Breakfast", food: [food1,food2,food3])
        let lunch = Meal(name: "Lunch", food: [food4,food5,food6])
        let dinner = Meal(name: "Dinner", food: [food1,food7,food8,food9])
        return [breakfast,lunch,dinner]
    }
    
    var food1 = Food(name: "Peanut Butter", description: "Peanut Butter is delicious")
    var food2 = Food(name: "Paneer", description: "Paneer is delicious")
    var food3 = Food(name: "Dosa", description: "Dosa is delicious")
    var food4 = Food(name: "Muesli", description: "Muesli is delicious")
    var food5 = Food(name: "Pizza", description: "Pizza is delicious")
    var food6 = Food(name: "Oats", description: "Oats are delicious")
    var food7 = Food(name: "Pasta", description: "Pasta is delicious")
    var food8 = Food(name: "Pav Bhaji", description: "Pav Bhaji is delicious")
    var food9 = Food(name: "Burger", description: "Burger is delicious")

    override func viewDidLoad() {
        super.viewDidLoad()
        //self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return meal.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return meal[section].food.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Food", for: indexPath)

        
        var content = cell.defaultContentConfiguration()
        content.text = meal[indexPath.section].food[indexPath.row].name
        content.secondaryText = meal[indexPath.section].food[indexPath.row].description
        cell.contentConfiguration = content

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return meal[section].name
    }


}
