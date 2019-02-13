//
//  EmailDetailsBuilder.swift
//  Email
//
//  Created by Karim Alweheshy on 2/11/19.
//  Copyright © 2019 Karim Alweheshy. All rights reserved.
//

import UIKit
import Networking

final class EmailFormBuilder: NSObject {
    static func make(networking: NetworkingType,
                     resultCallback: @escaping (Result<EmailResponse>) -> Void) -> EmailFormViewController {
        let storyboard = UIStoryboard(name: "EmailForm", bundle: Bundle(for: self))
        let viewController = storyboard.instantiateInitialViewController() as! EmailFormViewController
        let interactor = EmailFormInteractor(networking: networking)
        let router = EmailFormRouter()
        let presenter = EmailFormPresenter(router: router,
                                           interactor: interactor,
                                           view: viewController,
                                           resultCallback: resultCallback)
        viewController.presenter = presenter
        return viewController
    }
}
