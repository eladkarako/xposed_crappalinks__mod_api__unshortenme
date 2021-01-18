.class final Lcom/germainz/crappalinks/Preferences$PrefsFragment$1;
.super Ljava/lang/Object;
.source "Preferences.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/germainz/crappalinks/Preferences$PrefsFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/germainz/crappalinks/Preferences$PrefsFragment;


# direct methods
.method constructor <init>(Lcom/germainz/crappalinks/Preferences$PrefsFragment;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/germainz/crappalinks/Preferences$PrefsFragment$1;->this$0:Lcom/germainz/crappalinks/Preferences$PrefsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 33
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 35
    .local v2, "state":I
    :goto_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/germainz/crappalinks/Preferences$PrefsFragment$1;->this$0:Lcom/germainz/crappalinks/Preferences$PrefsFragment;

    invoke-virtual {v4}, Lcom/germainz/crappalinks/Preferences$PrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "com.germainz.crappalinks.Preferences-Alias"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    .local v0, "alias":Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/germainz/crappalinks/Preferences$PrefsFragment$1;->this$0:Lcom/germainz/crappalinks/Preferences$PrefsFragment;

    invoke-virtual {v4}, Lcom/germainz/crappalinks/Preferences$PrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 38
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 39
    return v3

    .line 33
    .end local v0    # "alias":Landroid/content/ComponentName;
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v2    # "state":I
    :cond_0
    const/4 v2, 0x2

    goto :goto_0
.end method
