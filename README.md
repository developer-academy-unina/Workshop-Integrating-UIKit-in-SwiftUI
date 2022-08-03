<div align="center">
  <h3>Workshop</h3>
  <h1>Integrating UIKit in SwiftUI</h1>
  <br />
  <a href="https://github.com/developer-academy-unina/Workshop-Integrating-UIKit-in-SwiftUI/issues/new?assignees=&labels=bug&template=01_BUG_REPORT.md&title=bug%3A+">Report a Bug</a>
  ·
  <a href="https://github.com/developer-academy-unina/Workshop-Integrating-UIKit-in-SwiftUI/discussions">Ask a Question</a>
  
</div>
  <br />
<p align="center">
  <a href="#" alt="Version">
    <img src="https://img.shields.io/static/v1?label=Version&message=2.0.0&color=brightgreen" />
  </a>
  <a href="#" alt="XCode Version">
    <img src="https://img.shields.io/static/v1?label=XCode%20Version&message=14.0&color=brightgreen&logo=xcode" />
  </a>        
  <a href="#" alt="Swift Version">
    <img src="https://img.shields.io/static/v1?label=Swift%20Version&message=5.0&color=brightgreen&logo=swift" />
  </a>
  <a href="#" alt="Framework used">
    <img src="https://img.shields.io/static/v1?label=Framework%20used&message=SwiftUI&color=brightgreen&logo=swift"
            alt="coverage">
  </a>          
</p>

<details open="open">
<summary>Table of Contents</summary>

- [About](#about)
- [Getting Started](#getting-started)
  - [Installation](#installation)
  - [How to](#how-to)
- [Issues and Discussions](#issues-and-discussions)
- [Support](#support)
- [Authors & contributors](#authors--contributors)
- [License](#license)

</details>

---
<br />

## About

One of the biggest arguments for using SwiftUI for developing our Apps is the interoperability with UIKit. Although SwiftUI does a good job of providing many of UIKit’s UIView subclasses, it doesn’t have them all yet at this time.

If you have a problem making something with pure SwiftUI, you can always wrap the UIKit view and put it in the SwiftUI app in just a dozen lines of code. Fortunately, it’s not hard to create custom wrappers for a UIView that you want. It is as simple as creating a struct that conforms to UIViewRepresentable.

You should have some preliminary knowledge about UIKit to be able to go through this activity.

<br />

## Getting Started

### Installation

1. Clone the repo

   ```sh
   git clone https://github.com/developer-academy-unina/Workshop-Integrating-UIKit-in-SwiftUI
   ```

2. Open the ```.xcodeproj``` file

### How to

This project is at the core of the activity presented and shows how to can create a layered and customized sheet experience in SwiftUI using UIKit component, building a non-modal experience using a UISheetPresentationController (a UIPresentationController subclass).

<br />

## Issues and Discussions

You've found a bug in the source code, a mistake in the documentation or maybe you'd like a new feature? Take a look at [GitHub Discussions](https://github.com/developer-academy-unina/Workshop-Integrating-UIKit-in-SwiftUI/discussions) to see if it's already being discussed. You can help us by [submitting an issue on GitHub](https://github.com/developer-academy-unina/Workshop-Integrating-UIKit-in-SwiftUI/issues). Before you create an issue, make sure to search the issue archive -- your issue may have already been addressed!

Please try to create bug reports that are:

- _Reproducible._ Include steps to reproduce the problem.
- _Specific._ Include as much detail as possible: which version, what environment, etc.
- _Unique._ Do not duplicate existing opened issues.
- _Scoped to a Single Bug._ One bug per report.

<br />

## Support

Reach out to the maintainer at one of the following places:

- [GitHub Discussions](https://github.com/developer-academy-unina/Workshop-Integrating-UIKit-in-SwiftUI/discussions)
- [GitHub issues](https://github.com/developer-academy-unina/Workshop-Integrating-UIKit-in-SwiftUI/issues/new?assignees=&labels=question&template=04_SUPPORT_QUESTION.md&title=support%3A+)
- Contact a Mentor for any other help

<br />

## Authors & contributors

The original setup of this repository is by [Giovanni Monaco](https://github.com/giovannimonaco).

For a full list of all authors and contributors, see [the contributors page](https://github.com/developer-academy-unina/Workshop-Integrating-UIKit-in-SwiftUI/contributors).

<br />

## License

This project is licensed under the **MIT License**.

See [LICENSE](LICENSE) for more information.