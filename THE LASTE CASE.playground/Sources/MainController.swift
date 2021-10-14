import Foundation

public class StoryController {
  
  // Current scene
  private var currentPosition = 0
  
  // Check if the animation has finished
  private var isAnimating = false
  
  // List of scenes that will be shown
  let storyList: [Dialog] = [
    Dialog(sceneImg: "lettermerged.png", characterImg: "vittima.png", dialogText: "Dearest M. I don't know if I'll have the chance to write you again, maybe I'll be too busy trying to safeguard my life; at the moment I feel in extreme danger. So, if this will be my last letter to an old colleague and friend, with whom I have shared everything, I want to be able to resolve this past quarrel so that I can leave this world without regrets. I was able to reopen \"that case\". "),
    Dialog(sceneImg: "lettermerged.png", characterImg: "vittima.png", dialogText: "It seems that  some news has come out from a similar investigation. Maybe nothing will work out, maybe it will, but now my main concern was letting you know about it. Hoping that this letter finds you healthy and without the company of the bottle. I expect to see you in my mansion as soon as possible. So, we could solve one last case as the old good days, together. With love. Winchester."),
    
    Dialog(sceneImg: "esternocasaperstaccarecasa.png", characterImg: "maggiordomo.png", dialogText: ""),
    
    Dialog(sceneImg: "hallinizio.png",characterImg:"maggiordomo.png", dialogText: "Mr. Moriarty, i'm sorry to have to welcome you in such a sad moment, but yesterday a tragedy happened…"),
    
    
    Dialog(sceneImg: "hallinizio.png",characterImg:"maggiordomo.png", dialogText:"Master Winchester is… well, how can i say it."),
    
          
    Dialog(sceneImg: "hallinizio.png",characterImg:"morty.png", dialogText: "(Oh my God, no...)"),



    Dialog(sceneImg: "hallinizio.png",characterImg:"maggiordomo.png", dialogText: "It heartens me to have to tell you that, but Master Winchester is…"),
    
  Dialog(sceneImg: "hallinizio.png", characterImg: "moglie.png", dialogText: "He was murdered!"),

    Dialog(sceneImg: "hallinizio.png",characterImg: "maggiordomo.png", dialogText: "Follow me Sir, I'll take you upstairs ... there is already a man on the spot."),

    Dialog(sceneImg: "hallinizio.png",characterImg:"morty.png", dialogText: "(Ah, this leg doesn't give me any respite ... but how did I get so bad?) "),
   Dialog(sceneImg: "hallinizio.png", characterImg: "morty.png", dialogText: "(I really should stop drinking ...)"),


    Dialog(sceneImg: "scene_of_crime.png",characterImg:"morty.png", dialogText: "(My god, what a mess!)"),
    
   Dialog(sceneImg: "scene_of_crime.png", characterImg: "morty.png", dialogText: "(Certainly, no need for a genius to understand that is a crime scene…)"),

    
   Dialog(sceneImg: "scene_of_crime.png", characterImg: "poliziotto.png", dialogText: "For a thousand four-leaf clovers, but you are the great detective Moriarty!"),

    Dialog(sceneImg: "scene_of_crime.png",characterImg:"poliziotto.png", dialogText: "I'm Lieutenant Broford, it's a real honor for me to meet you!"),
    
   Dialog(sceneImg: "scene_of_crime.png", characterImg: "morty.png", dialogText: "(The lieutenant's happiness seems to be overwhelming...)"),
    
    Dialog(sceneImg: "scene_of_crime.png",characterImg:"poliziotto.png", dialogText: "I'm sure that with your help in the investigation the case will be solved in no time!"),
    
   Dialog(sceneImg: "scene_of_crime.png", characterImg: "poliziotto.png", dialogText: "I'll explain what I have managed to reconstruct the case so far)"),
    
    Dialog(sceneImg: "scene_of_crime.png",characterImg:"poliziotto.png", dialogText: "As you can see, there are signs of struggle everywhere: shards of glass scattered around the room, and then, there is that ..."),
    
   Dialog(sceneImg: "scene_of_crime.png", characterImg: "poliziotto.png", dialogText: "The murder, according to the coroner, took place last night around 11 pm. Not later."),
    
    Dialog(sceneImg: "scene_of_crime.png",characterImg:"poliziotto.png", dialogText: "The body was found lifeless but does not seem to have received any stab wounds, so it would be excluded that the kitchen knife is the murder weapon."),
    
   Dialog(sceneImg: "scene_of_crime.png", characterImg: "poliziotto.png", dialogText: "In addition to this, it‘s still unclear how the killer managed to enter in the room, since the bedroom door and windows were not forced."),
    
    Dialog(sceneImg: "scene_of_crime.png",characterImg:"poliziotto.png", dialogText: "Although it is impossible that he could have entered from there, ‘cause the 'height, and in the garden no stairs were found to access it, or any other clues"),
    
   Dialog(sceneImg: "scene_of_crime.png", characterImg: "poliziotto.png", dialogText: "So, everything would suggest that it was someone from the inside or, in any case, already here in the mansion"),
    
    
    Dialog(sceneImg: "scene_of_crime.png",characterImg:"poliziotto.png", dialogText: "For now the police has no other clue, but I was left to look for it…and then you appear!"),
    
   Dialog(sceneImg: "scene_of_crime.png", characterImg: "poliziotto.png", dialogText: "The only thing to do was to interrogate all the people present in the mansion yesterday ... but I was no able to get much out of it!"),
    
    
    Dialog(sceneImg: "scene_of_crime.png",characterImg:"poliziotto.png", dialogText: "Maybe in this you will be luckier! Or, given the fame that precedes you certainly will be able to understand more"),
    
   Dialog(sceneImg: "scene_of_crime.png", characterImg: "morty.png", dialogText: "(Broford's face seems to be filled with hope)"),
    
    
    Dialog(sceneImg: "scene_of_crime.png",characterImg:"poliziotto.png", dialogText: "You can find them already gathered in the hall, detective, they are just three people: the son, Felix; the wife of the victim, Mina; and Mortimer the butler that you have already met."),
    
   Dialog(sceneImg: "scene_of_crime.png", characterImg: "poliziotto.png", dialogText: "I can't wait to see you at work, detective! Let's not waste more time!"),
    
    Dialog(sceneImg: "scene_of_crime.png", characterImg: "morty.png", dialogText: "Okay so, let's start the interrogations!"),
    
   Dialog(sceneImg: "hallbroford.png", characterImg: "maggiordomo.png", dialogText: "Me, Sir?. Okay, I understand ...For the sake of the master's soul, I'll do what I can to cooperate!"),
    
    Dialog(sceneImg: "hallbroford.png",characterImg:"morty.png", dialogText: "Where you were yesterday, around 11pm , when the crime was committed?"),
    
   Dialog(sceneImg: "hallbroford.png", characterImg: "maggiordomo.png", dialogText: "Sir ... I was obviously in my bed, Sir ... immediately after cleaning the kitchen like every night"),
    
    Dialog(sceneImg: "hallbroford.png",characterImg:"maggiordomo.png", dialogText: "Then I locked it around 10pm and went to my private room to read my beloved Shakespeare before falling asleep."),
    
   Dialog(sceneImg: "hallbroford.png", characterImg: "morty.png", dialogText: "(Probably, if he has the keys to the kitchen he will know something about the knife...)"),
    
    Dialog(sceneImg: "hallbroford.png",characterImg:"morty.png", dialogText: "Did you notice something suspicious in the house last night?"),
    
   Dialog(sceneImg: "hallbroford.png", characterImg: "maggiordomo.png", dialogText: "Actually no, Sir, it was a quiet evening like any other. Although, there was a struggle as far as I learned, but nothing was heard from my room. I found out what happened the next day , when the body was found by me, and I immediately called the police ..."),
    
    Dialog(sceneImg: "hallbroford.png",characterImg:"maggiordomo.png", dialogText: "I’m afraid no one saw me, Sir "),
    Dialog(sceneImg: "hallbroford.png", characterImg: "morty.png", dialogText: "(The butler seems losing all his initial composure...)"),
    
    Dialog(sceneImg: "hallbroford.png",characterImg:"maggiordomo.png", dialogText: "You must believe me, I live in servants' rooms! This are quite distant from the master's private room as a matter of respect. I don't know if you means why… "),
    Dialog(sceneImg: "hallbroford.png", characterImg: "morty.png", dialogText: "(How could he have heard nothing, will it really be so deaf from his room?)"),
    
    Dialog(sceneImg: "hallbroford.png",characterImg:"morty.png", dialogText: " Could you tell me where was the other people in the mansion last night?"),
    
    Dialog(sceneImg: "hallbroford.png", characterImg: "maggiordomo.png", dialogText: "(The butler's face frowned.)"),
    
    Dialog(sceneImg: "hallbroford.png",characterImg:"maggiordomo.png", dialogText: "Well, if I have to, Sir. I caught the lady going into the hall after dinner. I think she went to make her usual glass of whiskey before going to sleep. While I haven't seen the young gentleman, the son’s Master, for all the even..."),
    
    Dialog(sceneImg: "hallbroford.png",characterImg:"maggiordomo.png", dialogText: "He had the keys so I didn't stay awake to wait for him, Sir"),
    
    Dialog(sceneImg: "hallbroford.png", characterImg: "morty.png", dialogText: "(As an alibi it's really too weak, no one seems to have seen anyone that night)"),
    
    Dialog(sceneImg: "hallbroford.png",characterImg:"morty.png", dialogText: "A bloody kitchen knife was found at the crime scene, if you closed it, how is it possible that the knife is in the Whincester's room?"),
    
    Dialog(sceneImg: "hallbroford.png", characterImg: "maggiordomo.png", dialogText: "The butler begins to appear more and more restless"),
    
    Dialog(sceneImg: "hallbroford.png",characterImg:"maggiordomo.png", dialogText: "The master did not show up in the kitchen , so I decided to bring him dinner in his room, Sir, it was around 10 pm."),
    
    Dialog(sceneImg: "hallbroford.png", characterImg: "maggiordomo.png", dialogText: "I've heard him working over old paperwork and didn't want to bother him. I left his dinner outside the door, and obviously the knife was among the cutlery ... "),
    
    Dialog(sceneImg: "hallbroford.png",characterImg:"morty.png", dialogText: "(But didn't he say he went straight to bed that night? Why he skip this information?)"),
    
    Dialog(sceneImg: "flashback1.png", characterImg: "vittima.png", dialogText: "CALM DOWN, NOW!"),
    
    Dialog(sceneImg: "hallbroford.png",characterImg:"morty.png", dialogText: "(What? My leg ...)"),
    
    Dialog(sceneImg: "hallbroford.png",characterImg:"morty.png", dialogText: "(Now, the next one.)"),
    
    Dialog(sceneImg: "hallbroford.png", characterImg: "figlio.png", dialogText: "Tsk, I won't tell you anything"),
    
    Dialog(sceneImg: "hallbroford.png",characterImg:"morty.png", dialogText: "Where you were last night around 11pm?"),
    Dialog(sceneImg: "hallbroford.png", characterImg: "figlio.png", dialogText: "Who, me? Nowhere, Detective."),
    
    Dialog(sceneImg: "hallbroford.png",characterImg:"poliziotto.png", dialogText: "(Suddenly Broford speaks louder.)"),
    Dialog(sceneImg: "hallbroford.png", characterImg: "poliziotto.png", dialogText: "Unfortunately he did the same with me, he does not intend to collaborate in any way. We cannot take him to the police station since we have no information about him."),
    
    Dialog(sceneImg: "hallbroford.png",characterImg:"poliziotto.png", dialogText: "I'm sorry, Sir."),
    Dialog(sceneImg: "hallbroford.png", characterImg: "morty.png", dialogText: "(He looks really sorry about that…)"),
    
    Dialog(sceneImg: "hallbroford.png",characterImg:"morty.png", dialogText: "Did you notice anything suspicious in the house last night?"),
    
    Dialog(sceneImg: "hallbroford.png", characterImg: "figlio.png", dialogText: "Maybe your ugly face, who knows?!"),
    
    Dialog(sceneImg: "hallbroford",characterImg:"morty.png", dialogText: "(What an impertinent...)"),
    Dialog(sceneImg: "hallbroford.png", characterImg: "morty.png", dialogText: "Could you tell me where was the other two people in the mansion  last night?"),
    
    Dialog(sceneImg: "hallbroford.png",characterImg:"figlio.png", dialogText: "No, I don't know anything, and even if I know something I wouldn't go and tell it to a crippled half who smells like a tanker…"),
   
    
    Dialog(sceneImg: "hallbroford.png",characterImg:"poliziotto.png", dialogText: "(Broford's gaze glared at Felix.)"),
    Dialog(sceneImg: "hallbroford.png", characterImg: "morty.png", dialogText: "(Probably the Lieutenant is taking offence in my place…)"),
    
    Dialog(sceneImg: "hallbroford.png",characterImg:"morty.png", dialogText: "It seems that you don't give a damn about your father’s murder, indeed?"),
    
    Dialog(sceneImg: "hallbroford.png",characterImg:"figlio.png", dialogText: "Pff, since he returned to lock himself in the room to study those old unsolved cases, he becomes another person. He did nothing but neglect my mother, his previous wife, and after her disappearance he remarried immediately, as if nothing had happened!"),
    
    Dialog(sceneImg: "hallbroford.png", characterImg: "figlio.png", dialogText: "I hate it! If I could, I would have done it with my own hands, one of those nights…"),
    
    Dialog(sceneImg: "hallbroford.png",characterImg:"figlio.png", dialogText: "(Felix almost whispered)"),
    Dialog(sceneImg: "hallbroford.png", characterImg: "figlio.png", dialogText: "… that damn secret passage was already closed ."),
    
    Dialog(sceneImg: "hallbroford.png",characterImg:"morty.png", dialogText: "(Secret passage?)"),
    Dialog(sceneImg: "flashback3.png", characterImg: "vittima.png", dialogText: "You came from the secret passage, in the end..."),
    
    Dialog(sceneImg: "hallbroford.png",characterImg:"morty.png", dialogText: " (A secret passage! If I remember, it was Winchester who showed it to me years ago ...)"),
    
    Dialog(sceneImg: "hallbroford.png",characterImg:"morty.png", dialogText: "(Now, the wife...) "),
    
    Dialog(sceneImg: "hallbroford.png", characterImg: "moglie.png", dialogText: "You really are an heartless being…"),
    
    Dialog(sceneImg: "hallbroford.png",characterImg:"morty.png", dialogText: "Where you were last night around 11pm, Mrs?"),
    Dialog(sceneImg: "hallbroford.png", characterImg: "moglie.png", dialogText: "Even if I speak… it wouldn't change anything. My husband was murdered"),
    
    Dialog(sceneImg: "hallbroford.png",characterImg:"moglie.png", dialogText: "Anyway Detective, I was in the lobby drinking whiskey, alone. My husband and I had the habit of drinking together after dinner talking to each other..."),
    Dialog(sceneImg: "hallbroford.png", characterImg: "moglie.png", dialogText: "I didn't recognise him anymore. He spent his days locked in his room working and God only knows on what and why! I only know that he has begun to overwork himself until he no longer speaks to me. "),
    
    Dialog(sceneImg: "hallbroford.png",characterImg:"moglie.png", dialogText: "I started thinking that he might be dating other women, so that night I decided to bring him a bottle of whiskey in his room as an excuse to peek at what he was doing ... it was about after 10pm if I'm not mistaken."),
    
    Dialog(sceneImg: "hallbroford.png", characterImg: "moglie.png", dialogText: "I went into the room and found him engrossed in his papers. I tried to talk to him but he didn't even look at me… so, I left the bottle on the table and went to my room."),
    
    Dialog(sceneImg: "hallbroford.png",characterImg:"morty.png", dialogText: "Did you notice anything strange in the house last night?"),
    
    Dialog(sceneImg: "hallbroford.png", characterImg: "moglie.png", dialogText: "Actually, detective, last night was a quieter evening than usual … Maybe it was because the boy had gone out all the evening and I had to dinner alone, I don't know ..."),
    
    Dialog(sceneImg: "hallbroford.png",characterImg:"morty.png", dialogText: "Could you tell me where was the other two people present in the mansion last night?"),
    Dialog(sceneImg: "hallbroford.png", characterImg: "moglie.png", dialogText: "My husband was upstairs in his room as usual, I didn't really see the boy, and the butler was cleaning the kitchen..."),
    
    Dialog(sceneImg: "hallbroford.png",characterImg:"moglie.png", dialogText: "But then I saw him go upstairs. I can't tell you why. I don't know anything else, Detective "),
    
    Dialog(sceneImg: "hallbroford.png", characterImg: "morty.png", dialogText: "Did you mention a bottle if I'm not mistaken, do you know that shards of a glass bottle and signs of a fight were found at the crime scene?"),
    
    Dialog(sceneImg: "hallbroford.png",characterImg:"moglie.png", dialogText: "What are you implying? Why on earth would I have to go up to my husband to hurt him? Maybe you can't understand, but I've always been faithful and I've always loved him."),
    
    Dialog(sceneImg: "hallbroford.png", characterImg: "moglie.png", dialogText: "Probably that bottle fell off the table, or from his hand, what the hell can I know?!"),
    
    Dialog(sceneImg: "hallbroford.png",characterImg:"morty.png", dialogText: "(A broken bottle?)"),
    
    Dialog(sceneImg: "flashback2.png",characterImg:"morty.png", dialogText: "SPEAK, NOW!"),
    
    Dialog(sceneImg: "hallbroford.png",characterImg:"morty.png", dialogText: "(...Now i remember what happened the previous night)"),
    
    Dialog(sceneImg: "flashback3.png",characterImg:"morty.png", dialogText: "Here I am, as you can see…"),
    
    Dialog(sceneImg: "flashback3.png", characterImg: "vittima.png", dialogText: "You came from the secret passage, in the end..."),
    
    Dialog(sceneImg: "flashback3.png",characterImg:"morty.png", dialogText: "What do you have to tell me about my poor wife?"),
    
    Dialog(sceneImg: "flashback3.png",characterImg:"vittima.png", dialogText: "Maybe I know who murdered her years ago ..."),
    
    Dialog(sceneImg: "flashback3.png",characterImg:"vittima.png", dialogText: "So, you can finally go back to your normal life by detaching yourself from the bottle."),
    
    Dialog(sceneImg: "flashback3.png",characterImg:"vittima.png", dialogText: "You have to be able to get over the grief, friend, I'm doing it for you ... you have to take your life back!"),
    
    Dialog(sceneImg: "flashback3.png",characterImg:"morty.png", dialogText: "Tell me who did it and finish it with the lection!"),
    
    Dialog(sceneImg: "flashback3.png",characterImg:"vittima.png", dialogText: "You're drunk even now, aren't you? In this state you would not understand anything I have to say ..."),
    
    Dialog(sceneImg: "flashback3.png",characterImg:"vittima.png", dialogText: "My fault, I’m the dumb here, who wanted to ask you for a hand for this last case ... "),
    Dialog(sceneImg: "flashback2.png",characterImg:"morty.png", dialogText: "(Moriarty takes the whiskey bottle from the table"),
    
    Dialog(sceneImg: "flashback2.png",characterImg:"morty.png", dialogText: "SPEAK, NOW!"),
    
    Dialog(sceneImg: "flashback2.png",characterImg:"vittima.png", dialogText: "Wh-what are you doing?"),
    
    Dialog(sceneImg: "flashback1.png",characterImg:"vittima.png", dialogText: "(Winchester takes the knife to defending himself)"),

    Dialog(sceneImg: "flashback1.png",characterImg:"morty.png", dialogText: "(Argh, he cuts my leg!)"),
    
    Dialog(sceneImg: "flashback4.png",characterImg:"vittima.png", dialogText: "(Falls and hits the shelf of the chimney)"),
    
    Dialog(sceneImg: "flashback4.png",characterImg:"morty.png", dialogText: "(Runs away...)"),
    
    
    Dialog(sceneImg: "hallbroford.png",characterImg:"poliziotto.png", dialogText: "(He's looking at the Detective"),
    
    Dialog(sceneImg: "hallbroford.png", characterImg: "morty.png", dialogText: "Stop, Lieutenant. There is a confession to be revealed ... "),
    
    Dialog(sceneImg: "hallbroford.png",characterImg:"poliziotto.png", dialogText: "Ah, did you manage to extort a confession in the meantime, Detective? You’re really the best of all ..."),
    
    Dialog(sceneImg: "hallbroford.png", characterImg: "morty.png", dialogText: "No, Lieutenant, you don't understand ... "),
    
    Dialog(sceneImg: "hallbroford.png",characterImg:"morty.png", dialogText: "I must confess: it was me!"),
    
    Dialog(sceneImg: "hallbroford.png", characterImg: "poliziotto.png", dialogText: "(Lieutenant Broford's eyes widened"),
    
    Dialog(sceneImg: "hallbroford.png",characterImg:"morty.png", dialogText: "Yesterday, I was completely drunk, but I ‘ve travelled to the mansion to talk to Winchester about an old case… it was around the 11 pm "),
    
    Dialog(sceneImg: "hallbroford.png", characterImg: "morty.png", dialogText: "Winchester was accidentally killed in his room during a fight, he rolls over and hits his head."),
    
    Dialog(sceneImg: "hallbroford.png",characterImg:"morty.png", dialogText: "I flew away from the secret passage, like a dirty rat… "),
    
    Dialog(sceneImg: "hallbroford.png", characterImg: "morty.png", dialogText: "Lieutenant Broford, arrest me and take me to the Central!"),
    
    Dialog(sceneImg: "hallbroford.png",characterImg:"poliziotto.png", dialogText: "De-De-Detective ... What do you mean…? (He seems shocked...)"),
    
    Dialog(sceneImg: "hallbroford.png", characterImg: "morty.png", dialogText: "You know what to do, Lieutenant"),
    
    Dialog(sceneImg: "hallbroford.png",characterImg:"poliziotto.png", dialogText: "Detective Moriarty, I am placing you under arrest for the murder of Winchester ..."),
    
    Dialog(sceneImg: "hallbroford.png", characterImg: "poliziotto.png", dialogText: "Please, follow me..."),
    
    Dialog(sceneImg: "hallbroford.png",characterImg:"morty.png", dialogText: "(In one way or another, this last case has been solved. Forgive me, Winchester) "),
    
    Dialog(sceneImg: "ending.png",characterImg:"vuoto.png", dialogText: ""),
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    


    //TODO: add dialog saying the story has finished
]
  
  // Get current dialog
  public var currentItem: Dialog {
    get { return self.storyList[currentPosition] }
  }
  
  public func nextDialog(isAnimating: (Bool) -> Void) {
    if self.isAnimating {
      isAnimating(true)
      return
    }
    if currentPosition < storyList.capacity - 1 { currentPosition += 1 }
    isAnimating(false)
  
//    print("current position: \(currentPosition)")
//    print("image name: \(currentItem.sceneImg)")
  }
  
  public func animateText(
    animatedText: @escaping (String) -> Void,
    onStartAnimating: @escaping () -> Void,
    onFinishedAnimation: @escaping (String) -> Void) {
    DispatchQueue.global(qos: .userInitiated).async {
      self.isAnimating = true
      var buildingDialog = ""
      onStartAnimating()
      for char in self.currentItem.dialogText {
        buildingDialog += String(char)
        animatedText(buildingDialog)
        usleep(80000)
      }
      onFinishedAnimation(buildingDialog)
      self.isAnimating = false
    }
  }
  
  public init() {}
}
