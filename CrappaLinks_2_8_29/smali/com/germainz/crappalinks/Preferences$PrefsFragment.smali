.class public final Lcom/germainz/crappalinks/Preferences$PrefsFragment;
.super Landroid/preference/PreferenceFragment;
.source "Preferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/germainz/crappalinks/Preferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrefsFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 25
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/germainz/crappalinks/Preferences$PrefsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceManager;->setSharedPreferencesMode(I)V

    .line 27
    const/high16 v3, 0x7f030000

    invoke-virtual {p0, v3}, Lcom/germainz/crappalinks/Preferences$PrefsFragment;->addPreferencesFromResource(I)V

    .line 29
    const-string v3, "pref_show_app_icon"

    invoke-virtual {p0, v3}, Lcom/germainz/crappalinks/Preferences$PrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 30
    .local v0, "prefShowAppIcon":Landroid/preference/Preference;
    new-instance v3, Lcom/germainz/crappalinks/Preferences$PrefsFragment$1;

    invoke-direct {v3, p0}, Lcom/germainz/crappalinks/Preferences$PrefsFragment$1;-><init>(Lcom/germainz/crappalinks/Preferences$PrefsFragment;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 43
    const-string v3, "pref_use_long_url"

    invoke-virtual {p0, v3}, Lcom/germainz/crappalinks/Preferences$PrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 44
    .local v1, "prefUseLongUrl":Landroid/preference/CheckBoxPreference;
    const-string v3, "pref_resolve_all_when"

    invoke-virtual {p0, v3}, Lcom/germainz/crappalinks/Preferences$PrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 45
    new-instance v2, Lcom/germainz/crappalinks/Preferences$PrefsFragment$2;

    invoke-direct {v2, p0}, Lcom/germainz/crappalinks/Preferences$PrefsFragment$2;-><init>(Lcom/germainz/crappalinks/Preferences$PrefsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 52
    return-void

    .line 44
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
