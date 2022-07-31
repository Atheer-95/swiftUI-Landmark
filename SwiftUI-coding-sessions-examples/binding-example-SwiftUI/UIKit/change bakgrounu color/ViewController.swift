//
//  ViewController.swift
//  change bakgrounu color
//
//  Created by Muhannad Alnemer on 27/07/2022.
//

import UIKit

class ViewController: UIViewController, ColorSelected {
    func didSelectedColor(color: UIColor) {
        view.backgroundColor = color
    }
    

    private lazy var button : UIButton = {
        let b = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        b.setTitle("Change color", for: .normal)
        b.setTitleColor(.blue, for: .normal)
        b.addTarget(self, action: #selector(changeColorViewController), for: .touchUpInside)
        return b
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(button)
        button.center = view.center

    }
    
    @objc private func changeColorViewController() {
        let v = ColorsViewController()
        v.colorDelegate = self
        navigationController?.pushViewController(v, animated: true)
    }
    


}

