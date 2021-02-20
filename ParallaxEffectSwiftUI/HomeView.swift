//
//  HomeView.swift
//  ParallaxEffectSwiftUI
//
//  Created by Umer Khan on 20/02/2021.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            GeometryReader { reader in
                
                Image("white")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .offset(y: -reader.frame(in: .global).minY)
                
                // Parallax Effect
                    .frame(width: UIScreen.main.bounds.width, height: reader.frame(in: .global).minY + 500)
            }
            .frame(height: 500)
            
            VStack(alignment: .leading, spacing: 15) {
                Text("Tom & Jerry")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                
                HStack(spacing: 15) {
                    ForEach(1...5, id: \.self) { _ in
                        Image(systemName: "star.fill")
                            .foregroundColor(.gray)
                    }
                }
                Text("Tom and Jerry is an American animated franchise and series of comedy short films created in 1940 by William Hanna and Joseph Barbera.")
                    .font(.caption)
                    .foregroundColor(.gray)
                    .padding(.top, 5)
                
                Text(detail)
                    .padding(.top, 20)
                    .foregroundColor(.white)
            }
            .padding(.top, 25)
            .padding(.horizontal)
            .background(Color.black)
            .cornerRadius(20)
            .offset(y: -30)
            
        }
        .background(Color.black.opacity(1))
        .edgesIgnoringSafeArea(.all)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


var detail = "Best known for its 161 theatrical short films by Metro-Goldwyn-Mayer, the series centers on the rivalry between the titular characters of a cat named Tom and a mouse named Jerry. Many shorts also feature several recurring characters.In its original run, Hanna and Barbera produced 114 Tom and Jerry shorts for MGM from 1940 to 1958.[1] During this time, they won seven Academy Awards for Best Animated Short Film, tying for first place with Walt Disney's Silly Symphonies with the most awards in the category. After the MGM cartoon studio closed in 1957, MGM revived the series with Gene Deitch directing an additional 13 Tom and Jerry shorts for Rembrandt Films from 1961 to 1962. Tom and Jerry then became the highest-grossing animated short film series of that time, overtaking Looney Tunes. Chuck Jones then produced another 34 shorts with Sib Tower 12 Productions between 1963 and 1967. Three more shorts were produced, The Mansion Cat in 2001, The Karate Guard in 2005, and A Fundraising Adventure in 2014, making a total of 164 shorts.A number of spin-offs have been made, including the television series The Tom and Jerry Show (1975), The Tom and Jerry Comedy Show (1980–1982), Tom & Jerry Kids (1990–1993), Tom and Jerry Tales (2006–2008), and The Tom and Jerry Show (2014–present). The first feature-length film based on the series, Tom and Jerry: The Movie, was released in 1992, and 13 direct-to-video films have been produced since 2002, with an upcoming live-action/animated hybrid film set to be released in 2021. A musical adaptation of the series, titled Tom and Jerry: Purr-Chance to Dream, debuted in Japan in 2019 in advance of Tom and Jerry's 80th anniversary."
