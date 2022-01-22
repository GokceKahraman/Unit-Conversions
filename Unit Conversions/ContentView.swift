//
//  ContentView.swift
//  Unit Conversions
//
//  Created by Gökçe Kahraman on 20.01.2022.
//

import SwiftUI

//You need to build an app that handles unit conversions: users will select an input unit and an output unit, then enter a value, and see the output of the conversion.
//Temperature conversion: users choose Celsius, Fahrenheit, or Kelvin.
//Length conversion: users choose meters, kilometers, feet, yards, or miles.
//Time conversion: users choose seconds, minutes, hours, or days.
//Volume conversion: users choose milliliters, liters, cups, pints, or gallons.


struct ContentView: View {
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("Temperature Conversion")){
                    TextField()
                    Picker()
                    Text("Selected value in xtemperature is x")

                }
                Section(header: Text("Lenght Conversion")){
                    TextField()
                    Picker()
                    Text("Selected value in xlenght is x")

                }
                Section(header: Text("Time Conversion")){
                    TextField()
                    Picker()
                    Text("Selected value in xtime is x")
                }
                Section(header: Text("Volume Conversion")){
                    TextField()
                    Picker()
                    Text("Selected value in xvolume is x")
                }
            }
        }.navigationTitle("Unit Converter")
    }
}







struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
