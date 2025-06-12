//
//  HomeView.swift
//  LoginExample_iOS
//
//  Created by Jonathan Soto Mares on 11/06/25.
//

import SwiftUI

struct HomeView : View {
    var body: some View {
        ZStack {
            Image("Fondo")
                .resizable()
                .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                HeaderName(username: "DiegoIbarraE")
                EmailField()
                
                MenuButtons()
                /*HStack {
                    EditButton()
                    Spacer()
                    DeleteButton()
                }
                .padding(.horizontal)
                .frame(maxWidth: .infinity)
                .padding(.top)*/
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .background()
            .clipShape(
                RoundedRectangle(cornerRadius: 30)
            )
            .padding()
        }
    }
}

private struct HeaderName : View {
    
    var username: String
    
    var body: some View {
        VStack(alignment: .center) {
            Text("DIEGOIBARRAE")
                .font(.title2)
                .fontWeight(.bold)
                .lineLimit(1)
        }
        .frame(maxWidth: .infinity)
    }
}

private struct EmailField : View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Correo Electronico:")
                .font(.title3)
                .fontWeight(.bold)
                .padding(.bottom, 4)
            Text("Jsmares0105@gmail.com")
                .font(.title3)
        }.padding(.vertical)
    }
}

private struct MenuButtons : View {
    var body: some View {
        VStack {
            Rectangle()
                .frame(height: 1)
                .frame(maxWidth: .infinity)
                .foregroundStyle(Color.gray)
                .padding(.bottom, 4)
            
            HStack {
                EditButton()
                Spacer()
                DeleteButton()
            }
            .padding(.horizontal)
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical)
        
    }
}

private struct EditButton : View {
    var body: some View {
        Button(action: {
            
        }) {
            Text("MODIFICAR")
        }
    }
}

private struct DeleteButton : View {
    var body: some View {
        Button(action: {
            
        }) {
            Text("ELIMINAR")
                .foregroundStyle(Color.red)
        }
    }
}

#Preview {
    HomeView()
}
