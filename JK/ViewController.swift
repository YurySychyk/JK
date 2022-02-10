//
//  ViewController.swift
//  JK
//
//  Created by Yury Sychyk on 10.02.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var text: UILabel!
    
    @IBAction func request(_ sender: Any) {
        makeRequest()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    private func makeRequest() {
        var request = URLRequest(url:URL(string: "https://v2.jokeapi.dev/joke/Any/")!)
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            print(String(decoding: data!, as: UTF8.self))
            print(error)
            //text.text = String(decoding: data!, as: UTF8.self)
            }
        task.resume()
        
        
    }
}

