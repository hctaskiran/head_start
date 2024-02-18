## INTRO ##
* 🇬🇧 This template includes basic plugins / widgets for future projects. You can see the instructions in different languages below. 
* 🇹🇷 Bu taslak üzerinde yeni bir proje için çeşitli widget ve pluginler mevcuttur. Diğer dillerde yapılmış açıklamaları aşağıda görebilirsiniz.
* 🇷🇺 В этом черновике есть различные виджеты и плагины посвящены каждым новым проектам. Вы можете смотреть описания на других языках.

# How to use? / Nasıl kullanılır? / Как пользоваться? #
* 🇬🇧 There are already pre-made widgets such as theme mode switch or language switch with local database, so no need additinonal installations.
* 🇹🇷 Proje içerisinde halihazırda tema değiştirme veya dil değiştirme gibi yapılmış widgetler mevcut, ek bir şey yükleme gereksinimi yoktur.
* 🇷🇺 Уже есть готовые виджеты, такие как переключатель режима темы или переключатель языка с локальной базой данных, поэтому дополнительная установка не требуется.


## FEATURES / ÖZELLİKLER / ФУНКЦИИ ##
# Main /  / Главное #
🇬🇧
- [x] Folder management, everything is in their own folder,
- [x] Various extensions to make project codes nice and clean 

🇹🇷
- [x] Klasör düzenlemesi,
- [x] Çeşitli extesion kullanılarak kod temizliği ve sürdürülebilirliği,

🇷🇺
- [x] Управление папками, то есть каждому файлу своя папка,
- [x] Чистота кода с использованием различных расширений

# UI #
🇬🇧
- [x] On boarding screen, which is also known as Introduction screen to teach the basics of the app,
- [x] Icons that may come in handy in project, several icon packs with visual examples. (Still keep updating)
- [x] Theme Mode selector using Switch between Light & Dark mode.

🇹🇷
- [x] Uygulamanın temellerini anlatabilmek adına animasyonlu bir giriş ekranı,
- [x] İşe yarayabilecek çeşitli ikonlar ve örnekleri,
- [x] Koyu ve açık tema arası geçiş yapabilme,

🇷🇺
- [x] Вводый экран с целью научить основам приложения,
- [x] Различные иконы с примерами,
- [x] Переключение между Тёмной и Светлой темой,

# Animations / / Анимации #
🇬🇧
- [x] Animated splash screen, so you can add in the beginning of your app,
- [x] Smooth animated transitions between pages (Fade, Slide etc.),

🇹🇷
- [x] Animasyonlu açılış ekranı,
- [x] Sayfalar araşı yumuşak geçiş animasyonları,

🇷🇺
- [x]
- [x]

# Backend #
🇬🇧
- [x] Shared Preferences & Hive as Local Database,
- [x] Easy Localization for multi-language support,
- [x] Dio - Http for API management,

🇹🇷
- [x] Shared Preferences & Hive ile lokal depolama,
- [x] Çoklu dil desteği için Easy Localization,
- [x] Veri ve API yönetimi için Http & Dio,

🇷🇺
- [x] Shared Preferences и Hive для локальной базы,
- [x] Easy Localization для многоязычной поддержки,
- [x] Http и Dio для управления данных и API,

 
## INSTRUCTIONS / / ИНСТРУКЦИИ ##
### 🇬🇧 ###
- In order to use localization properly, if you not going to use pre-created languages, create your language.json file inside `assets/translations` then open {} brackets (brackets can be empty) in order to create localization, then run the code inside `lib/core/script` named `lang_build.sh`. You have to run the script upon update in localization files. (PS: If you can't able to run the script, simply copy the code inside and paste in terminal.)
- In order to use animations between pages, put `Navigator.push(context, AnimationName(page: const YourPage()));` inside the `onTap` method.

### 🇹🇷 ###
- Lokalizasyon paketini kullanabilmek için `assets/translations` klasörüne kendi dil.json dosyanızı oluşturup (şayet bu projede bulunmayan dil ekleyecekseniz) dosyanın içine {} açıp (parantezler boş kalabilir) `lib/core/script` klasöründeki `lang_build.sh` scriptini çalıştırın. Her lokalizayon eklediğinizde veya güncelleyeceğinizde scripti çalıştırmalısınız. (NOT: Eğer kodu çalıştıramıyorsanız, script içindeki kodu kopyalayıp terminale yapıştırın.)
- Sayfalar arası geçiş animasyonu için `Navigator.push(context, AnimationName(page: const YourPage()));` kodunu `onTap` methodu içine yazın.

### 🇷🇺 ###
- Чтобы правильно настроить локализацию, создайте в папку `assets/translations` файл язык.json (если не нужны будут предварительно созданные языки) затем откройте {} (кронштейны могут быть пустыми) потом запустите скрипт, который называется `lang_build.sh` находящейся в папке `lib/core/script`. Вы должны запустить скрипт при каждом обновлении в локализационных файлах. (ПРИМЕЧАНИЕ: Если не удается запустить код, скопируйте его и вставьте в терминал.)
- Чтобы астроить анимации между страничками поставьте `Navigator.push(context, AnimationName(page: const YourPage()));` внутри `onTap`.