import SwiftUI
import AVFoundation

struct PianoKeysG2: View {
    
    let whiteNote = ["faLow", "solLow", "laLow", "siLow"] 
    let blackNote = ["fa", "sol", "la"]
    
    @State var player: AVAudioPlayer?
    
    func playSounds(noteName: String) {
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
                HStack (spacing: -7) {
                    ForEach(whiteNote, id: \.self) {note in
                        Button(action: {
                            playSounds (noteName: note)
                        }) {
                            Image("whiteKey")
                                .resizable()
                                .frame(width:50, height:250)
                        }
                    }
                }
                .ignoresSafeArea()
                HStack(spacing: UIScreen.main.bounds.width/64){
                    ForEach(blackNote, id: \.self) {note in
                        Button(action: {
                            playSounds(noteName: note)
                        }) {
                            Image("blackKey")
                                .resizable()
                                .frame(width:30, height:150)
                        }
                    }
                }
            }
            
        }
    }
}
