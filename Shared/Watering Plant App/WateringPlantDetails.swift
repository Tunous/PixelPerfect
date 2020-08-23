//
//  WateringPlantDetails.swift
//  PixelPerfect (iOS)
//
//  Created by Łukasz Rutkowski on 23/08/2020.
//

import SwiftUI

struct WateringPlantDetails: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        GeometryReader { safeAreaGeometry in
            ScrollView {
                VStack(alignment: .leading, spacing: 0) {
                    ParallaxHeader(alignment: .bottomLeading) {
                        VStack(alignment: .leading) {
                            Button(action: { presentationMode.wrappedValue.dismiss() }) {
                                Image(systemName: "xmark")
                                    .imageScale(.large)
                            }
                            .accentColor(.white)
                            Spacer()
                            Text("Samantha")
                                .font(.title)
                                .fontWeight(.bold)
                                .colorInvert()
                            Text("Alocasia Polly")
                                .colorInvert()
                        }
                        .padding([.leading, .bottom, .trailing], 24)
                        .padding(.top, safeAreaGeometry.safeAreaInsets.top)
                        .padding(.leading, safeAreaGeometry.safeAreaInsets.leading)
                        .padding(.trailing, safeAreaGeometry.safeAreaInsets.trailing)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(LinearGradient(gradient: Gradient(colors: [.clear, Color.black.opacity(0.6)]), startPoint: .top, endPoint: .bottom))
                    } background: {
                        Image("Alocasia Polly")
                            .resizable()
                    }
                    .frame(height: 400)

                    HStack(alignment: .top, spacing: 28) {
                        InfoView(iconName: "umbrella", text: "Water often to keep moist", color: .blue)
                            .frame(maxWidth: .infinity)
                        InfoView(iconName: "thermometer", text: "High temperature 20-25°C", color: .red)
                            .frame(maxWidth: .infinity)
                        InfoView(iconName: "sun.max", text: "Bright but indirect", color: .yellow)
                            .frame(maxWidth: .infinity)
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.horizontal)
                    .padding(.vertical, 8)
                    .padding(.leading, safeAreaGeometry.safeAreaInsets.leading)
                    .padding(.trailing, safeAreaGeometry.safeAreaInsets.trailing)

                    HStack {
                        Spacer()
                        Button(action: {}) {
                            SquareButton()
                        }
                    }
                    .frame(height: 24)
                    .padding(.trailing)
                    .offset(x: 0, y: 14)
                    .zIndex(1)
                    .padding(.leading, safeAreaGeometry.safeAreaInsets.leading)
                    .padding(.trailing, safeAreaGeometry.safeAreaInsets.trailing)

                    VStack(alignment: .leading) {
                        HStack(spacing: 12.0) {
                            Text("Growth history")
                                .font(.headline)
                            Button(action: {}) {
                                Text("See full")
                                    .font(.caption)
                                    .fontWeight(.semibold)
                            }
                        }
                        .padding()

                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 24) {
                                Button(action: {}) {
                                    ZStack {
                                        Circle()
                                            .fill(Color.white)
                                            .overlay(Circle()
                                                        .stroke(Color.accentColor, style: StrokeStyle(lineWidth: 1, dash: [8])))
                                            .padding(2)
                                            .frame(width: 64, height: 64)
                                        Image(systemName: "plus")
                                            .foregroundColor(.accentColor)
                                            .font(.title)
                                    }
                                }
                                Image("Alocasia Polly")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 64, height: 64)
                                    .clipShape(Circle())
                                Circle()
                                    .fill(Color.random())
                                    .frame(width: 64, height: 64)
                                Circle()
                                    .fill(Color.random())
                                    .frame(width: 64, height: 64)
                                Circle()
                                    .fill(Color.random())
                                    .frame(width: 64, height: 64)
                                Circle()
                                    .fill(Color.random())
                                    .frame(width: 64, height: 64)
                            }
                            .padding(.horizontal)
                        }

                        VStack(alignment: .leading, spacing: 8.0) {
                            Text("About Alocasia Polly")
                                .font(.headline)
                            Text("Because imitating rainforest conditions is so crucial in keeping these Alocasia varieties alive, finding the right location")
                                .font(.body)
                        }
                        .padding()
                    }
                    .padding(.top)
                    .padding(.leading, safeAreaGeometry.safeAreaInsets.leading)
                    .padding(.trailing, safeAreaGeometry.safeAreaInsets.trailing)
                    .padding(.bottom, safeAreaGeometry.safeAreaInsets.bottom)
                    .background(Color(#colorLiteral(red: 0.937254902, green: 0.9450980392, blue: 0.968627451, alpha: 1)))

                    GeometryReader { geometry in
                        Color(#colorLiteral(red: 0.937254902, green: 0.9450980392, blue: 0.968627451, alpha: 1))
                            .frame(height: geometry.frame(in: .global).minY)
                    }
                }
            }
            .ignoresSafeArea()
            .navigationBarHidden(true)
        }
    }
}

struct WateringPlantDetails_Previews: PreviewProvider {
    static var previews: some View {
        WateringPlantDetails()
    }
}
