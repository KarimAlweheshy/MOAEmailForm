//
//  EmailDetailsPresenter.swift
//  Email
//
//  Created by Karim Alweheshy on 2/11/19.
//  Copyright © 2019 Karim Alweheshy. All rights reserved.
//

import Foundation
import Networking

protocol EmailFormPresenterType {
    func didTapCancel()
    func didTapSave()
}

final class EmailFormPresenter {
    fileprivate let router: EmailFormRouterType
    fileprivate let interactor: EmailFormInteractorType
    fileprivate let view: EmailFormView
    fileprivate let resultCallback: (Result<EmailResponse>) -> Void
    
    init(router: EmailFormRouterType,
         interactor: EmailFormInteractorType,
         view: EmailFormView,
         resultCallback: @escaping (Result<EmailResponse>) -> Void) {
        self.router = router
        self.interactor = interactor
        self.view = view
        self.resultCallback = resultCallback
    }
}

extension EmailFormPresenter: EmailFormPresenterType {
    func didTapCancel() {
        resultCallback(.error(ResponseError.taskCancelled))
    }
    func didTapSave() {
        resultCallback(.success(EmailResponse()))
    }
}
