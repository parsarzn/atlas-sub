# تمپلیت مناسب مرزبان و مرزنشین 

**atlas sub** 

یک قالب رابط کاربری سبک و زیبا برای پنل مرزبان است. این قالب با HTML  ساخته شده و به‌راحتی قابل ویرایش و استفاده می‌باشد.
<p align="center">
  <a href="https://github.com/trbsami/marzban-template" target="_blank" rel="noopener noreferrer">
    <img src="https://raw.githubusercontent.com/trbsami/atlas-sub/main/photo_2025-06-30_16-28-44.jpg" alt="SubPage screenshots" width="800" height="auto">
  </a>
</p>

  </a>
</p>

## ویژگی‌ها
- ⚡ سبک و سریع
- 🎨 طراحی‌شده با TailwindCSS
- 📱 سازگار با موبایل
- ✏️ کد تمیز و قابل ویرایش

---

# نحوه استفاده

## مرزبان

برای استفاده از  این قالب در پروژه خود، مراحل زیر را دنبال کنید:

1. **فایل رو در سرور خود نصب کنید (نسخه فارسی)**:
2. 
   ```bash
   sudo wget -N -P /var/lib/marzban/templates/subscription/ https://raw.githubusercontent.com/trbsami/atlas-sub/main/src/fa/index.html

1. **فایل رو در سرور خود نصب کنید (نسخه انگلیسی)**:
2. 
   ```bash
   sudo wget -N -P /var/lib/marzban/templates/subscription/ https://raw.githubusercontent.com/trbsami/atlas-sub/main/src/en/index.html   
3. **دستورات زیر را در ترمینال سرور خود اجرا کنید**:
   ```bash
   echo 'CUSTOM_TEMPLATES_DIRECTORY="/var/lib/marzban/templates/"' | sudo tee -a /opt/marzban/.env
   echo 'SUBSCRIPTION_PAGE_TEMPLATE="subscription/index.html"' | sudo tee -a /opt/marzban/.env
4. **ریستارت مرزبان ** :


   ```bash
   sudo marzban restart
   
**چنل ما در تلکرام :**  
trbSami   [![Telegram](https://img.shields.io/badge/Telegram-26A5E4?logo=telegram&logoColor=white)](https://t.me/trbsami)


## حمایت از ما
- **TON:** `UQDj12cOZIrM1Ft11Pc38wVi2fx2mg-L8gZRFmLEb4jBdET7`
- **TRX:** `TYD5azd2aiu1JGaGD7thvT2oRKu376Zga6`
