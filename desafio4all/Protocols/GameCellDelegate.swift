//
//  GameCellDelegate.swift
//  desafio4all
//
//  Created by Lidiane Gomes Barbosa on 15/12/20.
//

import Foundation
import UIKit
protocol GameCellDelegate: class {
    func animateCard(_ animate: Bool)
    func success()
}

extension GameCollectionViewCell: GameCellDelegate {
    func success() {
        wrapperView.isHidden = false
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3, execute: { self.wrapperView.backgroundColor = .greenSuccess
        })
    }
    
    func animateCard(_ animate: Bool) {
        if animate {
            flip()
        } else {
            flipBack()
        }
    }
}
