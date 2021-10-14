//: A UIKit based Playground for presenting user interface
  
import SwiftUI
import PlaygroundSupport
import Darwin
import AVFoundation

struct ContentView: View {

  private var controller = StoryController()
  @State private var dialogTxt = ""
  @State private var backgroungImg: String
  @State private var characterImg: String
  @State private var buttonText = "See the next scene"
  @State var audioPlayer: AVAudioPlayer?
  
  init() {
    backgroungImg = controller.currentItem.sceneImg
    characterImg = controller.currentItem.characterImg
  }
    
  var body: some View {    
    ZStack {
      Image(uiImage: UIImage(named: backgroungImg)!)
            .resizable()
            .frame(width: 750, height: 750)
      HStack {
        Image(uiImage: UIImage(named: characterImg)!)
              .resizable()
              .frame(width: 90, height: 130)
              .offset(x: -30, y: -35)
        Text("\(dialogTxt)")
            .bold()
            .kerning(1.5)
            .lineSpacing(4.0)
            .font(.footnote)
            .frame(width: 450, height: 150)
            .offset(x: 30, y: -30)
            .onAppear {
              self.playAudio()
              startTextAnimation()
            }
      }.frame(maxHeight: .infinity, alignment: .bottom)
      Button(action: {
        controller.nextDialog(isAnimating: { isAnimating in
          if !isAnimating {
            startTextAnimation()
          }
        })
        backgroungImg = controller.currentItem.sceneImg
        characterImg = controller.currentItem.characterImg
        dialogTxt = ""
      }) {
        Text(buttonText)
          .foregroundColor(.white)
          .frame(width: 350, height: 210)
          .offset(x: 65)
      }.frame(maxHeight: .infinity, alignment: .bottom)
    }
  }
  
  func startTextAnimation() {
    controller.animateText(animatedText: { text in
      dialogTxt = text
    }, onStartAnimating: {
      buttonText = ""
    }, onFinishedAnimation: { text in
      usleep(2000000)
      buttonText = "NEXT"
      dialogTxt = ""
    })
  }
    

  func playAudio() {
    if let audioURL = Bundle.main.url(forResource: "CHIPTUNE_Minstrel_Dance", withExtension: "mp3") {
      do {
          try self.audioPlayer = AVAudioPlayer(contentsOf: audioURL)
          self.audioPlayer?.numberOfLoops = 8000
          self.audioPlayer?.play()
        } catch {
          print("Couldn't play audio. Error: \(error)")
        }
      } else {
          print("No audio file found")
      }
  }

}

// Show the view
PlaygroundPage.current.setLiveView(
    ContentView().frame(width: 750, height: 750)
)
