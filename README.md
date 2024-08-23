<h2 dir="rtl">تی‌آی سی‌ام‌دی</h2>
<img src="https://code.midline.ir/ti-cmd/assets/ScreenShot.png" width="100%" />
<div dir="rtl">
<h3 dir="rtl">تی‌آی سی‌ام‌دی چیست؟</h3>
شاید فکر کنید بالاترین دسترسی را در ویندوز حساب کاربری ادمیناستریتور (Administrator) یا حتی سیستم (System) دارد اما سخت در اشتباهید!
<br/>
بالاترین دسترسی را در سلسله مراتب دسترسی ویندوز سرویس تراستد اینستالر (NT SERVICE\TrustedInstaller) دارد که در واقع وظیفه ی نصب، بروزرسانی و مراقبت از هسته ی سیستم عامل، برنامه های اصلی و فایل های حیاتی سیستم عامل را بر عهده دارد.
<br/><br/>
تی‌آی سی‌ام‌دی برنامه ای است که با استفاده از آن میتوانید یک سی‌ام‌دی را به عنوان تراستد اینستالر باز کنید و از دسترسی های نامحدود آن به تمامی فایل های سیستم استفاده کنید.
<br/><br/>
<b>
⚠️ دقت کنید که میزان دسترسی های تراستد اینستالر آنقدر زیاد است که میتواند فایل های پوشه ی Windows را نیز حذف کند و در صورت استفاده ی نابجا از سی‌ام‌دی باز شده ممکن است خسارت جبران ناپذیری به بار بیاورد! ⚠️
</b>
<br/><br/>
<h3 dir="rtl">چطور تبدیل به تراستد اینستالر تبدیل شویم؟</h3>
از انجایی که تراستد اینستالر یک حساب یا گروه کاربری واقعی نیست و یک سرویس ویندوز میباشد، امکان لاگین کردن در آن وجود ندارد ولی چون این سرویس پروسه ای را اجرا میکند که با ان امکان انجام کار های مختلفی را دارد، ما میتوانیم توکن این پروسه و سرویس را بدست اورده و با استفاده از آن یک سی‌ام‌دی باز کنیم که دستورات آن از طریق سرویس تراستد اینستالر اجرا میشود و اینگونه میتوانیم تبدیل به تراستد اینستالر شویم!
<br/><br/>
لازمه ی انجام این پروسه پیش نیازها و دانش قبلی میباشد و همچنین مقداری زمانگیر است، انجام هرباره ی تمام مراحل برای بازکردن یک سی‌ام‌دی کار عاقلانه ای نیست، بنابراین ما برای شما برنامه ی تی‌آی سی‌ام‌دی را اماده کردیم تا با یک کلیک تمام عملیات لازم را برای شما انجام دهد.
<br/><br/>
برای نصب و استفاده از این برنامه کافیست آخرین نسخه ی ی‌آی سی‌ام‌دی را از <a href="https://code.midline.ir/ti-cmd/releases/latest/ti-cmd.exe">این لینک</a> دانلود کرده و بعد آن را باز کنید، از شما خواسته میشود که دسترسی ادمین را به برنامه بدهید و بعد باقی مراحل بصورت خودکار انجام میشود.
<br/><br/>
در صورت موفقیت آمیز بودن عملیات یک سی‌ام‌دی باز میشود، برای مطمئن شدن از اینکه ترمینال دسترسی تراستد اینستالر را دارد یا نه کافیست دستور زیر را وارد کنید و باید با تصویر بالای صفحه روبرو شوید :
</div>

```
whoami /groups
```
<div dir="rtl">
<br/>
<h3 dir="rtl">چگونه کد منبع را ویرایش کنیم؟</h3>
این برنامه در واقع یک اسکریپت پاورشل است که برای راحتی کار با کمک ماژول ps2exe تبدیل به یک فایل اجرایی شده است.
<br/>
کد منبع آخرین نسخه همیشه از طریق <a href="https://code.midline.ir/ti-cmd/releases/latest/ti-cmd.ps1">این لینک</a> در دسترس است.
<br/>
بعد از دانلود فایل پاورشل، میتوانید با کمک برنامه ی Windows PowerShell ISE که بصورت پیشفرض روی ویندوز نصب است به ویرایش آن بپردازید.
<br/><br/>
در صورت تمایل به تبدیل فایل ویرایش شده ی خود به فایل اجرایی، میتوانید ابتدا یک پاورشل را با دسترسی ادمین باز کرده و سپس ماژول ps2exe را از با اجرای دستور زیر در آن نصب کنید :
</div>

```powershell
Install-Module ps2exe
```
<div dir="rtl">
<br/>
بعد از نصب ماژول، برای باز کردن رابط کاربری ان دستور زیر را در پاورشل وارد کنید :
</div>

```powershell
Win-PS2EXE
```
