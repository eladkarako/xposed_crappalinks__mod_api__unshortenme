I've modified CrappaLinks 2.8_29.apk using APKTool.  

in:  
smali/com/germainz/crappalinks/Resolver$ResolveUrl.smali  

I've changed:  
    const-string v7, "http://api.longurl.org/v2/expand?format=json&title=1&url="
to:  
    const-string v7, "http://unshorten.me/json/"
  

and:  
    const-string v5, "long-url"
to:  
    const-string v5, "resolved_url"

in:  
/AndroidManifest.xml  

I've changed:  
    <application android:icon="@drawable/ic_launcher" android:label="@string/app_name">  
to:  
    <application android:icon="@drawable/ic_launcher" android:label="@string/app_name" android:usesCleartextTraffic="true" android:requestLegacyExternalStorage="true" android:debuggable="false">  
    
in:  
/apktool.yml  

I've changed:  
    apkFileName: xposed - CrappaLinks 2.8_29.apk  
to:  
    apkFileName: xposed - CrappaLinks 3.0.1_301.apk  

I've changed:  
    versionCode: '29'  
to:  
    versionCode: '301'  

I've changed:  
    versionName: '2.8'
to:  
    versionName: '3.0.1'  

=-=-=-=-=-=-=-=-=  

The nature of the changes is to use a working unshortening-API since longurl.org (and 9inchurl.com and many others) are no longer available. https://unshorten.me/api still works, and the above changes the URL and entry within the response JSON (if successfully fetched). I've modified the android manifest in-order to make it ok for using HTTP if possible (not upgrading to HTTPS), in-order to make the APK compatible in newer versions of Android OS, where the connection in not premitted to use HTTP (unless the above attribute is specified), it may be possible unshorten.me forces the use of secure browsing, which in this case usesCleartextTraffic won't matter anyway. legacy storage and no debug are standard enhancing old app to work in new Android OS and not actually require storage if the app does not need it.  
Other than that I've kind-of changed the version to newer one, without changing the original package name, included this README.md in the /META-INF folder (it does not matter), and I'm going to sign this with a signature compatible with old devices. this is my own self-signed certificate, so if you're having existing version you need to manually uninstall it before installing this, two different signatures will not enable you to simply upgrade existing installation. 

=-=-=-=-=-=-=-=-=  

I wanted to make this app work again, with minimal changes,  
although it is possible to add much more stuff, both with removing redirects when the real URL is included in the whole URL, which does not require network access, just some extraction logic, and a true short-link where it is needed to be using an external API for getting the real URL.  
unshorten.me supports unshortening much (MUCH!) more domains than those whom are listed in this app, and additional modification can add a long list of those domains too. but not right now.  
I'm just want to see if the current set-up is working again...  

for the web, you can more information within: https://github.com/eladkarako/chrome_extensions/tree/store/Remove-Redirects-Plus/README.md  
