import SwiftUI

struct lessonFirstScreen: View {
    var body: some View{
        ZStack{
            Image("textBalloon1")
            Text ("Hello there! Do you want to learn a fun fact? If you are struggling with knowing the difference between a major and a minor scale, there's a trick to learn how!")
                .frame(width: 497, height: 100)
                .foregroundStyle(.black)

        }
        .frame(alignment: .topLeading)
    }
}
struct lessonSecondScreen: View {
    var body: some View{
        ZStack{
//            Image("textBalloon2")
            Text ("Major Scales follow the pattern of tone, tone, semitone, tone, tone, tone, semitone.")
                .frame(width: 497, height: 100)
                .foregroundStyle(.black)
        }
        .frame(alignment: .topLeading)
        .foregroundStyle(.black)

    }
}

struct lessonThirdScreen: View {
        var body: some View {
            ZStack{
//            Image("textBalloon2")
            Text ("Minor Scales follow the pattern of tone, semitone, tone, tone, semitone, tone, tone")
                    .frame(width: 497, height: 100)
                    .foregroundStyle(.black)


        }
            .frame(alignment: .topLeading)
    }
}


struct LessonView: View {
    var purple: Color = Color (red:0.2884, green:0.2553, blue: 0.4563)
    enum lessonState {
        case seesLesson, pressedNextOnce, pressedNextTwice, pressedSkip
    }
    @State private var LessonState = lessonState.seesLesson

    var body: some View {
        VStack{
                    switch LessonState {
                    case .seesLesson:
                        lessonFirstScreen()
                    case .pressedNextOnce:
                        lessonSecondScreen()
                    case .pressedNextTwice:
                        lessonThirdScreen()
                    case .pressedSkip:
                        ContentView()
                    }    
            HStack{
                Image(systemName:"chevron.backward")
                    .resizable()
                    .frame(width: 32, height: 47, alignment: .leading)
                    .foregroundStyle(Color(purple))
                    .padding()
                
                Spacer()
                
                Image ("bird")
                    .resizable()
                    .frame(width:166, height:253, alignment: .bottomTrailing)
                
                Spacer()

                Image(systemName:"chevron.forward")
                    .resizable()
                    .frame(width: 32, height: 47, alignment: .trailing)
                    .foregroundStyle(Color(purple))
                    .padding()
            }
            }
    }
}
