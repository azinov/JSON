//
//  ViewController.swift (5.0)
//  JSON
//  
//  Created by Alexey Zinoviev on 16.06.2023
//  http://publication.pravo.gov.ru/help
	

import UIKit

enum Link {
    case documentsURL
    case categoriesURL
   
    var url: URL {
        switch self {
        case .documentsURL:
            return URL(string: "http://publication.pravo.gov.ru/api/Documents")!
        case .categoriesURL:
            return URL(string: "http://publication.pravo.gov.ru/api/Categories")!
        }
    }
}

enum Alert {
    case success
    case failed
    
    var title: String {
        switch self {
        case .success:
            return "Success"
        case .failed:
            return "Failed"
        }
    }
    
    var message: String {
        switch self {
        case .success:
            return "You can see the results in the Debug area"
        case .failed:
            return "You can see error in the Debug area"
        }
    }
}


class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        print(Link.documentsURL.url)
        fetchCourse()
    }
    
    // MARK: - Private Methods (SwiftBook)
    func showAlert(withStatus status: Alert) {
        let alert = UIAlertController(title: status.title, message: status.message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        DispatchQueue.main.async { [unowned self] in
            present(alert, animated: true)
        }
    }
}




