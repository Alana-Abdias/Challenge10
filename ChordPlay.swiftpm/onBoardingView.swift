import SwiftUI

struct onBoardingView: View {
    @State var clickedOnGotIt: Bool = false
    
    var body: some View{
        NavigationStack{
            ZStack{
                RoundedRectangle(cornerRadius: 40)
                    .frame(width: .infinity, height:.infinity)
                    .padding()
                VStack{
                    Text("Press and hold")
                        .font(.title3)
                        .foregroundStyle(Color(.black))
                        .padding(.top)
                    
                    Text("the keys to make up the requested chord")
                        .font(.callout)
                        .foregroundStyle(Color(.black))
                        .padding(.bottom)
                    
                    ZStack{
                        Image ("textBalloon3")
                            .resizable()
                            .frame(width:80, height:72, alignment: .bottomTrailing)
                            .padding(.leading, 100)
                        Text("C")
                            .frame(width: 132, height: 100, alignment: .center)
                            .padding(.leading, 96)
                            .foregroundStyle(.black)
                    }
                    
                    Image ("birdGrey")
                        .resizable()
                        .frame(width:80, height:122, alignment: .trailing)
                        .padding(.trailing, 100)
                    
                    Image ("pianoGrey")
                        .resizable()
                        .frame(width:656, height:205, alignment: .center)
                        .padding()
                    
                    Spacer()
                    Button(action: {
                        clickedOnGotIt.toggle()
                    }) {
                        ZStack {
                            purpleButton()
                            Text("Got it!")
                                .padding(.bottom,32)
                                .foregroundStyle(.black)
                            
                        }
                    }
                    .navigationDestination(isPresented: $clickedOnGotIt){
                        ExerciseView()
                    }
                }
            }
        }
    }
}
