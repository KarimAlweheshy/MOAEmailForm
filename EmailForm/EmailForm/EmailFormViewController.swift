//
//  EmailFormViewController.swift
//  Email
//
//  Created by Karim Alweheshy on 2/11/19.
//  Copyright © 2019 Karim Alweheshy. All rights reserved.
//

import UIKit

protocol EmailFormView {
}

final class EmailFormViewController: UIViewController {
    var presenter: EmailFormPresenterType!
}

// MARK: - Actions
extension EmailFormViewController {
    @IBAction fileprivate func didTapSave() {
        presenter.didTapSave()
    }
    
    @IBAction fileprivate func didTapCancel() {
        presenter.didTapCancel()
    }
}

// MARK: - EmailFormView
extension EmailFormViewController: EmailFormView {
    
}
