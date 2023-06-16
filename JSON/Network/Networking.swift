//
//  Networking.swift (5.0)
//  JSON
//  
//  Created by Alexey Zinoviev on 16.06.2023
//
	

import UIKit

extension MainViewController {
 
     func fetchCourse() {
        URLSession.shared.dataTask(with: Link.documentsURL.url) { [weak self] data, _, error in
            guard let data else {
                print(error?.localizedDescription ?? "No error description")
                return
            }
            do {
                let decoder = JSONDecoder()
                let document = try decoder.decode(Documents.self, from: data)
                print(document)
                self?.showAlert(withStatus: Alert.success)
            } catch {
                print(error.localizedDescription)
                self?.showAlert(withStatus: Alert.failed)
            }
        }.resume()
    }
    
}
