
import SwiftUI
import AVFoundation

struct whiteKey: View {  
    var body: some View {        
        Image("whiteKey")          
            .resizable()            
            .frame(width:63, height:362)   
    }
}

struct blackKey: View {    
    var body: some View {        
        Image("blackKey")            
            .resizable()            
            .frame(width:38, height:203)    
    }
}

struct ExerciseView: View {
    
    let whiteNoteG0 = ["laReallyLow", "siReallyLow"] 
    
    let whiteNoteG1 = ["doLow", "reLow", "miLow"] 
    let blackNoteG1 = ["do", "re"]
    
    let whiteNoteG2 = ["faLow", "solLow", "laLow", "siLow"] 
    let blackNoteG2 = ["fa", "sol", "la"]
    
    let whiteNoteG3 = ["do", "re", "mi"] 
    let blackNoteG3 = ["do", "re"]
    
    let whiteNoteG4 = ["fa", "sol", "la", "si"] 
    let blackNoteG4 = ["fa", "sol", "la"]
    
    let whiteNoteG5 = ["reHigh", "miHigh"] 
    
    let C7MAnswer: [String] = ["do", "mi", "sol", "si"]
    
    @State var userInput: [String] = []
    
    @State var keyIsClicked = false
    
    @State var checkIsClicked: Bool = false
    
    @State var wrongAnswer: Bool = false
    
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
        NavigationStack{
            VStack{
                Button(action:{
                    if userInput.sorted() == C7MAnswer.sorted(){
                        checkIsClicked.toggle()
                    } else{
                        userInput = []
                        wrongAnswer.toggle()
                    }
                }) {
                    ZStack{
                        Image ("Button")
                            .resizable()           
                            .frame(width:90, height:40) 
                            .padding(.bottom, 24)
                        Text("Check")
                            .frame(width: 90, height: 40)
                            .padding(.bottom, 24)
                            .foregroundStyle(.black)
                    }
                    .padding(.leading, 800)
                }
                .navigationDestination(isPresented: $checkIsClicked){
                    RightAnswerView()
                }
                .navigationDestination(isPresented: $wrongAnswer){
                    WrongAnswerView()
                }
                
                Spacer()
                ZStack(alignment: .top){
                    Image ("textBalloon3")
                        .resizable()
                        .frame(width:195, height:147, alignment: .trailing)
                        .padding(.leading, 100)
                    Text("C7M")
                        .frame(width: 132, height: 100)
                        .padding(.leading, 96)
                        .foregroundStyle(.black)
                        .font(.largeTitle)
                }
                
                Image ("bird")
                    .resizable()
                    .frame(width:113, height:172, alignment: .trailing)
                    .padding(.trailing, 100)
                
                
                Spacer()
                HStack (spacing: -10) {
                    Spacer()
                    ZStack(alignment: .top){
                        HStack (spacing: -10) {
                            ForEach(whiteNoteG0, id: \.self) {note in
                                Button(action: {
                                    playSounds (noteName: note)
                                }) {
                                    whiteKey()
                                }
                                .simultaneousGesture(
                                    LongPressGesture(minimumDuration: 0.1) .onEnded({
                                        _ in 
                                        self.keyIsClicked.toggle() 
                                        self.userInput.append(note)
                                    }))
                                
                            }
                        }
                        .ignoresSafeArea()   
                    }
                    
                    ZStack(alignment: .top){
                        HStack (spacing: -10) {
                            ForEach(whiteNoteG1, id: \.self) {note in
                                Button(action: {
                                    playSounds (noteName: note)
                                }) {
                                    whiteKey()
                                }
                                .simultaneousGesture(
                                    LongPressGesture(minimumDuration: 0.1) .onEnded({
                                        _ in 
                                        self.keyIsClicked.toggle() 
                                        self.userInput.append(note)
                                    }))
                            }
                            
                        }
                        .ignoresSafeArea()
                        HStack(spacing: UIScreen.main.bounds.width/64){
                            ForEach(blackNoteG1, id: \.self) {note in
                                Button(action: {
                                    playSounds(noteName: note)
                                }) {
                                    blackKey()
                                }
                                .simultaneousGesture(
                                    LongPressGesture(minimumDuration: 0.1) .onEnded({
                                        _ in 
                                        self.keyIsClicked.toggle() 
                                        self.userInput.append(note)
                                    }))
                            }
                        }
                    }
                    
                    ZStack(alignment: .top){
                        HStack (spacing: -10) {
                            ForEach(whiteNoteG2, id: \.self) {note in
                                Button(action: {
                                    playSounds (noteName: note)
                                }) {
                                    whiteKey()
                                }
                                .simultaneousGesture(
                                    LongPressGesture(minimumDuration: 0.1) .onEnded({
                                        _ in 
                                        self.keyIsClicked.toggle() 
                                        self.userInput.append(note)
                                    }))
                            }
                        }
                        .ignoresSafeArea()
                        HStack(spacing: UIScreen.main.bounds.width/64){
                            ForEach(blackNoteG2, id: \.self) {note in
                                Button(action: {
                                    playSounds(noteName: note)
                                }) {
                                    blackKey()
                                }
                                .simultaneousGesture(
                                    LongPressGesture(minimumDuration: 0.1) .onEnded({
                                        _ in 
                                        self.keyIsClicked.toggle() 
                                        self.userInput.append(note)
                                    }))
                            }
                        }
                    }
                    
                    ZStack(alignment: .top){
                        HStack (spacing: -10) {
                            ForEach(whiteNoteG3, id: \.self) {note in
                                Button(action: {
                                    playSounds (noteName: note)
                                }) {
                                    whiteKey()
                                }
                                .simultaneousGesture(
                                    LongPressGesture(minimumDuration: 0.1) .onEnded({
                                        _ in 
                                        self.keyIsClicked.toggle() 
                                        self.userInput.append(note)
                                    }))
                            }
                        }
                        .ignoresSafeArea()
                        HStack(spacing: UIScreen.main.bounds.width/64){
                            ForEach(blackNoteG3, id: \.self) {note in
                                Button(action: {
                                    playSounds(noteName: note)
                                }) {
                                    blackKey()
                                }
                                .simultaneousGesture(
                                    LongPressGesture(minimumDuration: 0.1) .onEnded({
                                        _ in 
                                        self.keyIsClicked.toggle() 
                                        self.userInput.append(note)
                                        print("user input")
                                    }))
                            }
                        }
                    }
                    
                    ZStack(alignment: .top){
                        HStack (spacing: -10) {
                            ForEach(whiteNoteG4, id: \.self) {note in
                                Button(action: {
                                    playSounds (noteName: note)
                                }) {
                                    whiteKey()
                                }
                                .simultaneousGesture(
                                    LongPressGesture(minimumDuration: 0.1) .onEnded({
                                        _ in 
                                        self.keyIsClicked.toggle() 
                                        self.userInput.append(note)
                                    }))
                            }
                        }
                        .ignoresSafeArea()
                        HStack(spacing: UIScreen.main.bounds.width/64){
                            ForEach(blackNoteG4, id: \.self) {note in
                                Button(action: {
                                    playSounds(noteName: note)
                                }) {
                                    blackKey()
                                }
                                .simultaneousGesture(
                                    LongPressGesture(minimumDuration: 0.1) .onEnded({
                                        _ in 
                                        self.keyIsClicked.toggle() 
                                        self.userInput.append(note)
                                    }))
                            }
                        }
                    }
                    
                    ZStack(alignment: .top){
                        HStack (spacing: -10) {
                            ForEach(whiteNoteG5, id: \.self) {note in
                                Button(action: {
                                    playSounds (noteName: note)
                                }) {
                                    whiteKey()
                                }
                                .simultaneousGesture(
                                    LongPressGesture(minimumDuration: 0.1) .onEnded({
                                        _ in 
                                        self.keyIsClicked.toggle() 
                                        self.userInput.append(note)
                                    }))
                            }
                        }
                    }
                    Spacer()
                }
                
            }
            .background(Color.gray)
        }
        
    }
    
}


