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
    
    let whiteNotes = ["laReallyLow", "siReallyLow","reHigh", "miHigh" ] 
    let blackNotes = ["do", "re", "gap", "fa", "sol", "la", "gap"]
    
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
        VStack{
            Spacer ()
            ZStack(alignment: .top){
                HStack (spacing: -10) {
                    ForEach(whiteNotes, id: \.self) {note in
                        Button(action: {
                            playSound (noteName: note)
                        }) {
                            Image("whiteKey")
                                .resizable()
                                .frame(width:66, height:380)
                        }
                    }
                }
                .ignoresSafeArea()
                HStack(spacing: UIScreen.main.bounds.width/64){
                    ForEach(blackNotes, id: \.self) {note in
                        //                        if  blackNotes = "gap" {
                        //                            Spacer()
                        //                        } else{
                        Button(action: {
                            playSound(noteName: note)
                        }) {
                            Image("blackKey")
                                .resizable()
                                .frame(width:38, height:203)
                            //                            }
                        }
                    }
                }
            }
            
        }
    }
}

//                .simultaneousGesture(LongPressGesture(minimumDuration: 0.1).onEnded({ _ in 
//                    self.isClicked = true
//                }))
