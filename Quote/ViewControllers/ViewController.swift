//
//  ViewController.swift
//  Quote
//
//  Created by Amirov Foma on 03.05.2024.
//

import UIKit

final class ViewController: UIViewController {
    
    var quote = Quote()
    
    @IBOutlet var quoteImage: UIImageView!
    @IBOutlet var bodyLabel: UILabel!
    @IBOutlet var authorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        quoteImage.image = UIImage(named: "quotes")
//        fetchQuote()
        authorLabel.text = quote.author
        bodyLabel.text = quote.body
    }
    
    private func fetchQuote() {
        NetworkManager.shared.fetchQuotes(url: List.url.rawValue) { [weak self] quote in
            switch quote {
            case .success(let success):
                <#code#>
            case .failure(let failure):
                <#code#>
            }
        }
    }

}

