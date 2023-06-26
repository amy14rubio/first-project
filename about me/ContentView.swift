//
//  ContentView.swift
//  about me
//
//  Created by Amyruth Rubio on 6/23/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var frontPageOpacity = 1.0
    @State private var secondPageOpacity = 0.0
    
    var body: some View {
        ZStack {
            
            //phone background color
            Color(red: 64/255, green: 49/255, blue: 61/255)
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
                .frame(minWidth: 0, maxWidth: .infinity)
            
            
            //card background color
            Color(red: 180/255, green: 124/255, blue: 119/255)
                .frame(width: 360, height: 465)
                .cornerRadius(50)
                .shadow(radius: 20)
            
            
            //front card
            VStack{
                Image("image")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300, height: 300, alignment: .center)
                    .cornerRadius(150)
                    .overlay(
                                RoundedRectangle(cornerRadius: 150)
                                    .stroke(Color.white, lineWidth: 1)
                            )

                Text("Hello, I'm Amy!")
                    .font((.custom("Chalkduster", size: 30)))
                    .foregroundColor(Color.white)
                    .tracking(2)
                    .padding(9)

                Text("(press on card to learn more)")
                    .font((.custom("Chalkduster", size: 18)))
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .frame(width: 400, alignment: .center)
                    .tracking(1)
            }
                .opacity(frontPageOpacity)
            
            
            //clicked card
            ScrollView {
                
                VStack{
                    
                    Image("image")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 250, height: 250, alignment: .center)
                        .cornerRadius(150)
                        .overlay(
                                    RoundedRectangle(cornerRadius: 150)
                                        .stroke(Color.white, lineWidth: 1)
                                )
                    
                    //"About" line
                    HStack{
                        Text("About")
                            .font((.custom("Chalkduster", size: 30)))
                            .foregroundColor(Color.white)
//                            .multilineTextAlignment(.leading)
//                            .frame(width: 300)
                            .tracking(2)
                        
                        Spacer()
                            .frame(width: 110)
                        
                        Text("❤︎❤︎❤︎")
                            .font((.custom("Chalkduster", size: 30)))
                            .foregroundColor(Color.white)
//                            .multilineTextAlignment(.leading)
//                            .frame(width: 300)
//                            .tracking(2)
                    }
                    
                    Text("I like origami and really anything arts related. I'm also learning how to play classical guitar and violin. I am quite a bit shy and introverted but I find coding to be really fun! :]")
                        .font((.custom("Chalkduster", size: 20)))
                        .foregroundColor(Color.white)
                        .frame(width: 300, alignment: .center)
                        .padding(1)
                        .lineSpacing(9)
                    
                    Spacer()
                }
                    .opacity(secondPageOpacity)
                
            }
            .frame(height: 800)
            
            
            //changes the opacity of viewed card
            Button("\n\n\n\n\n                                              \n\n\n\n\n\n\n\n\n\n\n\n\n") {

                withAnimation(.easeInOut(duration: 1)) {

                    if frontPageOpacity == 1.0 {
                        frontPageOpacity = 0.0
                        secondPageOpacity = 1.0
                    } else if frontPageOpacity == 0.0 {
                        frontPageOpacity = 1.0
                        secondPageOpacity = 0.0
                    }

                }

            }
                .buttonStyle(.bordered)
                .font(.largeTitle)
                .frame(width: 450, height: 500, alignment: .center)
                .opacity(0.1)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
