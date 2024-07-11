//
//  productView.swift
//  userAuth
//
//  Created by Davion Vaughn on 6/25/24.
//

import SwiftUI

struct productView: View {
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
                    Image("equipment-removebg-preview-removebg-preview")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 190, alignment: .topLeading)
                    Image("vro-removebg-preview")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 190, alignment: .topLeading)
                    
                    
                    
                }
            NavigationLink(destination: ExistingView()){
                HStack(spacing: 90){
                        Button(action:{}){
                            Text("$44.99")
                        }
                    
                    
                        Button(action:{}){
                            Text("$45.00")
                        }
                    
                }
                    
                }
                HStack{
                    Image("soccer-removebg-preview")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 190, alignment: .topLeading)
                    Image("rackettennis-removebg-preview")
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
                NavigationLink{
                    ContentView()
                    
                } label: {
                  Text("1-2")
                   
                    
                }
            }
        
            
            .padding()
        }
    }
    


#Preview {
    productView()
}
