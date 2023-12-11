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
- [ ] BLoC state management.
 
## INSTRUCTIONS ##
### 🇬🇧 ###
- In order to use localization properly, if you not going to use pre-created languages, create your language.json file inside `assets/translations` then open {} brackets (brackets can be empty) in order to create localization, then run the code inside `lib/core/script` named `lang_build.sh`. You have to run the script upon update in localization files.
- In order to use the code `select_language.dart` in pratice, simply put `SelectLanguage()` inside the actions of AppBar.
- In order to use animations between pages, put `Navigator.push(context, AnimationName(page: const YourPage()));` inside the `onTap` method.
- `Shimmer` requires if-else method as it serves as a loading screen.
### 🇹🇷 ###
- Lokalizasyon paketini kullanabilmek için `assets/translations` klasörüne kendi dil.json dosyanızı oluşturup (şayet bu projede bulunmayan dil ekleyecekseniz) dosyanın içine {} açıp (parantez içinin dolu veya boş olması önemli değil) `lib/core/script` klasöründeki `lang_build.sh` scriptini çalıştırın. Her lokalizayon eklediğinizde veya güncelleyeceğinizde scripti çalıştırmalısınız.
- `select_language.dart` kodunu pratiğe dökmek için AppBar içindeki actions'a `SelectLanguage()` ismini yazın.
- Sayfalar arası geçiş animasyonu için `Navigator.push(context, AnimationName(page: const YourPage()));` kodunu `onTap` methodu içine yazın.
### 🇷🇺 ###
- Чтобы правильно настроить локализацию, создайте в папку `assets/translations` файл язык.json (если не нужны будут предварительно созданные языки) затем откройте {} (кронштейны могут быть пустыми) потом запустите скрипт, который называется `lang_build.sh` находящейся в папке `lib/core/script`. Вы должны запустить скрипт при каждом обновлении в локализационных файлах.
- Чтобы использовать код `select ranguage.dart` на практике, просто поставьте `SelectLanguage()` в actions под AppBar.
- Чтобы астроить анимации между страничками поставьте `Navigator.push(context, AnimationName(page: const YourPage()));` внутри `onTap`.
- `Shimmer` требует метода if-else, поскольку он служит экраном загрузки.
