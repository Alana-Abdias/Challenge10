import SwiftUI
import AVFoundation
//
//struct pressedNote {
//    var nameOfNote: String
//    var numberOfNote: Int
//}
//var answerChord: [pressedNote] = 
//    [
//        pressedNote(
//            nameOfNote = noteName,
//            numberOFNote: 
//        )
//    ]


struct ContentView: View {
    @State var isClicked = false 
    
    let whiteNoteName = ["laReallyLow", "siReallyLow", "doLow", "reLow", "miLow", "faLow", "solLow", "laLow", "siLow", "do", "re", "mi", "fa", "sol", "la", "si", "doHigh", "reHigh", "miHigh" ] 
    //    let blackNoteName = ["doSharp", "reSharp", "miSharp", "faSharp", "solSharp", "laSharp", "siSharp"]
    
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
            .simultaneousGesture(LongPressGesture(minimumDuration: 0.1).onEnded({ _ in 
                self.isClicked = true
            }))
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
