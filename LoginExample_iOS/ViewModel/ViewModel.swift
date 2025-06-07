//
//  ViewModel.swift
//  LoginExample_iOS
//
//  Created by Jonathan Soto Mares on 06/06/25.
//

import Foundation
import SwiftUI

class ViewModel : ObservableObject {
    @Published var name = ""
    @Published var email = ""
    @Published var password = ""
    @Published var dateRegister = Date()
}
