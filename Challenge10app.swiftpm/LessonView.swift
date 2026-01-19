import SwiftUI

struct lessonFirstScreen: View{
    var body: some View{
        Text ("Hello there! Do you want to learn a fun fact? If you are struggling with knowing the difference between a major and a minor scale, there's a trick to learn how!")
    }
}
struct lessonSecondScreen: View{
    var body: some View{
        Text ("Major Scales follow the pattern of tone, tone, semitone, tone, tone, tone, semitone.")
    }
}
struct lessonThirdScreen: View{
    var body: some View{
        Text ("Minor Scales follow the pattern of tone, semitone, tone, tone, semitone, tone, tone")
    }
}

struct LessonView: View {
    
    enum lessonState {
        case seesLesson, pressedNextOnce, pressedNextTwice, pressedSkip
    }
    @State private var LessonState = lessonState.seesLesson

    var body: some View {
        VStack{
            HStack{
                
                Image ("bird")
                
                    Image ("textBalloon1")
                    switch LessonState {
                    case .seesLesson:
                        lessonFirstScreen()
                    case .pressedNextOnce:
                        lessonSecondScreen()
                    case .pressedNextTwice:
                        lessonThirdScreen()
                    case .pressedSkip:
                        ContentView()
                    }               }
            }
    }
}
