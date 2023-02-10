# Drawer organizer for Mach 3 blade holders

## Motivation

* When you buy these at the big-box store, you wind up with 4 plastic containers, each with 5 blades
* They don't click together, they just slide around in your drawer
* I thought it would be nicer if I could 3D print a box
* I know a bit about OpenSCAD
* I'm learning about ChatGPT
* Let's experiment with ChatGPT's 3D modelling abilities, to see if it can generate a workable model.

## ChatGPT Generated: 

* ![ChatGPT_Box](https://user-images.githubusercontent.com/3227828/217967203-923cb91d-e59a-4a91-b7d3-76546bf98dcc.png)

## Analysis:

* OK, so it renders in OpenSCAD...
* And, I really appreciate the the "height", "width", and "depth" variables right at the top of the design, so I can resize it to fit
* Eyeballing the image above, that little lip that looks like it might take a lid is gravvy!
* And, the dimensions seem plausible!
* And the comments are nice!
* But when you dig into it
  * Actually, if I enter the x/y/z measurements of the box's contents as height/width/depth variable, the model messes up
  * And you discover height/width/depth are the *outside* dimensions of the box
  * And the interior lip disappears, because it's dimensions aren't calculated - they're hardcoded
  * And, that interior lip isn't something I asked for, and I don't quite want it
  * This model is a mess!  It's not Parametric!
