# HeroAntiCheat

هذه الحزمة هي **هيكل مشروع (Scaffold)** مبني على الملفات والإعدادات التي أرسلتها، وليست بلوقنًا جاهزًا للتشغيل بعد.

## المحتويات
- `pom.xml`: إعداد Maven واعتماد Paper API وSQLite.
- `src/main/resources/paper-plugin.yml`: تعريف البلوقن والأوامر والصلاحيات.
- `src/main/resources/config.yml`: إعدادات الفحوصات والعقوبات.
- `src/main/resources/messages.yml`: رسائل افتراضية.
- مجلدات مصدر Java واختبارات فارغة لتكملة التطوير.

## مهم
ملفات Java الفعلية التي تنفذ الفحوصات وAuto Ban لم تُرفق في النص الذي أرسلته، لذلك لم أضع كودًا وهميًا يدّعي أن البلوقن يعمل. لن ينتج ملف JAR صالح للتشغيل حتى تتم إضافة الكلاس الرئيسي `net.heroclient.anticheat.HeroAntiCheat` وبقية التنفيذ، ثم بناء المشروع واختباره.

## البناء بعد إكمال الكود
1. ثبّت JDK 25 وMaven.
2. افتح الطرفية داخل مجلد المشروع.
3. نفّذ: `mvn clean package`
4. إذا نجح البناء، ستجد ملف JAR داخل `target/`.

## GitHub Actions build

تمت إضافة ملف GitHub Actions في `.github/workflows/build.yml`.
بعد رفع المشروع إلى مستودع GitHub، افتح تبويب **Actions** وانتظر انتهاء مهمة
**Build HeroAntiCheat**. إذا نجح البناء، نزّل ملف `HeroAntiCheat-build` من قسم
Artifacts في صفحة تشغيل المهمة.

يمكنك أيضًا البناء محليًا باستخدام:
- Linux/macOS: `bash build.sh`
- Windows: `build.bat`
- أو مباشرة: `mvn clean package`

**تنبيه:** إعداد GitHub Actions لا يعوّض ملفات Java الناقصة. هذه الحزمة ما زالت
هيكل مشروع أوليًا، ولن ينجح البناء حتى تتم إضافة الكلاس الرئيسي والتنفيذ الفعلي
للفحوصات والعقوبات. لا يوجد ملف JAR جاهز للتشغيل ضمن هذه الحزمة.
