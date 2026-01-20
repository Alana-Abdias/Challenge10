import SwiftUI

struct lessonFirstScreen: View {
    var body: some View{
        ZStack(alignment: .top){
            Image("textBalloon1")
            Text ("Hello there! Do you want to learn a fun fact? If you are struggling with knowing the difference between a major and a minor scale, there's a trick to learn how!")
                .frame(width: 497, height: 100)
                .padding(.top, 28)
                .foregroundStyle(.black)
                .lineSpacing(6)
                .tracking(1.0)

        }
    }
}
struct lessonSecondScreen: View {
    var body: some View{
        ZStack(alignment: .top){
//            Image("textBalloon2")
            Text ("Major Scales follow the pattern of tone, tone, semitone, tone, tone, tone, semitone.")
                .frame(width: 497, height: 100)
                .padding(.top, 24)
                .foregroundStyle(.black)
                .lineSpacing(6)


        }
        .frame(alignment: .topLeading)
        .foregroundStyle(.black)

    }
}

struct lessonThirdScreen: View {
        var body: some View {
            ZStack(alignment: .top){
//            Image("textBalloon2")
            Text ("Minor Scales follow the pattern of tone, semitone, tone, tone, semitone, tone, tone")
                    .frame(width: 497, height: 100)
                    .padding(.top, 24)
                    .foregroundStyle(.black)
                    .lineSpacing(6)



        }
            .frame(alignment: .topLeading)
    }
}


struct LessonView: View {
    var purple: Color = Color (red:0.2884, green:0.2553, blue: 0.4563)

    enum lessonState {
        case seesLesson, pressedNextOnce, pressedNextTwice
    }
    @State private var LessonState = lessonState.seesLesson
    
    @State var clickedOnSkip: Bool = false
    @State var clickedOnNext: Bool = false

    var body: some View {
        NavigationStack{
            ZStack{
                Rectangle()
                    .scaledToFill()
                VStack{
                    switch LessonState {
                    case .seesLesson:
                        lessonFirstScreen()
                    case .pressedNextOnce:
                        lessonSecondScreen()
                    case .pressedNextTwice:
                        lessonThirdScreen()
                    }    
                    HStack{
                        Spacer()
                        
                        Image ("bird")
                            .resizable()
                            .frame(width:166, height:253, alignment: .trailing)
                            .padding(.trailing, 100)
                        
                        Spacer()
                        
                        Button(action:{
                            clickedOnNext.toggle()
                        }){
                            Image(systemName:"chevron.forward")
                                .resizable()
                                .frame(width: 32, height: 47, alignment: .trailing)
                                .foregroundStyle(Color(purple))
                                .padding()
                        }
                    }
                    .edgesIgnoringSafeArea(.all)
//                    .onTapGesture(perform: {
//                        .navigationDestination(isPresented: $clickedOnNext){
//                            ExerciseView()
//                        }
//                    })
//                    
                    Button(action: {
                        clickedOnSkip.toggle()
                    }) {
                        ZStack {
                            greyButton()
                            Text("Skip")
                                .padding(.top, 160)
                                .foregroundStyle(.black)
                            
                        }
                    }
                    .navigationDestination(isPresented: $clickedOnSkip){
                        ExerciseView()
                }
                
                }
            }
        }
    }
}

struct greyButton: View {  
    var body: some View {        
        Image("ButtonGrey")          
            .resizable()            
            .frame(width:400, height:40)
            .padding(.top, 160)
    }
}

struct purpleButton: View {  
    var body: some View {        
        Image("ButtonPurple")          
            .resizable()            
            .frame(width:400, height:40) 
            .padding(.top, 160)
    }
}
