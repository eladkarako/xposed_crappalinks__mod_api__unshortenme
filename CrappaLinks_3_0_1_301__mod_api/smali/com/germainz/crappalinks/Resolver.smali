.class public Lcom/germainz/crappalinks/Resolver;
.super Landroid/app/Activity;
.source "Resolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/germainz/crappalinks/Resolver$ResolveUrl;
    }
.end annotation


# instance fields
.field private confirmOpen:Z

.field private resolveAllWhen:Ljava/lang/String;

.field private toastType:Ljava/lang/String;

.field private useLongUrl:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    return-void
.end method

.method static synthetic access$100(Lcom/germainz/crappalinks/Resolver;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/germainz/crappalinks/Resolver;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/germainz/crappalinks/Resolver;->toastType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/germainz/crappalinks/Resolver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/germainz/crappalinks/Resolver;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/germainz/crappalinks/Resolver;->useLongUrl:Z

    return v0
.end method

.method static synthetic access$300(Lcom/germainz/crappalinks/Resolver;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/germainz/crappalinks/Resolver;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/germainz/crappalinks/Resolver;->resolveAllWhen:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/germainz/crappalinks/Resolver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/germainz/crappalinks/Resolver;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/germainz/crappalinks/Resolver;->confirmOpen:Z

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const-string v1, "com.germainz.crappalinks_preferences"

    invoke-virtual {p0, v1, v3}, Lcom/germainz/crappalinks/Resolver;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 43
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "pref_toast_type"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/germainz/crappalinks/Resolver;->toastType:Ljava/lang/String;

    .line 44
    const-string v1, "pref_confirm_open"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/germainz/crappalinks/Resolver;->confirmOpen:Z

    .line 45
    const-string v1, "pref_resolve_all_when"

    const-string v2, "ALWAYS"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/germainz/crappalinks/Resolver;->resolveAllWhen:Ljava/lang/String;

    .line 46
    const-string v1, "pref_use_long_url"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/germainz/crappalinks/Resolver;->useLongUrl:Z

    .line 47
    new-instance v1, Lcom/germainz/crappalinks/Resolver$ResolveUrl;

    invoke-direct {v1, p0, v4}, Lcom/germainz/crappalinks/Resolver$ResolveUrl;-><init>(Lcom/germainz/crappalinks/Resolver;B)V

    new-array v2, v3, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/germainz/crappalinks/Resolver;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/germainz/crappalinks/Resolver$ResolveUrl;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 52
    invoke-virtual {p0}, Lcom/germainz/crappalinks/Resolver;->finish()V

    .line 53
    return-void
.end method
