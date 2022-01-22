//
//  ContentView.swift
//  Unit Conversions
//
//  Created by Gökçe Kahraman on 20.01.2022.
//

import SwiftUI
struct ContentView: View {
    
//    TEMPERATURE
    @State private var inputTemp = ""
    @State private var outputTemp = ""
    @State private var inputUnitTempValue = 1
    let inputUnitTemps = ["Celcius","Fahrenheit"]
    @State private var outputUnitTempValue = 1
    let outputUnitTemps = ["Celcius","Fahrenheit"]
    
    var inputTempUnitAfterConversationtoOutput: String{
        var output_temp = " "
        var input_temp = Measurement(value: 0, unit: UnitTemperature.celsius)
        
        switch inputUnitTemps[inputUnitTempValue] {
        case "Celcius":
            input_temp = Measurement(value: Double(inputTemp) ?? 0, unit: UnitTemperature.celsius)
        case "Fahrenheit":
            input_temp = Measurement(value: Double(inputTemp) ?? 0, unit: UnitTemperature.fahrenheit)
        default:
            input_temp = Measurement(value: Double(inputTemp) ?? 0, unit: UnitTemperature.celsius)
        }
    
        
        switch outputUnitTemps[outputUnitTempValue]{
        case "Celcius":
            output_temp = String(describing: input_temp.converted(to: UnitTemperature.celsius))
        case "Fahrenheit" :
            output_temp = String(describing: input_temp.converted(to: UnitTemperature.fahrenheit))
        default:
            output_temp = String(describing: input_temp.converted(to: UnitTemperature.celsius))
        }
        return output_temp
    }

    
    
    
//      LENGHT
    @State private var inputLenght = ""
    @State private var outputLenght = ""
    @State private var inputUnitLenght = 2
    let inputUnitLenghts = ["meters","kilometers","feet","yards"]
    @State private var outputUnitLenght = 2
    let outputUnitLenghts = ["meters","kilometers","feet","yards"]
    
    var inputLenghtUnitAfterConversation : String{
        var output_lenght = ""
        var input_lenght = Measurement(value: 0, unit: UnitLength.meters)
        
        switch inputUnitLenghts[inputUnitLenght]{
        case "meters":
            input_lenght = Measurement(value: Double(inputLenght) ?? 0, unit: UnitLength.meters)
        case "kilometers":
            input_lenght = Measurement(value: Double(inputLenght) ?? 0, unit: UnitLength.kilometers)
        case "feet":
            input_lenght = Measurement(value: Double(inputLenght) ?? 0, unit: UnitLength.feet)
        case "yards":
            input_lenght = Measurement(value: Double(inputLenght) ?? 0, unit: UnitLength.yards)
        default:
            input_lenght = Measurement(value: Double(inputLenght) ?? 0, unit: UnitLength.meters)
        }
        
        switch outputUnitLenghts[outputUnitLenght]{
        case "meters":
            output_lenght = String(describing: input_lenght.converted(to: UnitLength.meters))
        case "kilometers":
            output_lenght = String(describing: input_lenght.converted(to: UnitLength.kilometers))
        case "feet":
            output_lenght = String(describing: input_lenght.converted(to: UnitLength.feet))
        case "yards":
            output_lenght = String(describing: input_lenght.converted(to: UnitLength.yards))

        default:
            output_lenght = String(describing: input_lenght.converted(to: UnitLength.meters))
        }
        
        return output_lenght
    }

    
//      TIME
    @State private var inputTime = ""
    @State private var outputTime = ""
    @State private var inputUnitTime = 2
    let inputUnitTimes = ["seconds","minutes","hours"]
    @State private var outputUnitTime = 2
    let outputUnitTimes = ["seconds","minutes","hours"]
    
    var inputUnitTimeAfterConversation : String{
        var output_time = ""
        var input_time = Measurement(value: 0, unit: UnitDuration.seconds)
        
        switch inputUnitTimes[inputUnitTime]{
        case "seconds":
            input_time = Measurement(value: Double(inputTime) ?? 0, unit: UnitDuration.seconds)
        case "minutes":
            input_time = Measurement(value: Double(inputTime) ?? 0, unit: UnitDuration.minutes)
        case "hours":
            input_time = Measurement(value: Double(inputTime) ?? 0, unit: UnitDuration.hours)
         default:
            input_time = Measurement(value: Double(inputTime) ?? 0, unit: UnitDuration.seconds)
        }
        
        switch outputUnitLenghts[outputUnitLenght]{
        case "seconds":
            output_time = String(describing: input_time.converted(to: UnitDuration.seconds))
        case "minutes":
            output_time = String(describing: input_time.converted(to: UnitDuration.minutes))
        case "hours":
            output_time = String(describing: input_time.converted(to: UnitDuration.hours))
        default:
            output_time = String(describing: input_time.converted(to: UnitDuration.seconds))
        }
        
        return output_time
    }

//    VOLUME
    @State private var inputVolume = ""
    @State private var outputVolume = ""
    @State private var inputUnitVolume = 2
    let inputUnitVolumes = ["milliliters","liters","cups","pints"]
    @State private var outputUnitVolume = 2
    let outputUnitVolumes = ["milliliters","liters","cups", "pints"]
    
    var inputVolumeUnitAfterConversation : String{
        var output_volume = ""
        var input_volume = Measurement(value: 0, unit: UnitVolume.milliliters)
        
        switch inputUnitVolumes[inputUnitVolume]{
        case "milliliters":
            input_volume = Measurement(value: Double(inputVolume) ?? 0, unit: UnitVolume.milliliters)
        case "liters":
            input_volume = Measurement(value: Double(inputVolume) ?? 0, unit: UnitVolume.liters)
        case "cups":
            input_volume = Measurement(value: Double(inputVolume) ?? 0, unit: UnitVolume.cups)
        case "pints":
            input_volume = Measurement(value: Double(inputVolume) ?? 0, unit: UnitVolume.pints)
        default:
            input_volume = Measurement(value: Double(inputVolume) ?? 0, unit: UnitVolume.milliliters)
        }
        
        switch outputUnitVolumes[outputUnitVolume]{
        case "milliliters":
            output_volume = String(describing: input_volume.converted(to: UnitVolume.milliliters))
        case "liters":
            output_volume = String(describing: input_volume.converted(to: UnitVolume.liters))
        case "cups":
            output_volume = String(describing: input_volume.converted(to: UnitVolume.cups))
        case "pints":
            output_volume = String(describing: input_volume.converted(to: UnitVolume.pints))

        default:
            output_volume = String(describing: input_volume.converted(to: UnitVolume.milliliters))
        }
        return output_volume
    }


    
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("Temperature Conversion")){
                    TextField("Enter Teprerature", text: $inputTemp)
                    Picker("Input Unit -" , selection: $inputUnitTempValue){
                        ForEach(0..<inputUnitTemps.count){
                            Text( "\(inputUnitTemps[$0])")
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                    Picker("Output Unit -" , selection: $outputUnitTempValue){
                        ForEach(0..<outputUnitTemps.count){
                            Text( "\(outputUnitTemps[$0])")
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                }
                Section(header: Text("Converting Temperature Result is")){
                    Text(inputTempUnitAfterConversationtoOutput)
                }
                
                
                
                
                Section(header: Text("Lenght Conversion")){
                    TextField("Enter Lenght", text: $inputLenght)
                    Picker("Input Lenght-" , selection: $inputUnitLenght){
                        ForEach(0..<inputUnitLenghts.count){
                            Text( "\(inputUnitLenghts[$0])")
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                    Picker("Output Lenght-" , selection: $outputUnitLenght){
                        ForEach(0..<outputUnitLenghts.count){
                            Text( "\(outputUnitLenghts[$0])")
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                }
                Section(header: Text("Converting Lenght Result is")){
                    Text(inputLenghtUnitAfterConversation)
                }
                
                
                
                
                
                Section(header: Text("Time Conversion")){
                    TextField("Enter Time", text: $inputTime)
                    Picker("Input Time -", selection: $inputTime){
                        ForEach(0..<inputUnitTimes.count){
                            Text("\(inputUnitTimes[$0])")
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                    Picker("Output Time -", selection: $outputTime){
                        ForEach(0..<outputUnitTimes.count){
                            Text("\(outputUnitTimes[$0])")
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                }
                Section(header: Text("Converting Time Result is")){
                    Text(inputUnitTimeAfterConversation)
                }
                
                
                
                
                
                Section(header: Text("Volume Conversion")){
                    TextField("Enter Volume", text: $inputVolume)
                    Picker("Input Volume -", selection: $inputVolume){
                        ForEach(0..<inputUnitVolumes.count){
                            Text("\(inputUnitVolumes[$0])")
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                    Picker("Output Volume -", selection: $outputVolume){
                        ForEach(0..<outputUnitVolumes.count){
                            Text("\(outputUnitVolumes[$0])")
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                }
                Section(header: Text("Converting Volume Result is")){
                    Text(inputVolumeUnitAfterConversation)
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
