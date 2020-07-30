//
//  NewPostView.swift
//  Splink
//
//  Created by Nick on 7/28/20.
//  Copyright © 2020 Nick Won. All rights reserved.
//

import SwiftUI

struct NewPostView: View {
    
     @State var showSheet = false
     @State var showImagePicker = false
     @State var sourceType: UIImagePickerController.SourceType = .camera
    @State private var image:UIImage?
    
    var title = Title(name: "Test", date: "Test Date")
    var caption = Caption(description: "Test")
    
    var body: some View {
        VStack{
            ZStack{
                
            HStack{
                if image != nil{
                    Image(uiImage: image!).resizable().frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.width).scaledToFit().background(Color.blue)
                }else{
                Image(systemName: "timelapse").resizable().frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.width).scaledToFit().background(Color.blue)
                }
            }
                VStack{
                    HStack {
                        Spacer()
                        Button(action: {self.showSheet.toggle()}){
                            Image(systemName: "plus.circle").font(.system(size:30)).foregroundColor(.black).opacity(0.7).padding()
                        }.actionSheet(isPresented: $showSheet){
                            ActionSheet(title: Text("Add Image"), message: nil, buttons: [
                                .default(Text("Camera"), action: {
                                    self.showImagePicker = true
                                    self.sourceType = .camera
                                }),
                                .default(Text("Photo Library"), action: {
                                    self.showImagePicker = true
                                    self.sourceType = .photoLibrary
                                    
                                }),
                                .cancel()
                            ])
                        }
                    }
                    Spacer()
                }
        }
                VStack {
                    Text("Input Title")
                        VStack{
                            Text("Input Date")
                        }.frame(width: UIScreen.main.bounds.size.width)
                }.background(Color.green)

                    ScrollView{
                        VStack{
                            Text("Caption")
                            Text("hi")
                        }
                    }.frame(width: UIScreen.main.bounds.size.width).background(Color.gray)
            
        }.sheet(isPresented: $showImagePicker){
            VStack {
                ScrollView(.horizontal){
                HStack{
                    ForEach(0..<8){_ in
                        Rectangle().frame(width: 200, height: 200).background(Color.red)
                    }
                    }.padding()
                }.frame(height: 240).background(Color.blue)
                imagePicker(image: self.$image, sourceType: self.sourceType)
            }
        }
    }
}

struct NewPostView_Previews: PreviewProvider {
    static var previews: some View {
        NewPostView()
    }
}

