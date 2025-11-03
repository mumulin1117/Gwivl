//
//  VineyardProgressDisplay.swift
//  Spatasterrkling
//
//  Created by  on 2025/10/31.
//

import UIKit
 class VineyardProgressDisplay {
    private let fermentationView = UIView()
    private let barrelIndicator = UIActivityIndicatorView(style: .large)
    private let vintageLabel = UILabel()
    
    func commenceFermentation(in hostView: UIView) {
        prepareFermentationVessel(hostView)
        initiateBarrelAging()
    }
    
    func concludeFermentation() {
        barrelIndicator.stopAnimating()
        fermentationView.removeFromSuperview()
    }
    
    func updateVintageNotes(_ notes: String) {
        vintageLabel.text = notes
    }
    
    func presentHarvestSuccess(in hostView: UIView, message: String,ifIssucceff:Bool = true) {
        let successView = prepareSuccessDisplay(message,ifIssucceff:ifIssucceff)
        hostView.addSubview(successView)
        
        UIView.animate(withDuration: 0.3) {
            successView.alpha = 1
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            UIView.animate(withDuration: 0.3) {
                successView.alpha = 0
            } completion: { _ in
                successView.removeFromSuperview()
            }
        }
    }
    
    private func prepareFermentationVessel(_ hostView: UIView) {
        fermentationView.backgroundColor = UIColor(white: 0, alpha: 0.7)
        fermentationView.layer.cornerRadius = 12
        fermentationView.alpha = 0
        
        barrelIndicator.color = .white
        barrelIndicator.startAnimating()
        
        vintageLabel.textColor = .white
        vintageLabel.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        vintageLabel.textAlignment = .center
        
        hostView.addSubview(fermentationView)
        fermentationView.addSubview(barrelIndicator)
        fermentationView.addSubview(vintageLabel)
        
        positionFermentationElements(hostView)
        
        UIView.animate(withDuration: 0.3) {
            self.fermentationView.alpha = 1
        }
    }
    
    private func positionFermentationElements(_ hostView: UIView) {
        fermentationView.translatesAutoresizingMaskIntoConstraints = false
        barrelIndicator.translatesAutoresizingMaskIntoConstraints = false
        vintageLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            fermentationView.centerXAnchor.constraint(equalTo: hostView.centerXAnchor),
            fermentationView.centerYAnchor.constraint(equalTo: hostView.centerYAnchor),
            fermentationView.widthAnchor.constraint(equalToConstant: 140),
            fermentationView.heightAnchor.constraint(equalToConstant: 120),
            
            barrelIndicator.centerXAnchor.constraint(equalTo: fermentationView.centerXAnchor),
            barrelIndicator.topAnchor.constraint(equalTo: fermentationView.topAnchor, constant: 24),
            
            vintageLabel.centerXAnchor.constraint(equalTo: fermentationView.centerXAnchor),
            vintageLabel.topAnchor.constraint(equalTo: barrelIndicator.bottomAnchor, constant: 16),
            vintageLabel.leadingAnchor.constraint(equalTo: fermentationView.leadingAnchor, constant: 12),
            vintageLabel.trailingAnchor.constraint(equalTo: fermentationView.trailingAnchor, constant: -12)
        ])
    }
    
    private func initiateBarrelAging() {
        let rotation = CABasicAnimation(keyPath: "transform.rotation")
        rotation.toValue = NSNumber(value: Double.pi * 2)
        rotation.duration = 1
        rotation.repeatCount = .infinity
        barrelIndicator.layer.add(rotation, forKey: "barrelRotation")
    }
    
     private func prepareSuccessDisplay(_ message: String,ifIssucceff:Bool = true) -> UIView {
        let successBarrel = UIView()
        successBarrel.backgroundColor = UIColor(red: 0.2, green: 0.6, blue: 0.3, alpha: 0.9)
        successBarrel.layer.cornerRadius = 8
        successBarrel.alpha = 0
        
        let checkmark = UILabel()
         if ifIssucceff {
             checkmark.text = "✓"
         }else{
             checkmark.text = "!"
         }
        
        checkmark.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        checkmark.textColor = .white
        checkmark.textAlignment = .center
        
        let successLabel = UILabel()
        successLabel.text = message
        successLabel.font = UIFont.systemFont(ofSize: 14, weight: .medium)
         if ifIssucceff {
             successLabel.textColor = .white
         }else{
             successLabel.textColor = .red
         }
        
        successLabel.textAlignment = .center
        successLabel.numberOfLines = 0
        
        successBarrel.addSubview(checkmark)
        successBarrel.addSubview(successLabel)
        
        positionSuccessElements(checkmark: checkmark, label: successLabel, container: successBarrel)
        
        return successBarrel
    }
    
    private func positionSuccessElements(checkmark: UILabel, label: UILabel, container: UIView) {
        checkmark.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            container.widthAnchor.constraint(equalToConstant: 200),
            
            checkmark.centerXAnchor.constraint(equalTo: container.centerXAnchor),
            checkmark.topAnchor.constraint(equalTo: container.topAnchor, constant: 16),
            
            label.centerXAnchor.constraint(equalTo: container.centerXAnchor),
            label.topAnchor.constraint(equalTo: checkmark.bottomAnchor, constant: 8),
            label.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: 12),
            label.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -12),
            label.bottomAnchor.constraint(equalTo: container.bottomAnchor, constant: -16)
        ])
    }
}


