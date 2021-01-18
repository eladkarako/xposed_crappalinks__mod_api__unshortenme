.class public Lcom/germainz/crappalinks/CrappaLinks;
.super Ljava/lang/Object;
.source "CrappaLinks.java"

# interfaces
.implements Lde/robv/android/xposed/IXposedHookZygoteInit;


# static fields
.field private static final MASK_HOSTS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/germainz/crappalinks/MaskHost;",
            ">;"
        }
    .end annotation
.end field

.field private static final PREFS:Lde/robv/android/xposed/XSharedPreferences;

.field private static final PREF_UNSHORTEN_URLS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 25
    new-instance v0, Lde/robv/android/xposed/XSharedPreferences;

    const-string v1, "com.germainz.crappalinks"

    invoke-direct {v0, v1}, Lde/robv/android/xposed/XSharedPreferences;-><init>(Ljava/lang/String;)V

    .line 26
    sput-object v0, Lcom/germainz/crappalinks/CrappaLinks;->PREFS:Lde/robv/android/xposed/XSharedPreferences;

    const-string v1, "pref_unshorten_urls"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lde/robv/android/xposed/XSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/germainz/crappalinks/CrappaLinks;->PREF_UNSHORTEN_URLS:Z

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    sput-object v0, Lcom/germainz/crappalinks/CrappaLinks;->MASK_HOSTS:Ljava/util/ArrayList;

    new-instance v1, Lcom/germainz/crappalinks/MaskHost;

    const-string v2, "m.facebook.com"

    const-string v3, "l.php"

    const-string v4, "u"

    invoke-direct {v1, v2, v3, v4}, Lcom/germainz/crappalinks/MaskHost;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lcom/germainz/crappalinks/CrappaLinks;->MASK_HOSTS:Ljava/util/ArrayList;

    new-instance v1, Lcom/germainz/crappalinks/MaskHost;

    const-string v2, "link.tapatalk.com"

    const-string v3, "out"

    invoke-direct {v1, v2, v5, v3}, Lcom/germainz/crappalinks/MaskHost;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lcom/germainz/crappalinks/CrappaLinks;->MASK_HOSTS:Ljava/util/ArrayList;

    new-instance v1, Lcom/germainz/crappalinks/MaskHost;

    const-string v2, "link2.tapatalk.com"

    const-string v3, "url"

    invoke-direct {v1, v2, v5, v3}, Lcom/germainz/crappalinks/MaskHost;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lcom/germainz/crappalinks/CrappaLinks;->MASK_HOSTS:Ljava/util/ArrayList;

    new-instance v1, Lcom/germainz/crappalinks/MaskHost;

    const-string v2, "pt.tapatalk.com"

    const-string v3, "redirect.php"

    const-string v4, "url"

    invoke-direct {v1, v2, v3, v4}, Lcom/germainz/crappalinks/MaskHost;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lcom/germainz/crappalinks/CrappaLinks;->MASK_HOSTS:Ljava/util/ArrayList;

    new-instance v1, Lcom/germainz/crappalinks/MaskHost;

    const-string v2, "google.com"

    const-string v3, "url"

    const-string v4, "q"

    invoke-direct {v1, v2, v3, v4}, Lcom/germainz/crappalinks/MaskHost;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lcom/germainz/crappalinks/CrappaLinks;->MASK_HOSTS:Ljava/util/ArrayList;

    new-instance v1, Lcom/germainz/crappalinks/MaskHost;

    const-string v2, "vk.com"

    const-string v3, "away.php"

    const-string v4, "to"

    invoke-direct {v1, v2, v3, v4}, Lcom/germainz/crappalinks/MaskHost;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lcom/germainz/crappalinks/CrappaLinks;->MASK_HOSTS:Ljava/util/ArrayList;

    new-instance v1, Lcom/germainz/crappalinks/MaskHost;

    const-string v2, "click.linksynergy.com"

    const-string v3, "RD_PARM1"

    invoke-direct {v1, v2, v5, v3}, Lcom/germainz/crappalinks/MaskHost;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcom/germainz/crappalinks/CrappaLinks;->MASK_HOSTS:Ljava/util/ArrayList;

    new-instance v1, Lcom/germainz/crappalinks/MaskHost;

    const-string v2, "youtube.com"

    const-string v3, "attribution_link"

    const-string v4, "u"

    invoke-direct {v1, v2, v3, v4}, Lcom/germainz/crappalinks/MaskHost;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lcom/germainz/crappalinks/CrappaLinks;->MASK_HOSTS:Ljava/util/ArrayList;

    new-instance v1, Lcom/germainz/crappalinks/MaskHost;

    const-string v2, "youtube.com"

    const-string v3, "attribution_link"

    const-string v4, "a"

    invoke-direct {v1, v2, v3, v4}, Lcom/germainz/crappalinks/MaskHost;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/germainz/crappalinks/CrappaLinks;->MASK_HOSTS:Ljava/util/ArrayList;

    new-instance v1, Lcom/germainz/crappalinks/MaskHost;

    const-string v2, "m.scope.am"

    const-string v3, "api"

    const-string v4, "out"

    invoke-direct {v1, v2, v3, v4}, Lcom/germainz/crappalinks/MaskHost;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/germainz/crappalinks/CrappaLinks;->MASK_HOSTS:Ljava/util/ArrayList;

    new-instance v1, Lcom/germainz/crappalinks/MaskHost;

    const-string v2, "redirectingat.com"

    const-string v3, "rewrite.php"

    const-string v4, "url"

    invoke-direct {v1, v2, v3, v4}, Lcom/germainz/crappalinks/MaskHost;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/germainz/crappalinks/CrappaLinks;->MASK_HOSTS:Ljava/util/ArrayList;

    new-instance v1, Lcom/germainz/crappalinks/MaskHost;

    const-string v2, "jdoqocy.com"

    const-string v3, "api"

    invoke-direct {v1, v2, v5, v3}, Lcom/germainz/crappalinks/MaskHost;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/germainz/crappalinks/CrappaLinks;->MASK_HOSTS:Ljava/util/ArrayList;

    new-instance v1, Lcom/germainz/crappalinks/MaskHost;

    const-string v2, "viglink.com"

    const-string v3, "api"

    const-string v4, "out"

    invoke-direct {v1, v2, v3, v4}, Lcom/germainz/crappalinks/MaskHost;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/germainz/crappalinks/CrappaLinks;->MASK_HOSTS:Ljava/util/ArrayList;

    new-instance v1, Lcom/germainz/crappalinks/MaskHost;

    const-string v2, "getpocket.com"

    const-string v3, "redirect"

    const-string v4, "url"

    invoke-direct {v1, v2, v3, v4}, Lcom/germainz/crappalinks/MaskHost;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/germainz/crappalinks/CrappaLinks;->MASK_HOSTS:Ljava/util/ArrayList;

    new-instance v1, Lcom/germainz/crappalinks/MaskHost;

    const-string v2, "news.google.com"

    const-string v3, "news"

    const-string v4, "url"

    invoke-direct {v1, v2, v3, v4}, Lcom/germainz/crappalinks/MaskHost;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/germainz/crappalinks/CrappaLinks;->MASK_HOSTS:Ljava/util/ArrayList;

    new-instance v1, Lcom/germainz/crappalinks/CrappaLinks$1;

    const-string v2, "mandrillapp.com"

    const-string v3, "track"

    const-string v4, "p"

    invoke-direct {v1, v2, v3, v4}, Lcom/germainz/crappalinks/CrappaLinks$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lcom/germainz/crappalinks/CrappaLinks;->PREF_UNSHORTEN_URLS:Z

    return v0
.end method

.method public static getMaskedUrlMaskHost(Landroid/net/Uri;)Lcom/germainz/crappalinks/MaskHost;
    .locals 7
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 132
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "host":Ljava/lang/String;
    sget-object v5, Lcom/germainz/crappalinks/CrappaLinks;->MASK_HOSTS:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/germainz/crappalinks/MaskHost;

    .line 134
    .local v2, "maskHost":Lcom/germainz/crappalinks/MaskHost;
    iget-object v5, v2, Lcom/germainz/crappalinks/MaskHost;->URL:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 135
    iget-object v5, v2, Lcom/germainz/crappalinks/MaskHost;->SEGMENT:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 146
    .end local v2    # "maskHost":Lcom/germainz/crappalinks/MaskHost;
    :goto_0
    return-object v2

    .line 138
    .restart local v2    # "maskHost":Lcom/germainz/crappalinks/MaskHost;
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    .line 139
    .local v3, "pathSegments":Ljava/util/List;
    if-nez v3, :cond_2

    move-object v2, v4

    .line 140
    goto :goto_0

    .line 141
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, v2, Lcom/germainz/crappalinks/MaskHost;->SEGMENT:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .end local v2    # "maskHost":Lcom/germainz/crappalinks/MaskHost;
    .end local v3    # "pathSegments":Ljava/util/List;
    :cond_3
    move-object v2, v4

    .line 146
    goto :goto_0
.end method


# virtual methods
.method public initZygote(Lde/robv/android/xposed/IXposedHookZygoteInit$StartupParam;)V
    .locals 10
    .param p1, "startupParam"    # Lde/robv/android/xposed/IXposedHookZygoteInit$StartupParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 74
    new-instance v0, Lcom/germainz/crappalinks/CrappaLinks$2;

    invoke-direct {v0, p0}, Lcom/germainz/crappalinks/CrappaLinks$2;-><init>(Lcom/germainz/crappalinks/CrappaLinks;)V

    .line 118
    .local v0, "hook":Lde/robv/android/xposed/XC_MethodHook;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 119
    const-string v1, "android.app.ContextImpl"

    const-string v2, "startActivity"

    new-array v3, v8, [Ljava/lang/Object;

    const-class v4, Landroid/content/Intent;

    aput-object v4, v3, v5

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v3, v6

    aput-object v0, v3, v7

    invoke-static {v1, v9, v2, v3}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 120
    const-class v1, Landroid/app/Activity;

    const-string v2, "startActivity"

    new-array v3, v8, [Ljava/lang/Object;

    const-class v4, Landroid/content/Intent;

    aput-object v4, v3, v5

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v3, v6

    aput-object v0, v3, v7

    invoke-static {v1, v2, v3}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 125
    :goto_0
    return-void

    .line 122
    :cond_0
    const-string v1, "android.app.ContextImpl"

    const-string v2, "startActivity"

    new-array v3, v7, [Ljava/lang/Object;

    const-class v4, Landroid/content/Intent;

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    invoke-static {v1, v9, v2, v3}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 123
    const-class v1, Landroid/app/Activity;

    const-string v2, "startActivity"

    new-array v3, v7, [Ljava/lang/Object;

    const-class v4, Landroid/content/Intent;

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    goto :goto_0
.end method
