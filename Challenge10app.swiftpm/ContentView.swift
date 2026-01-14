import SwiftUI
import AVFoundation


struct ContentView: View {
    
    let whiteNoteName = ["do", "re", "mi", "fa", "sol", "la", "si", "doHigh"] 
    let blackNoteName = ["doSharp", "reSharp", "miSharp", "faSharp", "solSharp", "laSharp", "siSharp"]
    
    @State var player: AVAudioPlayer?
    
    
    func playSound(noteName: String) {
        if let url = Bundle.main.url(forResource: noteName, withExtension: "mp3") {
            do {
                player = try AVAudioPlayer(contentsOf: url)
                player?.play()
            } catch {
                print("Error: \(error.localizedDescription)")
            }
        } else {
            print("Sound file not found")
        }
    }
    
    var body: some View {
        ZStack{
            HStack(spacing: -7) {
                ForEach(whiteNoteName, id: \.self) {note in
                    Button(action: {
                        playSound(noteName: note)
                    }) {
                        Image("whiteKey")
                            .resizable()
                            .frame(width:50, height:250)
                    }
                }
            }
            //            HStack(spacing: -7) {
            //                ForEach(blackNoteName, id: \.self) {sharpNote in
            //                    Button(action: {
            //                        playSound(blackNoteName: sharpNote)
            //                    }) {
            //                        Image("blackKey")
            //                            .resizable()
            //                            .frame(width:50, height:250)
            //                    }
            //                }
            //            }
            
        }
    }
}
