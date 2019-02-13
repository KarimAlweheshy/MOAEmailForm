//
//  EmailDetailsInteractor.swift
//  Email
//
//  Created by Karim Alweheshy on 2/11/19.
//  Copyright © 2019 Karim Alweheshy. All rights reserved.
//

import Foundation
import Networking

protocol EmailFormInteractorType {
}

final class EmailFormInteractor: EmailFormInteractorType {
    fileprivate let networking: NetworkingType
    
    init(networking: NetworkingType) {
        self.networking = networking
    }
}
