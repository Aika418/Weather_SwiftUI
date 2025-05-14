//
//  ContentView.swift
//  Weather
//
//  Created by 塩入愛佳 on 2025/05/14.
//

import SwiftUI

struct ContentView: View {
    @State var cityWeather: CityWeather = .tokyo
    var body: some View {
        //ZStack：リストアプリの土台
        ZStack{
            //グラデーションを追加する。startとendで開始点と終了点を設定
            LinearGradient(colors: [.blue, .white], startPoint: .topLeading, endPoint: .bottomLeading)
                .ignoresSafeArea()//画面全体にグラデを適用
            ScrollView{
                VStack{
                    //今日の天気を表示する
                    Text(cityWeather.cityName)
                        .font(.system(size: 48, weight: .light))
                    Text("\(cityWeather.dailyForecast.hourlyWeather.first!.temperature)°")
                        .font(.system(size: 96,weight: .thin))
                    //HStack：横並び
                    HStack(){
                        Text("最高")
                        Text("\(cityWeather.dailyForecast.highestTemperature)°")
                        Text("最低")
                        Text("\(cityWeather.dailyForecast.lowestTemperature)°")
                    }
                    .font(.system(size: 24,weight: .light))
                }
                //VStack：縦方向
                VStack(spacing: 8){
                    Text(cityWeather.dailyForecast.description)
                    //横にスクロール
                    ScrollView(.horizontal){
                        
                        
                    }
                }
                .padding(10)
                .background(Color.black.opacity(0.1))
                .cornerRadius(16)
                .padding(.horizontal, 24)
            }
            
        }
        .foregroundColor(.white)
        .shadow(radius: 3)
    }
}

#Preview {
    ContentView()
}
