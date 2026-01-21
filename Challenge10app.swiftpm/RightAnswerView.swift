import SwiftUI

struct RightAnswerView: View{
    
    @State var clickedNext: Bool = false
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color.gray
                VStack{
                    
                    Spacer()
                    
                    ZStack{
                        Image ("speechBalloonPurple")
                        Text("Yay! You got it!")
                            .foregroundStyle(.black)
                            .padding(.bottom, 24)
                    }
                    
                    Image ("birdHappy")
                        .resizable()
                        .frame(width:166, height:253, alignment: .trailing)
                        .padding(.trailing, 100)
                    
                    Spacer()
                    
                    Button(action: {
                        clickedNext.toggle()
                    }) {
                        ZStack {
                            Image("ButtonPurple")
                                .padding(.bottom,24)
                            Text("Next")
                                .padding(.bottom,24)
                                .foregroundStyle(.black)
                            
                        }
                    }
                    .navigationDestination(isPresented: $clickedNext){
                        ExerciseView()
                    }
                }
                
            }
        }
        
    }
}
