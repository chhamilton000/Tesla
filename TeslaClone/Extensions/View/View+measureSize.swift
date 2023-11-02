//
//  View+measureSize.swift
//  TeslaApp
//
//  Created by Caley Hamilton on 11/2/23.
//

import SwiftUI

extension View {
  func measureSize(perform action: @escaping (CGSize) -> Void) -> some View {
    self.modifier(MeasureSizeModifier())
      .onPreferenceChange(SizePreferenceKey.self, perform: action)
  }
}
