//
//  GradientView.swift
//  eBook
//
//  Created by Tsnim Alqahtani on 18/04/1443 AH.
//

import UIKit

class GradientView: UIView {
    
    var controller: UIViewController!
    
    init(_ controller: UIViewController) {
        super.init(frame: .zero)
        self.controller = controller
        setupGradientView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setupGradientView() {
        controller.view.addSubview(self)
        translatesAutoresizingMaskIntoConstraints = false
        clipsToBounds = true
        layer.cornerRadius = 50
        layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
        let constraints = [
            topAnchor.constraint(equalTo: controller.view.topAnchor),
            leadingAnchor.constraint(equalTo: controller.view.leadingAnchor),
            trailingAnchor.constraint(equalTo: controller.view.trailingAnchor),
            bottomAnchor.constraint(equalTo: controller.view.centerYAnchor)
        ]
        NSLayoutConstraint.activate(constraints)
        let gradient = setupGradientLayer()
        gradient.frame = CGRect(x: 0, y: 0, width: controller.view.frame.width, height: controller.view.frame.height/2)
        layer.insertSublayer(gradient, at: 0)
    }
    
    
    private func setupGradientLayer() -> CAGradientLayer {
        let gradient = CAGradientLayer()
        let topColor = UIColor(red: 89/255, green: 128/255, blue: 148/255, alpha: 1).cgColor
        let bottomColor = UIColor(red: 89/255, green: 128/255, blue: 148/255, alpha: 0.5).cgColor
        gradient.colors = [topColor, bottomColor]
        gradient.locations = [0, 1]
        return gradient
    }
}

