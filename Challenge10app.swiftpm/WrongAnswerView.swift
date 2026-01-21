import SwiftUI

struct WrongAnswerView: View{
    
    @State var clickedNext: Bool = false
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color.gray
                VStack{
                    
                    Spacer()
                    
                    ZStack{
                        Image ("speechBalloonGrey")
                            .resizable()
                            .frame(width:317, height:119, alignment: .trailing)

                        Text("Oh no! It seems there's something wrong!")
                            .foregroundStyle(.black)
                            .frame(width:289, height:63)
                            .padding(.bottom, 24)
                    }
                    
                    Image ("birdSad")
                        .resizable()
                        .frame(width:166, height:253, alignment: .trailing)
                        .padding(.trailing, 100)
                    
                    Spacer()
                    
                    Button(action: {
                        clickedNext.toggle()
                    }) {
                        ZStack {
                            Image("ButtonGrey")
                                .padding(.bottom,24)
                            Text("Try Again")
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
