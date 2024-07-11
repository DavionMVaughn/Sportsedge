//
//  SignUpView.swift
//  userAuth
//
//  Created by Davion Vaughn on 6/17/24.
//

import SwiftUI
import Firebase
struct SignUpView: View {
    @State private var email = ""
     @State private var password = ""
     @State private var errormessage = ""
     @State private var signUpSuccessful = false
     var body: some View {
      NavigationStack{
          
          Image("fire-removebg-preview")
              .resizable()
              .aspectRatio(contentMode: .fit)
              .frame(width: 200, height: 250, alignment: .topLeading)
       if signUpSuccessful {
        LoginView()
           } else {
            Text("Sign Up")
             .font(.title)
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
            Button(action: signUp){
             Text("Sign Up")
             Image(systemName: "arrow.right")
            }
            Text(errormessage)
            NavigationLink{
             LoginView()
            } label: {
             Text("Already Have an Account?")
             Text("Sign In")
              .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            }
           }
          }
         }
         func signUp(){
          Auth.auth().createUser(withEmail: email, password: password) {authResult, error in
           if let error = error{
            errormessage = error.localizedDescription
           } else {
            signUpSuccessful = true
            if let user = authResult?.user{
             let db = Firestore.firestore()
             db.collection("users").document(user.uid).setData(["email":user.email ?? " ", "uid": user.uid]) {error in
              if error != nil {
               errormessage = "Error Saving user"
              } else {
               errormessage = "User Signed Up successfully!"
              }
             }
            }
           }
          }
     }
}






