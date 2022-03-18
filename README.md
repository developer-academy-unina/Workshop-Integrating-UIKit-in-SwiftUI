# Workshop:  Integrating UIKit in SwiftUI

One of the biggest arguments for using SwiftUI for developing our Apps is the interoperability with UIKit. Although SwiftUI does a good job of providing many of UIKit’s UIView subclasses, it doesn’t have them all yet at this time.

If you have a problem making something with pure SwiftUI, you can always wrap the UIKit view and put it in the SwiftUI app in just a dozen lines of code. Fortunately, it’s not hard to create custom wrappers for a UIView that you want. It is as simple as creating a struct that conforms to UIViewRepresentable.

You should have some preliminary knowledge about UIKit to be able to go through this activity.

### non-modal [v: 1.0]
This project is at the core of the activity presented and shows how to can create a layered and customized sheet experience in SwiftUI using UIKit component, building a non-modal experience using a UISheetPresentationController (a UIPresentationController subclass).

<p align="center">
    <a href="#" alt="Version">
        <img src="https://img.shields.io/static/v1?label=Version&message=1.0.0&color=brightgreen" /></a>
    <a href="#" alt="XCode Version">
        <img src="https://img.shields.io/static/v1?label=XCode%20Version&message=13.0&color=brightgreen&logo=xcode" /></a>
    <a href="#" alt="Swift Version">
        <img src="https://img.shields.io/static/v1?label=Swift%20Version&message=5.5&color=brightgreen&logo=swift" /></a>
    <a href="#" alt="Depenencies">
        <img src="https://img.shields.io/static/v1?label=Depenencies&message=none&color=brightgreen" /></a>
    <a href="#" alt="Designed for">
        <img src="https://img.shields.io/static/v1?label=Designed%20for&message=iPhone%2013&color=brightgreen" alt="build status"></a>
    <a href="#" alt="Built for">
        <img src="https://img.shields.io/static/v1?label=Built%20for&message=iOS%2015.0&color=brightgreen"
            alt="service-test status"></a>
    <a href="#" alt="Frameworks used">
        <img src="https://img.shields.io/static/v1?label=Frameworks%20used&message=SwiftUI, UIKit&color=brightgreen&logo=swift"
            alt="coverage"></a>
</p>

**Editors**: 

* [Giovanni Monaco](https://github.com/giovannimonaco)


