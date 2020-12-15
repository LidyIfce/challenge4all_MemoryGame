//
//  MemoryGameDelegate.swift
//  desafio4all
//
//  Created by Lidiane Gomes Barbosa on 15/12/20.
//

import Foundation
import UIKit
protocol MemoryGameDelegate: class {
    func didEndGame()
}

extension GameViewController: MemoryGameDelegate {
    func didEndGame() {
        if let chronometer = chronometer {
            chronometer.end()
            self.chronometer = nil
        }
        presentResult()
    }
}