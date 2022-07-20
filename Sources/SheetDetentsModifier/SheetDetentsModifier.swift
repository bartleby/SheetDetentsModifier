#if os(iOS)

import SwiftUI

@available(iOS 15, *)
public struct SheetModifier: ViewModifier {
    public let detents: [Detents]
    public func body(content: Content) -> some View {
        SheetView(detents: detents) {
            content
        }
    }
}

public extension View {
    public func presentationDetents(_ detents: [Detents]) -> some View {
        modifier(SheetModifier(detents: detents))
    }
}

#endif
