#if os(iOS)

import UIKit

public enum Detents {
    case large
    case medium
    
    public var uiViewDetents: UISheetPresentationController.Detent {
        switch self {
        case .large:
            return .large()
        case .medium:
            return .medium()
        }
    }
}

#endif
