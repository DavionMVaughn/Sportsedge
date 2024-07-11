//
//  ContentView.swift
//  userAuth
//
//  Created by Davion Vaughn on 6/17/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            
            
            
            VStack {
                Image("fire-removebg-preview")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 250, alignment: .topLeading)
                NavigationLink{
                    LoginView()
                    
                } label: {
                    Text("Back to Sign In")
                    Text("Click here")
                }
            }
            HStack{
                Image("baseball_hat-removebg-preview")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 190, alignment: .topLeading)
                Image("Wooden-baseball-bat-isolated-on-transparent-background-PNG-removebg-preview")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 190, alignment: .topLeading)
                
                
                
            }
            
            HStack(spacing: 90){
                NavigationLink{
                    ExistingView()
                    
                } label: {
                    Text("$40.00")
                }
                NavigationLink{
                    ExistingView()
                    
                } label: {
                    Text("$45.00")
                }
            }
            
            
            HStack{
                Image("Football-removebg-preview")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 190, alignment: .topLeading)
                Image("FootballGloves")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 190, alignment: .topLeading)
                
                
            }
            HStack(spacing: 90){
                NavigationLink{
                    ExistingView()
                    
                } label: {
                    Text("$20.00")
                }
                NavigationLink{
                    ExistingView()
                    
                } label: {
                    Text("$25.00")
                }
            }
            
            
            NavigationLink{
                productView()
                
            } label: {
                Text("1-2")
                Text("")
                
            }
            
            .padding()
            
        }
    }
}

    

#Preview {
    ContentView()
}
