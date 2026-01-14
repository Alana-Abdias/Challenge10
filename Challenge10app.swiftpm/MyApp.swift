import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
struct pianoKey: View {
    var body: some View {
        Image("whiteKey")
            .resizable()
            .frame(width: 50, height: 250, alignment: .bottom)
    }
}

struct pianoKeyBlack: View {
    var body: some View {
        Image("blackKey")
            .resizable()
            .frame(width: 30, height: 150, alignment: .bottom)
    }
}
