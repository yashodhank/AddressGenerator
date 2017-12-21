//
//  ViewController.swift
//  AddressGenerator
//
//  Created by Khoa Pham on 14.12.2017.
//  Copyright © 2017 Khoa Pham. All rights reserved.
//

import Cocoa
import Anchors

final class MainController: BaseController {
  private let coinsController = CoinsController()
  private let accountController = AccountController()

  override func viewDidLoad() {
    super.viewDidLoad()

    setup()
  }

  func setup() {
    addChildViewController(coinsController)
    containerView.addSubview(coinsController.view)

    addChildViewController(accountController)
    containerView.addSubview(accountController.view)

    activate(
      coinsController.view.anchor.left.top.constant(10),
      coinsController.view.anchor.bottom.constant(-10),

      coinsController.view.anchor.right.equal
        .to(accountController.view.anchor.left).constant(10),

      accountController.view.anchor.top.constant(10),
      accountController.view.anchor.right.bottom.constant(-10)
    )
  }
}

