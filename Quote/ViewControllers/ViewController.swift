//
//  ViewController.swift
//  Quote
//
//  Created by Amirov Foma on 03.05.2024.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var quoteImage: UIImageView!
    @IBOutlet var bodyLabel: UILabel!
    @IBOutlet var authorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        quoteImage.image = UIImage(named: "quotes")
        fetchQuote()
    }
    
    @IBAction func anotherAction(_ sender: Any) {
        fetchQuote()
    }
    
    private func fetchQuote() {
        NetworkManager.shared.fetchQuotes(url: List.url.rawValue) { [weak self] quote in
            DispatchQueue.main.async {
                switch quote {
                case .success(let fetchQuote):
                    self?.bodyLabel.text = "“\(fetchQuote.body)”"
                    self?.authorLabel.text = "- \(fetchQuote.author)"
                case .failure(let error):
                    print(error)
                }
            }
        }
    }
}
