# HertzHackathoniOSKioskApp
A skeleton project for Hertz Hackathon contestants.

Color Palette 
	Hertz Yellow - #FFCC00	R(255) G(204) B(0)
	Primary Grey - #808285	R(138) G(130) B(133)
	Secondary Grey - #58595b R(88) G(89) B(91)
	
Make sure to checkout the assets in this xcode project and on your USB drive!

To get the official Hertz font ask a mentor!

To interacte with the vehicles, here is the structure of the endpoints -
	Lock - https://twpiew60u1.execute-api.us-east-1.amazonaws.com/dev/{car}/lock
	Unlock - https://twpiew60u1.execute-api.us-east-1.amazonaws.com/dev/{car}/unlock
	The vehicles are {camaro, impala, canyon, xts, encore}
The code for an HTTP request in swift looks like this - 
	let url = URL(string: https://twpiew60u1.execute-api.us-east-1.amazonaws.com/dev/{car}/{command})!
	let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
    		guard let data = data else { return }
    		print(String(data: data, encoding: .utf8)!)
	}
	task.resume()
Again, look in the assests for helpful imagery!


Helpful Links
	•	For looking up errors from Xcode
			https://osstatus.com
	•	To pass data between view controllers
			https://learnappmaking.com/pass-data-between-view-controllers-swift-how-to/
	•	How to use tableviewcontrollers (used for the list of vehicles)
			https://www.ductran.co/tableview-videos
	•	How to use UIScrollViews
			https://www.appcoda.com/uiscrollview-introduction/
	•	Creating 1x,2x,3x images and app icons
			https://appicon.co/#image-sets
