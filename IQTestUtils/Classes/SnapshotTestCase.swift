//  DeviceSnapshots.swift
//  spendiqTests
//
//  Created by Nick Romano on 4/16/18.
//  Copyright © 2018 Mobile Data Labs. All rights reserved.
//
import UIKit
//import IQCore
import FBSnapshotTestCase

open class SnapshotTestCase: FBSnapshotTestCase {
    open override func setUp() {
        super.setUp()
        //        self.recordMode = true
        UIView.setAnimationsEnabled(false)
    }

    open override func tearDown() {
        UIView.setAnimationsEnabled(true)
        super.tearDown()
    }

    //    public func takeControllerSnapshot(_ controller: UIViewController, height: CGFloat? = nil) {
    //        let devices: [Device] = [.phone4inch, .phone5_5inch]
    //        for device in devices {
    //            let (parent, _) = traitControllers(device: device, orientation: .portrait, child: controller)
    //            if let height = height {
    //                parent.view.frame.size.height = height
    //            }
    //
    //            FBSnapshotVerifyView(parent.view, identifier: "device_\(device)")
    //        }
    //    }

    public func takeViewSnapshot(_ view: UIView, inController: Bool = false) {
        if inController {
            // Place the view in a controller to snapshot
            view.translatesAutoresizingMaskIntoConstraints = false
            let controller = UIViewController(nibName: nil, bundle: nil)
            controller.view.addSubview(view)
            //            controller.view.fill(with: view)
            //
            //            takeControllerSnapshot(controller)
        } else {
            //            FBSnapshotVerifyView(view)
        }
    }
}
