# Tweet Button Prototype for Twitter on Android
# By: Jason Valenti
# If you have any questions tweet me: @jval3nti


# Setting up my images as layers
timeline = new Layer 
	x:0, y:0, width:1080, height:1919, image:"images/TwitterTweet_2.png"
timeline.visible = true
		
tweetBR = new Layer 
	x:0, y:0, width:1080, height:1920, image:"images/tweetBR.png"
tweetBR.visible = false

#1040 is where the keyboard shoud go to
keyboard = new Layer 
	x:0, y:1940, width:1080, height:885, image:"images/keyboard.png"


cameraBar = new Layer 
	x:0, y:1940, width:1080, height:168, image:"images/camBar.png"


tweetButton = new Layer 
	x:790, y:1655, width:191, height:191, image:"images/NewTweet.png"
	
bird = new Layer 
	x:815, y:1700, width:130, height:100, image:"images/bird2.png"
bird.visible = true

back = new Layer
	x:1, y:30, width:250, height:250, opacity:0, scale:0.5, borderRadius: 75, visible:true, backgroundColor:"#CCC"


#animations
keyboard.states.animationOptions = ({
	time: .190,
	curve: "ease-in-out"
})

cameraBar.states.animationOptions = ({
	time: .190,
	curve: "ease-in-out"
})


#The code that runs when you click on the Tweet Button (the blue circle with the bird in it)
tweetButton.on Events.Click, ->
	timeline.states.switch("detail")
	tweetBR.states.switch("detail")
	bird.states.switch("detail")
	tweetButton.states.switch("detail")
	cameraBar.states.switch("detail")
	keyboard.states.switch("detail")
	
# The code that runs when you click on the back button
back.on Events.Click, ->
	keyboard.states.switch("hide")
	cameraBar.states.switch("hide")
	tweetBR.states.switch("hide")
	timeline.states.switch("hide")
	tweetButton.states.switch("hide")
	bird.states.switch("hide")
	
	
#States
timeline.states.add (detail: {visible: false})
tweetBR.states.add	(detail: {visible: true})
tweetButton.states.add (detail: {visible: false})
bird.states.add (detail: {visible: false})
keyboard.states.add (detail:  {y:1040})
cameraBar.states.add (detail: {y:850})
keyboard.states.add (hide:  {y:1940})
cameraBar.states.add (hide: {y:1940})
tweetBR.states.add (hide: {visible: false})
timeline.states.add (hide: {visible: true})
tweetButton.states.add (hide: {visible: true})
bird.states.add (hide: {visible: true})