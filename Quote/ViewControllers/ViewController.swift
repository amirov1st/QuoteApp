//
//  ViewController.swift
//  Quote
//
//  Created by Amirov Foma on 03.05.2024.
//

import UIKit

final class ViewController: UIViewController {
    
//    var quote =
    
    @IBOutlet var quoteImage: UIImageView!
    @IBOutlet var bodyLabel: UILabel!
    @IBOutlet var authorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        quoteImage.image = UIImage(named: "quotes")
//        fetchQuote()
    }
    
//    private func fetchQuote() {
//        NetworkManager.shared.fetchQuotes(url: List.url.rawValue) { [weak self] quote in
//            self.quote = quote
//        }
//    }

}

