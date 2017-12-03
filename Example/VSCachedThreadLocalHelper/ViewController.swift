//
//  ViewController.swift
//  VSCachedThreadLocalHelper
//
//  Created by pjvea on 12/03/2017.
//  Copyright (c) 2017 pjvea. All rights reserved.
//

import UIKit
import VSCachedThreadLocalHelper

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dateFormatter = self.getHoursMinutesPeriodDateFormatter()
        print(dateFormatter.string(from: Date()))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    private func getHoursMinutesPeriodDateFormatter() -> DateFormatter {
        return VSCachedThreadLocalHelper.cachedThreadLocalObjectWithKey(key: "HoursMinutesPeriodDateFormatter") {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "h:mm a"
            return dateFormatter
        }
    }
}

