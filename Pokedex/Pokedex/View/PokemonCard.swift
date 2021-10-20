//
//  ContentView.swift
//  Pokedex
//
//  Created by AMStudent on 10/19/21.
//

import SwiftUI

struct PokemonCard: View {
    
    let pokemonData: PokemonData
    
    var body: some View {
        ZStack {
            VStack (alignment: .leading) {
                Text(pokemonData.name.uppercased())
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.top, 10)
                    .padding(.leading)
                
                HStack {
                    VStack {
                        Text(pokemonData.type.uppercased())
                            .font(.caption)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.horizontal, 10)
                            .padding(.vertical, 8)
                        
                            .overlay(RoundedRectangle (cornerRadius: 12)
                            .fill(Color.white.opacity(0.25))
                           )
                        .frame(width: 100, height: 25)
                        
                         }
                                 
                    Image("Bulb")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 68, height: 68)
                        .padding([.bottom, .trailing], 5)
                }
            }
        }
        .background(Color.green)
        .cornerRadius(12)
        .shadow(color: .green, radius: 8, x: 0, y: 0)
    }
}

struct PokemonCard_Previews: PreviewProvider {
    static var previews: some View {
        PokemonCard(pokemonData: mockData[0])
    }
}
