_ = require("underscore")
global.jQuery = require("jquery")
$ = jQuery
FlipClock = require("flipclock")


class RobCountdown

  date_rob_arrives: (new Date(2015, 8, 4, 12, 0, 0, 0))

  start: ->
    @isHeBack()
    @countdown()
    @robfact()
    $('.another-robfact').click( =>
      @robfact()
    )

  isHeBack: ->
    if Date.now == @date_rob_arrives
      $('.answer').html("<img src='/images/yes.png'/>")
    else
      $('.answer').html("<img src='/images/no.png'/>")

  countdown: ->
    our_date = Date.now()
    time_till_rob = (@date_rob_arrives.getTime() - our_date) / 1000

    clock = $('.flipclock').FlipClock( time_till_rob,
      clockFace: "DailyCounter"
      countdown: true
    )

  robfact: ->
    $('.robfact .fact > p').html(_.sample(@robfacts))

  robfacts:
    [
      "He is coming home",
      "His dog is named Ace",
      "He is a friend to mankind",
      "I once saw him eat a whole live chicken.",
      "He showers in grain alcohol!",
      "He once punched a hole in a cow just so he could see who was comin' up the road.",
      "He's ranked 18th in the AP College Football Poll.",
      "He used to jog around the block with a fridge on his back!",
      "He grew a third arm and kept it in a vault!",
      "He killed Wolfman Jack with a trident.",
      "He framed Roger Rabbit.",
      "He sweats Gatorade.",
      "He makes brooms somewhere in Georgia.",
      "He once inhaled a seagull.",
      "He drives an ice cream truck covered in human skulls.",
      "All the 'Yes' album covers are Andrews family photos.",
      "He uses the Shroud of Turin as a golf towel.",
      "He named the group Sha-Na-Na. They did NOT want to be called that.",
      "Did I ever tell you about the time he taught his son how to drive? He did it by entering him in the Indy 500. The kid wrecked and died. Rob said it would've happened sometime.",
      "His favorite movie is 'One on One' with Robby Benson.",
      "One time I asked Rob to dress up like Santa for a Christmas party I was throwing for my children. Yeah, that's them, that's them. Well Rob shows up as Santa reaches into his bag and says: I've got goodies for you kids. He proceeds to hand out scrap metal and cigarettes to them. Then he takes off his beard and says: There is no Santa 'cause I ate him!",
      "He had a four day heart attack! Yeah, a day for every chamber! When they did the autopsy, they said his heart was like a basketball filled with ricotta cheese!",
      "Did I ever tell you about the timeRob took me out to go get a drink with him? We go off lookin' for a bar and we can't find one. Finally, Rob takes me into a vacant lot and says, 'Here we are!' Well, we sat there for a year and a half. Sure enough, someone constructed a bar around us! Well, the day they opened it, we ordered a shot, drank it and then burnt the place to the ground. Rob yelled over the roar of the flames, 'Always leave things the way you found them!'",
      "So anyways, Rob would put on a white tie and tails and walk his pet cobra through the park on a leash. He named the cobra 'Beverly'. He taught it how to fetch and dial a phone. But then one day, it bit the maid. So with tears in his eyes, Rob had to shoot the maid.",
      "His favorite movie is 'The Boy In The Plastic Bubble' starring John Travolta.",
      "He once ate the bible while water skiing!",
      "Did I ever tell you about the time I had breakfast with Rob? Rob drank a full glass of liquid LSD with his eggs. Then he slept for eight months straight. When he woke up, he rubbed his eyes and said, ‘All in all, I prefer gin!",
      "He once scissor kicked Angela Lansbury!",
      "His family crest is a picture of a barracuda eating Neil Armstrong.",
      "He is a wizard of average height"
    ]

countdown = new RobCountdown
countdown.start()
