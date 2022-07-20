#if os(iOS)

import SwiftUI

public struct SheetView<Content: View>: UIViewControllerRepresentable {
    private let content: Content
    private let detents: [Detents]
    
    public init(detents: [Detents], @ViewBuilder content: () -> Content) {
        self.content = content()
        self.detents = detents
    }
    
    public func makeUIViewController(context: Context) -> SheetHostingController<Content> {
        SheetHostingController(rootView: content, detents: detents.map { $0.uiViewDetents })
    }
    
    public func updateUIViewController(_: SheetHostingController<Content>, context: Context) {}
}

#endif
