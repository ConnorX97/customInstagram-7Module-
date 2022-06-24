//
//  LoginPage.swift
//  customInstagram
//
//  Created by Sherzod Fayziev on 2022/06/23.
//

import SwiftUI

struct LoginPage: View {
    
    let screenHeight = UIScreen.main.bounds.height
    let screenWidth = UIScreen.main.bounds.width
    
    @State var email = ""
    @State var password = ""
    var body: some View {
        NavigationView{
            ZStack{
                LinearGradient(gradient: Gradient(colors: [Color("LightOrange"),Color("DarkOrange")]), startPoint: .bottom, endPoint: .trailing)
                VStack {
                    Spacer()
                    VStack(spacing: 8) {
                        Text("appName")
                            .foregroundColor(.white)
                            .font(Font.custom("Billabong", size: 70))
                        TextField("email" ,text: $email )
                            .padding()
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(.white .opacity(0.3))
                            .cornerRadius(10)
                        SecureField("pw" , text: $password)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(.white .opacity(0.3))
                            .cornerRadius(10)
                        NavigationLink(destination: mainPage() , label: {
                            Text("sign_in")
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .frame(height: 50)
                                .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(lineWidth: 3)
                                    .foregroundColor(.white.opacity(0.5))
                                )
                                .cornerRadius(10)
                        }
                        
                        )
                        
                    }.padding()
                    Spacer()
                    HStack{
                        Text("dont_have_account")
                            .foregroundColor(.white)
                        NavigationLink(destination: registrationPage(), label: {
                            Text("sign_up")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                        })
                    }
                    .padding(.bottom, 20)
                }
                
               
                
            }
            .ignoresSafeArea()
        }.accentColor(.white)
    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
            .previewInterfaceOrientation(.portrait)
    }
}




