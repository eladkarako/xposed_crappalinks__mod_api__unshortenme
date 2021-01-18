.class final Lcom/germainz/crappalinks/Preferences$PrefsFragment$2;
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
    .line 45
    iput-object p1, p0, Lcom/germainz/crappalinks/Preferences$PrefsFragment$2;->this$0:Lcom/germainz/crappalinks/Preferences$PrefsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 48
    iget-object v0, p0, Lcom/germainz/crappalinks/Preferences$PrefsFragment$2;->this$0:Lcom/germainz/crappalinks/Preferences$PrefsFragment;

    const-string v2, "pref_resolve_all_when"

    invoke-virtual {v0, v2}, Lcom/germainz/crappalinks/Preferences$PrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 49
    return v1

    .line 48
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
