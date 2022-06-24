//
//  registrationPage.swift
//  customInstagram
//
//  Created by Sherzod Fayziev on 2022/06/24.
//

import SwiftUI

struct registrationPage: View {
    
    @Environment(\.presentationMode) var dissmissPageButton
    @State var fullname = ""
    @State var email = ""
    @State var password = ""
    @State var cpassword = ""
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
                        TextField("fullname" ,text: $fullname )
                            .padding()
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(.white .opacity(0.3))
                            .cornerRadius(10)
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
                        SecureField("cpw" , text: $cpassword)
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
                        Text("already_have")
                            .foregroundColor(.white)
                        Button(action: {
                            self.dissmissPageButton.wrappedValue.dismiss()
                        }, label: {
                            Text("sign_in")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                        })                    }
                    .padding(.bottom, 20)
                }
                
               
                
            }
            .ignoresSafeArea()
            
        }
    }
}

struct registrationPage_Previews: PreviewProvider {
    static var previews: some View {
        registrationPage()
    }
}
