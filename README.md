# xcode-html-reporter-gem
Gem to instal xcsummary binary to create html reports for UI Test


# Steps 

1.-  Download this project and use in terminal the **'install'** gem command

     gem install xcreporter 
     
     
 2.- Run your UI test using **-resultBundlePath** as parameter where the screen shots are stored
 
     xcodebuild test -workspace YourProject.xcworkspace -scheme YourProjectScheme -resultBundlePath '<path_to_results>' 
     
 3.- Now you can run the command 'xcsummary' that throws and HTML formatted file
 
    xcsummary -in ~/Desktop/build/1_Test/action_TestSummaries.plist -out ~/Develop/eDreams/build/reports/result.html
 
 
# FAQ

1.- Why didn't you use xcpretty? 

Well, because there's is a catch. You must use Xcode command to take screenshots in order to change their name, because xcode create
the screenshot originally as: `Screenshot_0BA16EF6-FE9B-444F-A330-395789A6A5AD`

```swift
      class MainWindowScreenshotTests: XCTestCase {
          func testTakeScreenshotOfMainWindow() {        
              let app = XCUIApplication()
              app.launch()
              let screenshot = app.windows.firstMatch.screenshot()
              let attachment = XCTAttachment(screenshot: screenshot)
              attachment.lifetime = .keepAlways
              add(attachment)
          }
      }
```

So you must change the name of each screen shot to either `TESTSUITE_TESTMETHOD`, or just `TESTMETHOD` in a tear down step.

You can read the thread mention this here: https://github.com/supermarin/xcpretty/issues/251 

But in our case we weren't using any screenshot from `XCUIApplication` and that meant to change all the test (no way José). Then I find out this repo
https://github.com/MacPaw/xcsummary that does exactly what I wanted to, attaching the failed or success screenshots taken always by Xcode and creating a HTML style reporter.

What I did was modifing some styling and creatin a gem to install it easly. 

      
