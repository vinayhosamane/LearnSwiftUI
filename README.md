# LearnSwiftUI
This project is to learn new declaration UI coding paradigm `SwiftUI`

https://swiftui-lab.com/category/swiftui/

https://developer.apple.com/tutorials/swiftui

https://www.hackingwithswift.com/100/swiftui

https://www.appcoda.com/learnswiftui/

# Experimets

![alt-text](https://github.com/vinayhosamane/LearnSwiftUI/blob/main/LearnSwiftUI/LearnSwiftUI/Demo_Content/circle_wave_animation.gif)

![alt-text](https://github.com/vinayhosamane/LearnSwiftUI/blob/main/LearnSwiftUI/LearnSwiftUI/Demo_Content/circle_loading.gif)

![alt-text](https://github.com/vinayhosamane/LearnSwiftUI/blob/main/LearnSwiftUI/LearnSwiftUI/Demo_Content/SAP_Logo.gif)

### Add .gitignore file to avoid checkinng in usercontent data
There are only three lines of code that you should write to terminal in order to achieve updated .gitignore file for Xcode 12+.

First step is setting a global configuration for .gitignore file from Gitignore.io

`git config --global alias.ignore '!gi() { curl -L -s https://www.gitignore.io/api/$@ ;}; gi'`
In the second step go to your project folder then generate the .gitignore file for your project.

`git ignore swift,macos >.gitignore`
Lastly, commit the generated file.

`git commit -m "Add .gitignore file"`
You can open the .gitignore file with Text Editor and uncomment any Folder-File that you don't want to commit into your repo.(For example Pods/)
