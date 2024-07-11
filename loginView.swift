//
//  loginView.swift
//  userAuth
//
//  Created by Davion Vaughn on 6/17/24.
//

import SwiftUI
import Firebase
struct LoginView: View {
 @State private var email = ""
 @State private var password = ""
 @State private var errormessage = ""
 @State private var isLoggedIn = false
 var body: some View {
  NavigationStack{
      Image("fire-removebg-preview")
          .resizable()
          .aspectRatio(contentMode: .fit)
          .frame(width: 200, height: 250, alignment: .topLeading)
   if isLoggedIn {
    ContentView()
   } else {
    Text("Sign In")
     .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
     .padding()
    Text("Email Address")
    TextField("name@example.com", text: $email)
     .padding()
     .background(Color(.secondarySystemBackground))
     .cornerRadius(5.0)
    Text("Password")
    SecureField("********", text: $password)
    .padding()
    .background(Color(.secondarySystemBackground))
    .cornerRadius(5.0)
    Button(action: logIn){
     Text("Sign In")
     Image(systemName: "arrow.right")
    }
    Text(errormessage)
    NavigationLink{
     SignUpView()
    } label: {
     Text("Don't Have an Account?")
     Text("Sign Up")
      .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
    }
   }
  }
 }
 func logIn(){
  Auth.auth().signIn(withEmail: email, password: password) {authResult, error in
   if let error = error{
    errormessage = error.localizedDescription
   } else {
    isLoggedIn = true
   }
  }
 }
}
#Preview {
  LoginView()
 }
