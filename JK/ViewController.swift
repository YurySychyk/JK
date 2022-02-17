//
//  ViewController.swift
//  JK
//
//  Created by Yury Sychyk on 10.02.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func getJoke(_ sender: Any) {
        makeRequest()
        jokeText.text = dataText
        categoryLabel.text = categoryText
        
        
    }
    
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var jokeText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        jokeText.text = "Press get joke"
    }
}
var dataText: String = " "
var categoryText: String = " "
func makeRequest(){
    let request = URLRequest(url: URL(string: "https://v2.jokeapi.dev/joke/Any")!)
    let task = URLSession.shared.dataTask(with: request) { data, respons, error in
        if let data = data, let joke = try? JSONDecoder().decode(Joke.self, from: data) {
            dataText = joke.setup
            categoryText = joke.category
        }
    }
    task.resume()
}
