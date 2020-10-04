//
//  UIWindow+ShakeGesture.swift
//  PixelPerfect (iOS)
//
//  Created by Łukasz Rutkowski on 25/08/2020.
//

#if !os(macOS)
import UIKit

extension UIWindow {
    open override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        super.motionEnded(motion, with: event)
        NotificationCenter.default.post(name: .deviceDidShakeNotification, object: event)
    }
}
#endif
