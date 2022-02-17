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
    }
    
    @IBOutlet weak var jokeText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        jokeText.text = "Press get joke"
    }
}
var dataText: String = " "
func makeRequest(){
    var request = URLRequest(url: URL(string: "https://v2.jokeapi.dev/joke/Any")!)
    let task = URLSession.shared.dataTask(with: request) { data, respons, error in
        dataText = String(decoding: data!, as: UTF8.self)
        print(error)
        print(dataText)
    }
    task.resume()
}
