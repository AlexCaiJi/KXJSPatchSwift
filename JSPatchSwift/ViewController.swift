//
//  ViewController.swift
//  JSPatchSwift
//
//  Created by kongxin on 2019/3/26.
//  Copyright © 2019 kongxin. All rights reserved.
//

import UIKit
import Neon
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let btn = UIButton()
        btn.backgroundColor = .red
        btn.setTitle("进入崩溃页面", for: .normal)
        btn.addTarget(self, action: #selector(enterCrashPage), for: .touchUpInside)
        view.addSubview(btn)
        btn.anchorInCenter(width: 150, height: 40)
        
    }


    @objc dynamic func enterCrashPage() {
        navigationController?.pushViewController(KXCrashTableVC(), animated: true)
     }
}

