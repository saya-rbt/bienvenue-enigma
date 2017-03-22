# bienvenue-enigma
Some stupid script someone put on my session at uni

## Context
So I was at university and I made the dumb mistake of letting my session open on one of the university's computers. A guy in bachelor set those two scripts at the initialization of the session, so when I logged back in a few hours later, the scripts started and everyone in class (including myself) was laughing his ass off.

## Scripts content
### bienvenue.vbs
This one gets the current username of the user and repeats "Bienvenue [USERNAME]" with the audio assistant. It repeats it endlessly and also sets the volume to maximum.

(Note: "bienvenue" means "welcome" in french, feel free to change it)

### enigma.vbs
This one is even better. Here's a full list of what it does:
* Swaps the mouse buttons (left and right)
* Opens IE, goes to a YouTube video, sets it in full screen, plays automatically and removes the controls
* Endlessly restarts Windows Explorer so you can't open the Start menu or anything

Pure evil genius.

## Installation
Put both files in C:\Users\\[USERNAME]\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup

Replace [USERNAME] with your username, of course.

## How to stop
There are several ways to stop it:
* Press F4
* Open the Task Manager with CTRL + SHIFT + ESC, search for Microsoft Windows Based Script Host (it has a pink and purple icon), and stop it
* Destroy your computer (not recommended)

## How to uninstall
By default it will start every boot of Windows. You need to remove it.
* In the Task Manager, click on the "Startup" tab 
* Find enigma.vbs and bienvenue.vbs
* Right-click on it
* You can either disable it or go to the folder it is stored and remove it from here

You're welcome.

## License
This wasn't provided under any licence (the only thing it was provided with was a cool welcome message and an alien video), so I guess I can redistribute it.

Licensed under WTFPL.
