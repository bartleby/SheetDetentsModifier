# SheetDetentsModifier

This is a small View modifier that adds detents for .sheet representations that appeared in iOS 16

> It works starting with iOS 15 ⚠️

Install
-------

### SwiftPM

```
https://github.com/bartleby/SheetDetentsModifier.git
```

Examples
--------

```swift
struct ContentView: View {
    @State var showSheet: Bool = false
    var body: some View {
        VStack {
            Button("Show") {
                showSheet.toggle()
            }
        }
        .sheet(isPresented: $showSheet) {
            VStack {
                Button("Hide") {
                    showSheet.toggle()
                }
            }
            .presentationDetents([.medium, .large])
            .ignoresSafeArea() // To remove the white strip on the iPhone 10+
        }
    }
}
```

--------

Make a star ❤️‍🔥
