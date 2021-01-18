.class final Lcom/germainz/crappalinks/CrappaLinks$2;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "CrappaLinks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/germainz/crappalinks/CrappaLinks;->initZygote(Lde/robv/android/xposed/IXposedHookZygoteInit$StartupParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/germainz/crappalinks/CrappaLinks;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected final beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 8
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v6, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v1, v6, v7

    check-cast v1, Landroid/content/Intent;

    .line 80
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "intentAction":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 86
    .local v3, "intentData":Landroid/net/Uri;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "http"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 91
    move-object v5, v3

    .local v5, "unmaskedUrl":Landroid/net/Uri;
    move-object v0, v3

    .line 92
    .local v0, "finalUrl":Landroid/net/Uri;
    invoke-static {v5}, Lcom/germainz/crappalinks/CrappaLinks;->getMaskedUrlMaskHost(Landroid/net/Uri;)Lcom/germainz/crappalinks/MaskHost;

    move-result-object v4

    .line 93
    .local v4, "maskHost":Lcom/germainz/crappalinks/MaskHost;
    :goto_1
    if-eqz v4, :cond_2

    .line 94
    invoke-virtual {v4, v5}, Lcom/germainz/crappalinks/MaskHost;->unmaskLink(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 95
    invoke-virtual {v5, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 96
    move-object v0, v5

    .line 98
    invoke-static {v5}, Lcom/germainz/crappalinks/CrappaLinks;->getMaskedUrlMaskHost(Landroid/net/Uri;)Lcom/germainz/crappalinks/MaskHost;

    move-result-object v4

    goto :goto_1

    .line 104
    :cond_2
    invoke-static {}, Lcom/germainz/crappalinks/CrappaLinks;->access$000()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "crappalinks"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/germainz/crappalinks/RedirectHelper;->isRedirect(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 107
    const-string v6, "com.germainz.crappalinks/com.germainz.crappalinks.Resolver"

    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 114
    :cond_3
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
