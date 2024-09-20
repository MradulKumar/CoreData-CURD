//
//  ViewController.swift
//  CoreData-CURD
//
//  Created by Mradul Kumar  on 11/06/22.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.fetchFromCoreData()
    }

    
}

extension ViewController {
    
    func fetchFromCoreData() {
        if let delegate = UIApplication.shared.delegate as? AppDelegate {
            let rqst = NSFetchRequest<NSFetchRequestResult>(entityName: "Employee")
            do {
                try delegate.persistentContainer.viewContext.fetch(rqst)
            } catch {
                let nserror = error as NSError
                fatalError("4. Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
    
    
}
