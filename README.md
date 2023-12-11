## INTRO ##
* 🇬🇧 This template includes basic plugins / widgets future projects.
* 🇹🇷 Bu taslak üzerinde yeni bir proje için çeşitli widget ve pluginler mevcuttur.
* 🇷🇺 В этом черновике есть различные виджеты и плагины для каждого нового проекта.

## FEATURES ##
- [x] Folder management, everything is in their own folder,
- [x] Animated splash screen, so you can add in the beginning of your app,
- [x] On boarding screen, which is also known as Introduction screen to teach the basics of the app,
- [x] Smooth animated transitions between pages (Fade, Slide etc.),
- [x] Easy Localization for multi-language support,
- [x] Shared Preferences as Local Database,
- [x] Dio - Http for API management,
- [x] Shimmer, for a cool loading screen. 

## TO DO ##
- [ ] Icons that may come in handy in project, several icon packs with visual examples.

## INSTRUCTIONS ##
### 🇬🇧 ###
- In order to use localization properly, if you not going to use pre-created languages, create your language.json file inside `assets/translations` then open {} brackets (it doesn't matter whether giving input or not) in order to create localization, then run the code inside `lib/core/script` called `lang_build.sh`.
- In order to use the code `select_language.dart` in pratice, simply put `SelectLanguage()` inside the actions of AppBar.
- In order to use animations between pages, put `Navigator.push(context, FadeAnim(page: const YourPage()));` inside the `onTap` method.
- `Shimmer` requires if-else method as it serves as a loading screen.


