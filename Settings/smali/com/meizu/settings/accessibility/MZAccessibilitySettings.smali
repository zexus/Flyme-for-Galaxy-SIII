.class public Lcom/meizu/settings/accessibility/MZAccessibilitySettings;
.super Ljava/lang/Object;
.source "MZAccessibilitySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mAccessibilityFragment:Landroid/app/Fragment;

.field private mAdditionalSettingsIntent:Landroid/content/Intent;

.field private mAdditionalSettingsPreference:Landroid/preference/Preference;

.field private mAutoHideSmartDialog:Landroid/content/DialogInterface;

.field private mAutoHideSmartbarSwitch:Lcom/meizu/common/preference/SwitchPreference;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDataCollectionDialog:Landroid/content/DialogInterface;

.field private mDataCollectionSwitch:Lcom/meizu/common/preference/SwitchPreference;

.field private mDriveMode:Landroid/preference/Preference;

.field private mFullScreenAccessPreference:Lcom/meizu/common/preference/SwitchPreference;

.field private mGuestureWakeupPreference:Lcom/meizu/settings/MzWithHelpPreference;

.field private mHomeKeyTouchPreference:Lcom/meizu/common/preference/ListPreference;

.field private mHomeLightSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

.field private mHomeLongPress:Lcom/meizu/common/preference/ListPreference;

.field private mLockScreenSlideRight:Landroid/preference/Preference;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mResources:Landroid/content/res/Resources;

.field private mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private mSettingsObserver:Landroid/database/ContentObserver;

.field private mSmartVoiceWakeupPreference:Lcom/meizu/settings/MzWithHelpPreference;

.field private mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

.field private mToggleCurrentNetworkSpeedPreference:Lcom/meizu/common/preference/SwitchPreference;

.field private mToggleStatusBarTintPreference:Lcom/meizu/common/preference/SwitchPreference;

.field private mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;Landroid/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "f"    # Landroid/app/Fragment;
    .param p2, "preferenceScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 121
    new-instance v0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings$1;-><init>(Lcom/meizu/settings/accessibility/MZAccessibilitySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 113
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContext:Landroid/content/Context;

    .line 114
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 115
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mResources:Landroid/content/res/Resources;

    .line 116
    iput-object p2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 117
    iput-object p1, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mAccessibilityFragment:Landroid/app/Fragment;

    .line 118
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/accessibility/MZAccessibilitySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/settings/accessibility/MZAccessibilitySettings;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->updateSmartTouchSummary()V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/settings/accessibility/MZAccessibilitySettings;)Landroid/content/DialogInterface;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/settings/accessibility/MZAccessibilitySettings;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mAutoHideSmartDialog:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/settings/accessibility/MZAccessibilitySettings;)Lcom/meizu/common/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/settings/accessibility/MZAccessibilitySettings;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mAutoHideSmartbarSwitch:Lcom/meizu/common/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/settings/accessibility/MZAccessibilitySettings;)Landroid/content/DialogInterface;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/settings/accessibility/MZAccessibilitySettings;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mDataCollectionDialog:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/settings/accessibility/MZAccessibilitySettings;)Lcom/meizu/common/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/settings/accessibility/MZAccessibilitySettings;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mDataCollectionSwitch:Lcom/meizu/common/preference/SwitchPreference;

    return-object v0
.end method

.method private checkIfNeedRemovePreference()V
    .locals 3

    .prologue
    .line 189
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v1, "category_other"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mDataCollectionSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 192
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mHomeLongPress:Lcom/meizu/common/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mHomeLongPress:Lcom/meizu/common/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mDriveMode:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mDriveMode:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mSmartVoiceWakeupPreference:Lcom/meizu/settings/MzWithHelpPreference;

    if-eqz v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mSmartVoiceWakeupPreference:Lcom/meizu/settings/MzWithHelpPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 205
    :cond_2
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mSmartVoiceWakeupPreference:Lcom/meizu/settings/MzWithHelpPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 207
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mGuestureWakeupPreference:Lcom/meizu/settings/MzWithHelpPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 209
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mDriveMode:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 211
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mHomeKeyTouchPreference:Lcom/meizu/common/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 214
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mAutoHideSmartbarSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 217
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mLockScreenSlideRight:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 219
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v2, "scheduled_power"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 221
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/MZUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 222
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v1, "category_other"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v2, "development_settings"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 225
    :cond_3
    return-void
.end method

.method private createDialogOnCancelListener()Landroid/content/DialogInterface$OnCancelListener;
    .locals 1

    .prologue
    .line 451
    new-instance v0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings$2;

    invoke-direct {v0, p0}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings$2;-><init>(Lcom/meizu/settings/accessibility/MZAccessibilitySettings;)V

    return-object v0
.end method

.method private getCustomGuestureSummary()Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 290
    iget-object v11, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v12, "mz_quick_wakeup_slide_right"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_0

    move v2, v9

    .line 292
    .local v2, "isOff":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 293
    iget-object v9, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContext:Landroid/content/Context;

    const v10, 0x7f0c059f

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 316
    :goto_1
    return-object v4

    .end local v2    # "isOff":Z
    :cond_0
    move v2, v10

    .line 290
    goto :goto_0

    .line 295
    .restart local v2    # "isOff":Z
    :cond_1
    iget-object v11, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v12, "mz_quick_wakeup_slide_right_package_detail"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 297
    .local v8, "summary":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 298
    iget-object v9, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContext:Landroid/content/Context;

    const v10, 0x7f0c0a4e

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 300
    :cond_2
    const/4 v4, 0x0

    .line 301
    .local v4, "name":Ljava/lang/String;
    const-string v11, ","

    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 302
    const-string v11, ","

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, "infos":[Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v11, "android.intent.action.MAIN"

    invoke-direct {v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 304
    .local v3, "it":Landroid/content/Intent;
    const-string v11, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    aget-object v11, v1, v10

    invoke-virtual {v3, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    iget-object v11, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 307
    .local v5, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v5, v3, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 308
    .local v7, "rInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 309
    .local v6, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    aget-object v11, v1, v9

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 310
    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v9, v5}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 311
    goto :goto_1

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "infos":[Ljava/lang/String;
    .end local v3    # "it":Landroid/content/Intent;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v7    # "rInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_4
    move-object v4, v8

    .line 316
    goto :goto_1
.end method

.method private handleToggleCurrentNetworkSpeedPreferenceClick()V
    .locals 3

    .prologue
    .line 582
    iget-object v1, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "mz_current_network_speed"

    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mToggleCurrentNetworkSpeedPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0}, Lcom/meizu/common/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 585
    return-void

    .line 582
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleToggleStatusBarTintPreferenceClick()V
    .locals 3

    .prologue
    .line 576
    iget-object v1, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "mz_status_bar_tint"

    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mToggleStatusBarTintPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0}, Lcom/meizu/common/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 579
    return-void

    .line 576
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initAdditionalSettingsPreference()V
    .locals 3

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->isAdditionalSettingsActivityExists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v1, "additional_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mAdditionalSettingsPreference:Landroid/preference/Preference;

    .line 234
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v2, "additional_settings"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private initSmsApplicationSetting()V
    .locals 15

    .prologue
    .line 508
    iget-object v13, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v14, "sms_application"

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/android/settings/SmsListPreference;

    iput-object v13, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    .line 510
    iget-object v13, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v12

    .line 514
    .local v12, "smsApplications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-interface {v12}, Ljava/util/Collection;->size()I

    move-result v0

    .line 515
    .local v0, "count":I
    new-array v2, v0, [Ljava/lang/CharSequence;

    .line 516
    .local v2, "entries":[Ljava/lang/CharSequence;
    new-array v4, v0, [Ljava/lang/CharSequence;

    .line 517
    .local v4, "entryValues":[Ljava/lang/CharSequence;
    new-array v3, v0, [Landroid/graphics/drawable/Drawable;

    .line 519
    .local v3, "entryImages":[Landroid/graphics/drawable/Drawable;
    iget-object v13, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 520
    .local v10, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    .line 521
    .local v5, "i":I
    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 522
    .local v11, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    iget-object v13, v11, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    aput-object v13, v4, v5

    .line 524
    :try_start_0
    iget-object v13, v11, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v13}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    aput-object v13, v3, v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    :goto_1
    iget-object v13, v11, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    const-string v14, "com.android.mms"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 529
    iget-object v13, v11, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v13, v2, v5

    .line 546
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 547
    goto :goto_0

    .line 525
    :catch_0
    move-exception v1

    .line 526
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v10}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    aput-object v13, v3, v5

    goto :goto_1

    .line 531
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    iget-object v13, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mResources:Landroid/content/res/Resources;

    const v14, 0x7f0c0adf

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v2, v5

    .line 533
    if-eqz v5, :cond_0

    .line 534
    const/4 v13, 0x0

    aget-object v7, v2, v13

    .line 535
    .local v7, "middleEntry":Ljava/lang/CharSequence;
    const/4 v13, 0x0

    aget-object v9, v4, v13

    .line 536
    .local v9, "middleEntryValue":Ljava/lang/CharSequence;
    const/4 v13, 0x0

    aget-object v8, v3, v13

    .line 537
    .local v8, "middleEntryImage":Landroid/graphics/drawable/Drawable;
    const/4 v13, 0x0

    aget-object v14, v2, v5

    aput-object v14, v2, v13

    .line 538
    const/4 v13, 0x0

    aget-object v14, v4, v5

    aput-object v14, v4, v13

    .line 539
    const/4 v13, 0x0

    aget-object v14, v3, v5

    aput-object v14, v3, v13

    .line 541
    aput-object v7, v2, v5

    .line 542
    aput-object v9, v4, v5

    .line 543
    aput-object v8, v3, v5

    goto :goto_2

    .line 548
    .end local v7    # "middleEntry":Ljava/lang/CharSequence;
    .end local v8    # "middleEntryImage":Landroid/graphics/drawable/Drawable;
    .end local v9    # "middleEntryValue":Ljava/lang/CharSequence;
    .end local v11    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_2
    iget-object v13, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v13, v2}, Lcom/android/settings/SmsListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 549
    iget-object v13, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v13, v4}, Lcom/android/settings/SmsListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 550
    iget-object v13, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v13, v3}, Lcom/android/settings/SmsListPreference;->setEntryDrawables([Landroid/graphics/drawable/Drawable;)V

    .line 551
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->updateSmsApplicationSetting()V

    .line 552
    const/4 v13, 0x1

    if-ne v5, v13, :cond_3

    .line 553
    iget-object v13, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v14, "category_other"

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/PreferenceCategory;

    iget-object v14, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 557
    :cond_3
    return-void
.end method

.method private isAdditionalSettingsActivityExists()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 238
    const-string v0, "com.android.settings.ADDITIONAL_APPLICATION_SETTING"

    .line 239
    .local v0, "additionalSettingsIntentAction":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 240
    .local v2, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 241
    .local v3, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 242
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 243
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    iput-object v4, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mAdditionalSettingsIntent:Landroid/content/Intent;

    .line 244
    iget-object v4, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mAdditionalSettingsIntent:Landroid/content/Intent;

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    const/4 v4, 0x1

    .line 248
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    :cond_0
    return v4
.end method

.method private showSmartbarWarning()V
    .locals 3

    .prologue
    .line 440
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0c0a54

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/flyme/internal/R$drawable;->mz_ic_popup_about:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0c0a55

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->createDialogOnCancelListener()Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mAutoHideSmartDialog:Landroid/content/DialogInterface;

    .line 448
    return-void
.end method

.method private startQuickWakeupSelectAppFragment(Landroid/preference/Preference;)V
    .locals 11
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, -0x1

    .line 421
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 422
    .local v2, "send":Landroid/os/Bundle;
    const-string v9, "mz_quick_wakeup_slide_right"

    .line 423
    .local v9, "switchKey":Ljava/lang/String;
    const-string v7, "mz_quick_wakeup_slide_right_package_detail"

    .line 424
    .local v7, "appDetailKey":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 425
    .local v10, "title":Ljava/lang/String;
    const v8, 0x7f0201a7

    .line 427
    .local v8, "iconResId":I
    const-string v1, "gesture_title"

    invoke-virtual {v2, v1, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string v1, "guesture_switch_key"

    invoke-virtual {v2, v1, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v1, "guesture_selected_app_detail_key"

    invoke-virtual {v2, v1, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const-string v1, "guesture_icon_res_id"

    invoke-virtual {v2, v1, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 434
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 435
    .local v0, "pa":Landroid/preference/PreferenceActivity;
    const-class v1, Lcom/meizu/settings/accessibility/MeizuQuickWakeupSelectAppFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mAccessibilityFragment:Landroid/app/Fragment;

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 437
    return-void
.end method

.method private updateHomeKeyTouchPreference()V
    .locals 5

    .prologue
    .line 320
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f090079

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "entries":[Ljava/lang/String;
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "mz_home_key_touch_behavior"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 326
    .local v1, "value":I
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mHomeKeyTouchPreference:Lcom/meizu/common/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/common/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 327
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mHomeKeyTouchPreference:Lcom/meizu/common/preference/ListPreference;

    iget-object v3, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mHomeKeyTouchPreference:Lcom/meizu/common/preference/ListPreference;

    invoke-virtual {v3}, Lcom/meizu/common/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/common/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 328
    return-void
.end method

.method private updateHomePreference()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 331
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f090077

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "entries":[Ljava/lang/String;
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "key_home_long_press_action"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 337
    .local v1, "value":I
    if-eq v1, v4, :cond_0

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    .line 338
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mHomeLongPress:Lcom/meizu/common/preference/ListPreference;

    const-string v3, "3"

    invoke-virtual {v2, v3}, Lcom/meizu/common/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 339
    const/4 v1, 0x3

    .line 340
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mHomeLongPress:Lcom/meizu/common/preference/ListPreference;

    const-string v3, "3"

    invoke-virtual {v2, v3}, Lcom/meizu/common/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 342
    :cond_0
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mHomeLongPress:Lcom/meizu/common/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/common/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 343
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mHomeLongPress:Lcom/meizu/common/preference/ListPreference;

    iget-object v3, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mHomeLongPress:Lcom/meizu/common/preference/ListPreference;

    invoke-virtual {v3}, Lcom/meizu/common/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/common/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 344
    return-void
.end method

.method private updateOtherPreferenceSummary()V
    .locals 7

    .prologue
    const v4, 0x7f0c059f

    const v3, 0x7f0c059e

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 263
    iget-object v5, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mHomeLightSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "button_brightness"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 265
    iget-object v5, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mFullScreenAccessPreference:Lcom/meizu/common/preference/SwitchPreference;

    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "enable_full_screen_drag"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v5, v0}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 267
    iget-object v5, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mGuestureWakeupPreference:Lcom/meizu/settings/MzWithHelpPreference;

    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "mz_quick_wakeup_switch"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v3

    :goto_2
    invoke-virtual {v5, v0}, Lcom/meizu/settings/MzWithHelpPreference;->setSummary(I)V

    .line 271
    iget-object v5, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mSmartVoiceWakeupPreference:Lcom/meizu/settings/MzWithHelpPreference;

    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "mz_smart_voice_wakeup_by_voice"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v3

    :goto_3
    invoke-virtual {v5, v0}, Lcom/meizu/settings/MzWithHelpPreference;->setSummary(I)V

    .line 275
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mDriveMode:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "mz_drive_mode"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_4

    :goto_4
    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 278
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mLockScreenSlideRight:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->getCustomGuestureSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 279
    return-void

    :cond_0
    move v0, v2

    .line 263
    goto :goto_0

    :cond_1
    move v0, v2

    .line 265
    goto :goto_1

    :cond_2
    move v0, v4

    .line 267
    goto :goto_2

    :cond_3
    move v0, v4

    .line 271
    goto :goto_3

    :cond_4
    move v3, v4

    .line 275
    goto :goto_4
.end method

.method private updateSmartTouchSummary()V
    .locals 4

    .prologue
    .line 282
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v1, "smart_touch"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "mz_smart_touch_switch"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0c059f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 287
    return-void

    .line 282
    :cond_0
    const v0, 0x7f0c059e

    goto :goto_0
.end method

.method private updateSmsApplicationSetting()V
    .locals 6

    .prologue
    .line 560
    iget-object v4, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 561
    .local v0, "appName":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 562
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 564
    .local v2, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v4}, Lcom/android/settings/SmsListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 565
    .local v3, "values":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 566
    aget-object v4, v3, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 567
    iget-object v4, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v4, v1}, Lcom/android/settings/SmsListPreference;->setValueIndex(I)V

    .line 568
    iget-object v4, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    iget-object v5, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v5}, Lcom/android/settings/SmsListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Lcom/android/settings/SmsListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 573
    .end local v1    # "i":I
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "values":[Ljava/lang/CharSequence;
    :cond_0
    return-void

    .line 565
    .restart local v1    # "i":I
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v3    # "values":[Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private warnDataCollection()V
    .locals 3

    .prologue
    .line 496
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0c09f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/flyme/internal/R$drawable;->mz_ic_popup_account_flyme:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0c09f6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->createDialogOnCancelListener()Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mDataCollectionDialog:Landroid/content/DialogInterface;

    .line 504
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 466
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mAutoHideSmartDialog:Landroid/content/DialogInterface;

    if-ne p1, v0, :cond_2

    .line 467
    if-ne p2, v1, :cond_1

    .line 468
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mAutoHideSmartbarSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 469
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "mz_smartbar_auto_hide"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mAutoHideSmartbarSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 474
    :cond_2
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mDataCollectionDialog:Landroid/content/DialogInterface;

    if-ne p1, v0, :cond_0

    .line 475
    if-ne p2, v1, :cond_3

    .line 476
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "meizu_data_collection"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 478
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mDataCollectionSwitch:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mDataCollectionSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 482
    :cond_3
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mDataCollectionSwitch:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mDataCollectionSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 130
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v5, "light_feedback"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mHomeLightSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    .line 132
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mHomeLightSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Lcom/meizu/common/preference/SwitchPreference;->setPersistent(Z)V

    .line 133
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v5, "home_long_press"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/meizu/common/preference/ListPreference;

    iput-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mHomeLongPress:Lcom/meizu/common/preference/ListPreference;

    .line 134
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v5, "quick_wakeup"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/meizu/settings/MzWithHelpPreference;

    iput-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mGuestureWakeupPreference:Lcom/meizu/settings/MzWithHelpPreference;

    .line 136
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v5, "smart_voice_wakeup"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/meizu/settings/MzWithHelpPreference;

    iput-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mSmartVoiceWakeupPreference:Lcom/meizu/settings/MzWithHelpPreference;

    .line 138
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v5, "home_key_touch_behavior"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/meizu/common/preference/ListPreference;

    iput-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mHomeKeyTouchPreference:Lcom/meizu/common/preference/ListPreference;

    .line 140
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v5, "full_screen_access"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mFullScreenAccessPreference:Lcom/meizu/common/preference/SwitchPreference;

    .line 142
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v5, "lock_screen_slide_right_custom"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mLockScreenSlideRight:Landroid/preference/Preference;

    .line 144
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v5, "drive_mode"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mDriveMode:Landroid/preference/Preference;

    .line 146
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v5, "auto_hide_smartbar"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mAutoHideSmartbarSwitch:Lcom/meizu/common/preference/SwitchPreference;

    .line 148
    iget-object v5, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mAutoHideSmartbarSwitch:Lcom/meizu/common/preference/SwitchPreference;

    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "mz_smartbar_auto_hide"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 151
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v5, "toggle_status_bar_tint"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mToggleStatusBarTintPreference:Lcom/meizu/common/preference/SwitchPreference;

    .line 155
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "mz_status_bar_tint"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v1, v3

    .line 157
    .local v1, "statusBarTintEnabled":Z
    :goto_1
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mToggleStatusBarTintPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 159
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v5, "toggle_current_network_speed"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mToggleCurrentNetworkSpeedPreference:Lcom/meizu/common/preference/SwitchPreference;

    .line 163
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "mz_current_network_speed"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    move v0, v3

    .line 165
    .local v0, "networkSpeedEnabled":Z
    :goto_2
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mToggleCurrentNetworkSpeedPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 166
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mRootPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v5, "data_collection"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mDataCollectionSwitch:Lcom/meizu/common/preference/SwitchPreference;

    .line 168
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mDataCollectionSwitch:Lcom/meizu/common/preference/SwitchPreference;

    iget-object v5, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "meizu_data_collection"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_3

    :goto_3
    invoke-virtual {v2, v3}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 171
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->initSmsApplicationSetting()V

    .line 172
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->checkIfNeedRemovePreference()V

    .line 173
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->initAdditionalSettingsPreference()V

    .line 174
    return-void

    .end local v0    # "networkSpeedEnabled":Z
    .end local v1    # "statusBarTintEnabled":Z
    :cond_0
    move v2, v4

    .line 148
    goto :goto_0

    :cond_1
    move v1, v4

    .line 155
    goto :goto_1

    .restart local v1    # "statusBarTintEnabled":Z
    :cond_2
    move v0, v4

    .line 163
    goto :goto_2

    .restart local v0    # "networkSpeedEnabled":Z
    :cond_3
    move v3, v4

    .line 168
    goto :goto_3
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 186
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 347
    iget-object v4, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v5, "AccessibilitySettings"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, p1, p2}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Landroid/preference/Preference;Ljava/lang/Object;)V

    .line 348
    iget-object v4, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mHomeLongPress:Lcom/meizu/common/preference/ListPreference;

    if-ne p1, v4, :cond_1

    move-object v0, p2

    .line 349
    check-cast v0, Ljava/lang/String;

    .line 350
    .local v0, "stringValue":Ljava/lang/String;
    iget-object v4, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "key_home_long_press_action"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 352
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->updateHomePreference()V

    .line 374
    .end local v0    # "stringValue":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 354
    :cond_1
    iget-object v4, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mHomeKeyTouchPreference:Lcom/meizu/common/preference/ListPreference;

    if-ne p1, v4, :cond_2

    move-object v2, p2

    .line 355
    check-cast v2, Ljava/lang/String;

    .line 356
    .local v2, "valueStr":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 357
    .local v1, "value":I
    iget-object v4, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "mz_home_key_touch_behavior"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 360
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->updateHomeKeyTouchPreference()V

    .line 361
    if-ne v1, v3, :cond_0

    iget-object v4, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mAutoHideSmartbarSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v4}, Lcom/meizu/common/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_0

    .line 363
    iget-object v4, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mAutoHideSmartbarSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v4, v3}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 364
    iget-object v4, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "mz_smartbar_auto_hide"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 368
    .end local v1    # "value":I
    .end local v2    # "valueStr":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    if-ne p1, v4, :cond_3

    if-eqz p2, :cond_3

    .line 369
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 370
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->updateSmsApplicationSetting()V

    goto :goto_0

    .line 374
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 378
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v3, "AccessibilitySettings"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p2}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Landroid/preference/Preference;)V

    .line 379
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mHomeLightSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v2, :cond_1

    .line 380
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "button_brightness"

    iget-object v4, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mHomeLightSwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v4}, Lcom/meizu/common/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v0, 0xff

    :cond_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 417
    :goto_0
    return v1

    .line 383
    :cond_1
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mFullScreenAccessPreference:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v2, :cond_3

    .line 384
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "enable_full_screen_drag"

    iget-object v4, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mFullScreenAccessPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v4}, Lcom/meizu/common/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 388
    :cond_3
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mLockScreenSlideRight:Landroid/preference/Preference;

    if-ne p2, v2, :cond_4

    .line 389
    invoke-direct {p0, p2}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->startQuickWakeupSelectAppFragment(Landroid/preference/Preference;)V

    goto :goto_0

    .line 391
    :cond_4
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mDataCollectionSwitch:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v2, :cond_6

    .line 392
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mDataCollectionSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v2}, Lcom/meizu/common/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 393
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->warnDataCollection()V

    goto :goto_0

    .line 395
    :cond_5
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "meizu_data_collection"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 399
    :cond_6
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mToggleStatusBarTintPreference:Lcom/meizu/common/preference/SwitchPreference;

    if-ne v2, p2, :cond_7

    .line 400
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->handleToggleStatusBarTintPreferenceClick()V

    goto :goto_0

    .line 402
    :cond_7
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mToggleCurrentNetworkSpeedPreference:Lcom/meizu/common/preference/SwitchPreference;

    if-ne v2, p2, :cond_8

    .line 403
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->handleToggleCurrentNetworkSpeedPreferenceClick()V

    goto :goto_0

    .line 405
    :cond_8
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mAutoHideSmartbarSwitch:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v2, :cond_a

    .line 406
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mAutoHideSmartbarSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v2}, Lcom/meizu/common/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 407
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->showSmartbarWarning()V

    goto :goto_0

    .line 409
    :cond_9
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "mz_smartbar_auto_hide"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 413
    :cond_a
    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mAdditionalSettingsPreference:Landroid/preference/Preference;

    if-ne p2, v2, :cond_b

    .line 414
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mAdditionalSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_b
    move v1, v0

    .line 417
    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 252
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0c058b

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->setActionBar(Landroid/app/Activity;I)V

    .line 254
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->updateHomePreference()V

    .line 255
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->updateHomeKeyTouchPreference()V

    .line 256
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->updateSmartTouchSummary()V

    .line 257
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->updateOtherPreferenceSummary()V

    .line 258
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "mz_smart_touch_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 260
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v1, "AccessibilitySettings"

    invoke-virtual {v0, v1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->onPageStop(Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v1, "AccessibilitySettings"

    invoke-virtual {v0, v1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->onPageStart(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/preference/Preference$OnPreferenceChangeListener;

    .prologue
    .line 588
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/SmsListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 589
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mHomeLongPress:Lcom/meizu/common/preference/ListPreference;

    invoke-virtual {v0, p1}, Lcom/meizu/common/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 590
    iget-object v0, p0, Lcom/meizu/settings/accessibility/MZAccessibilitySettings;->mHomeKeyTouchPreference:Lcom/meizu/common/preference/ListPreference;

    invoke-virtual {v0, p1}, Lcom/meizu/common/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 591
    return-void
.end method
