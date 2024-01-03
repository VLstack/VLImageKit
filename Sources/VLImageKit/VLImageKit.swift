import Foundation
import SwiftUI
#if canImport(UIKit)
import UIKit
#elseif canImport(AppKit)
import AppKit
#endif

extension Image
{
 /// Initializes a SwiftUI `Image` from data.
 init(_ data: Data,
      systemDefault: String = "photo")
 {
  #if canImport(UIKit)
  if let uiImage = UIImage(data: data)
  {
   self.init(uiImage: uiImage)
  }
  else
  {
   self.init(systemName: systemDefault)
  }
  #elseif canImport(AppKit)
  if let nsImage = NSImage(data: data)
  {
   self.init(nsImage: nsImage)
  }
  else
  {
   self.init(systemName: systemDefault)
  }
  #else
  self.init(systemName: systemDefault)
  #endif
 }
}
