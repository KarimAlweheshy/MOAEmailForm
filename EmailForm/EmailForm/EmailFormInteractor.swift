//
//  EmailDetailsInteractor.swift
//  Email
//
//  Created by Karim Alweheshy on 2/11/19.
//  Copyright © 2019 Karim Alweheshy. All rights reserved.
//

import Foundation

protocol EmailFormInteractorType {
}

final class EmailFormInteractor: EmailFormInteractorType {
    fileprivate let dataProvider: DataProvider
    
    init(dataProvider: DataProvider) {
        self.dataProvider = dataProvider
    }
}
