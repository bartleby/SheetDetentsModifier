#if os(iOS)

import SwiftUI

public final class SheetHostingController<Content: View>: UIHostingController<Content> {
    var detents: [UISheetPresentationController.Detent] = []
    
    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let controller = sheetPresentationController {
            controller.detents = detents
        }
    }
}

public extension SheetHostingController {
    public convenience init(rootView: Content, detents: [UISheetPresentationController.Detent]) {
        self.init(rootView: rootView)
        self.detents = detents
    }
}

#endif
