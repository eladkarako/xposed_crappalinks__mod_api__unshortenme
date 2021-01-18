# xposed_crappalinks__mod_api__unshortenme
CrappaLinks modification using APKTool, and smali editing (not building from source) that changes the old 'http://api.longurl.org/v2/expand?format=json&amp;title=1&amp;url=' to 'http://unshorten.me/json/', along with minimal version change and allowing HTTP connection on newer Android OS. Included decompiled "original source" in one branch and modified source in another.

get the apk (inside a zip, for safer download) from here:  
https://github.com/eladkarako/xposed_crappalinks__mod_api__unshortenme/tree/original_source  
for the original one,  
or here:  
https://github.com/eladkarako/xposed_crappalinks__mod_api__unshortenme/tree/modified_source  
for the modified one.  

I'm not compiling from source to save time, so I've included only the smali I was working on,  
if you wish to make it an official "fork" you may head over to the developer's repository https://github.com/GermainZ/CrappaLinks and fork the source, modify it according to the https://raw.githubusercontent.com/eladkarako/xposed_crappalinks__mod_api__unshortenme/modified_source/README.md  
and compile from source (don't forget to sign and align the apk if you use jarsigner or align then sign if you use apksigner directly using from the android studio ide). 

for donation please head over and contribute to the original creator and developer page not to me (I accept no donations and they will be returned to the sender).
I provide no support for the mod, and it hasn't been tested, even a little bit.

this is a conceptual fix.
