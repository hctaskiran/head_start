## INTRO ##
* 🇬🇧 This template includes basic plugins / widgets for future projects. 
* 🇹🇷 Bu taslak üzerinde yeni bir proje için çeşitli widget ve pluginler mevcuttur.
* 🇷🇺 В этом черновике есть различные виджеты и плагины посвящены каждым новым проектам.

## FEATURES ##
# Main #
- [x] Folder management, everything is in their own folder,
- [x] Various extensions to make project codes nice and clean 

# UI Addons #
- [x] On boarding screen, which is also known as Introduction screen to teach the basics of the app,
- [x] Animated splash screen, so you can add in the beginning of your app,
- [x] Smooth animated transitions between pages (Fade, Slide etc.),
- [x] Shimmer, for a cool loading screen. 
- [x] Icons that may come in handy in project, several icon packs with visual examples. (Still keep updating)

# Backend Addons #
- [x] Shared Preferences as Local Database,
- [x] Easy Localization for multi-language support,
- [x] Dio - Http for API management,
- [x] Push-Notification in order to send notifications,
 
## INSTRUCTIONS ##
### 🇬🇧 ###
- In order to use localization properly, if you not going to use pre-created languages, create your language.json file inside `assets/translations` then open {} brackets (brackets can be empty) in order to create localization, then run the code inside `lib/core/script` named `lang_build.sh`. You have to run the script upon update in localization files. (PS: If you can't able to run the script, simply copy the code inside and paste in terminal.)
- In order to use the code `select_language.dart` in pratice, simply put `SelectLanguage()` inside the actions of AppBar.
- In order to use animations between pages, put `Navigator.push(context, AnimationName(page: const YourPage()));` inside the `onTap` method.
- `Shimmer` requires if-else method as it serves as a loading screen.
- In order to use Notifications;
    iOS: Nothing special to do, AppDelegate edited as required. Simply put the code inside the `onTap`: 
        `NotificationService().showNotification(id: id_here, title: 'TITLE_HERE', body: 'NOTIFICATION_MESSAGE_HERE');`.
    Android: You will have to put an logo name for notification pop-up inside the `notification_service.dart` file. Don't forget to put the logo inside `android/app/src/main/res/drawable` as png.
### 🇹🇷 ###
- Lokalizasyon paketini kullanabilmek için `assets/translations` klasörüne kendi dil.json dosyanızı oluşturup (şayet bu projede bulunmayan dil ekleyecekseniz) dosyanın içine {} açıp (parantezler boş kalabilir) `lib/core/script` klasöründeki `lang_build.sh` scriptini çalıştırın. Her lokalizayon eklediğinizde veya güncelleyeceğinizde scripti çalıştırmalısınız. (NOT: Eğer kodu çalıştıramıyorsanız, script içindeki kodu kopyalayıp terminale yapıştırın.)
- `select_language.dart` kodunu pratiğe dökmek için AppBar içindeki actions'a `SelectLanguage()` ismini yazın.
- Sayfalar arası geçiş animasyonu için `Navigator.push(context, AnimationName(page: const YourPage()));` kodunu `onTap` methodu içine yazın.
<<<<<<< HEAD
- Bildirimleri kullanabilmek için;
    iOS: Değişiklik yapılmasına gerek yok. AppDelegate gerektiği şekilde düzenlendi. Sadece `NotificationService().showNotification(id: 2, title: 'fiscis', body: 'This is a notification');` kodunu `onTap` metoduna girin.
    Android: `notification_service.dart` dosyasında bildirim pop-up'ına logo adı vermeniz gerek. `android/app/src/main/res/drawable` klasörüne logoyu png formatında ekleyin.
- `Shimmer` yükleme ekranı görevi gördüğü için if-else metodu ile kullanmayı gerektirir.

### 🇷🇺 ###
- Чтобы правильно настроить локализацию, создайте в папку `assets/translations` файл язык.json (если не нужны будут предварительно созданные языки) затем откройте {} (кронштейны могут быть пустыми) потом запустите скрипт, который называется `lang_build.sh` находящейся в папке `lib/core/script`. Вы должны запустить скрипт при каждом обновлении в локализационных файлах. (ПРИМЕЧАНИЕ: Если не удается запустить код, скопируйте его и вставьте в терминал.)
- Чтобы использовать код `select_language.dart` на практике, просто поставьте `SelectLanguage()` в actions под AppBar.
- Чтобы астроить анимации между страничками поставьте `Navigator.push(context, AnimationName(page: const YourPage()));` внутри `onTap`.
- `Shimmer` требует метода if-else, поскольку он служит экраном загрузки.
- Для получения уведомлений;
    iOS: Не нужны изменения. AppDelegate уже отредактирован как следует. Поставьте `NotificationService().showNotification(id: 2, title: 'fiscis', body: 'This is a notification');` внутри `onTap`.
    Андроид: В папке `notification_service.dart` вам придется поместить имя логотипа для уведомления всплывающего окна. Не забудьте загрузить логотип в `android/app/src/main/res/drawable` как png.
