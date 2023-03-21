//
//  Task.swift
//  PhotoHunt
//
//  Created by Daize Njounkeng on 3/20/23.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Selfie with a Stranger 👫",
                 description: "Go out and try to talk with someone new. Submit a selfie of you and your new friend"),
            Task(title: "Selfie with a statue 🗽",
                 description: "Visit a monumental place,  post a selfie with that monument in the background"),
            Task(title: "Selfie with your pet 🐕‍🦺",
                 description: "Have a pet? Or know someone who does? Post a selfie with that pet making funny faces."),
            Task(title: "Selfie with a celebrity ✨",
                 description: "Ever met a celebrity? Here is your time to shine.")
        ]
    }
}
