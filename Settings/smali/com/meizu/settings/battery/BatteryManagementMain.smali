.class public Lcom/meizu/settings/battery/BatteryManagementMain;
.super Landroid/preference/PreferenceFragment;
.source "BatteryManagementMain.java"


# instance fields
.field private balance:Lcom/meizu/settings/ChecktextPreference;

.field private mBattery:Lcom/meizu/common/preference/SwitchPreference;

.field private mLowDPIDialog:Landroid/app/Dialog;

.field private mLowDPISwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

.field private performance:Lcom/meizu/settings/ChecktextPreference;

.field private saving:Lcom/meizu/settings/ChecktextPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/settings/battery/BatteryManagementMain;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/battery/BatteryManagementMain;)Lcom/meizu/common/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/settings/battery/BatteryManagementMain;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/meizu/settings/battery/BatteryManagementMain;->mLowDPISwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/settings/battery/BatteryManagementMain;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/settings/battery/BatteryManagementMain;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/meizu/settings/battery/BatteryManagementMain;->showProgressDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/settings/battery/BatteryManagementMain;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/settings/battery/BatteryManagementMain;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/meizu/settings/battery/BatteryManagementMain;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/settings/battery/BatteryManagementMain;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/settings/battery/BatteryManagementMain;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/meizu/settings/battery/BatteryManagementMain;->mLowDPIDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private createDialogOnCancelListener()Landroid/content/DialogInterface$OnCancelListener;
    .locals 1

    .prologue
    .line 213
    new-instance v0, Lcom/meizu/settings/battery/BatteryManagementMain$3;

    invoke-direct {v0, p0}, Lcom/meizu/settings/battery/BatteryManagementMain$3;-><init>(Lcom/meizu/settings/battery/BatteryManagementMain;)V

    return-object v0
.end method

.method private initMode()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 100
    const-string v1, "sys.perf.profile"

    const-string v4, "1"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "mode":Ljava/lang/String;
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_1

    .line 122
    const-string v1, "BatteryManagementMain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknow cpu_l:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :goto_1
    return-void

    .line 101
    :pswitch_0
    const-string v4, "3"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    goto :goto_0

    :pswitch_1
    const-string v4, "2"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v3

    goto :goto_0

    :pswitch_2
    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :pswitch_3
    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    .line 107
    :pswitch_4
    iget-object v1, p0, Lcom/meizu/settings/battery/BatteryManagementMain;->balance:Lcom/meizu/settings/ChecktextPreference;

    invoke-virtual {v1, v2}, Lcom/meizu/settings/ChecktextPreference;->setChecked(Z)V

    .line 108
    iget-object v1, p0, Lcom/meizu/settings/battery/BatteryManagementMain;->saving:Lcom/meizu/settings/ChecktextPreference;

    invoke-virtual {v1, v2}, Lcom/meizu/settings/ChecktextPreference;->setChecked(Z)V

    .line 109
    iget-object v1, p0, Lcom/meizu/settings/battery/BatteryManagementMain;->performance:Lcom/meizu/settings/ChecktextPreference;

    invoke-virtual {v1, v3}, Lcom/meizu/settings/ChecktextPreference;->setChecked(Z)V

    goto :goto_1

    .line 112
    :pswitch_5
    iget-object v1, p0, Lcom/meizu/settings/battery/BatteryManagementMain;->balance:Lcom/meizu/settings/ChecktextPreference;

    invoke-virtual {v1, v3}, Lcom/meizu/settings/ChecktextPreference;->setChecked(Z)V

    .line 113
    iget-object v1, p0, Lcom/meizu/settings/battery/BatteryManagementMain;->saving:Lcom/meizu/settings/ChecktextPreference;

    invoke-virtual {v1, v2}, Lcom/meizu/settings/ChecktextPreference;->setChecked(Z)V

    .line 114
    iget-object v1, p0, Lcom/meizu/settings/battery/BatteryManagementMain;->performance:Lcom/meizu/settings/ChecktextPreference;

    invoke-virtual {v1, v2}, Lcom/meizu/settings/ChecktextPreference;->setChecked(Z)V

    goto :goto_1

    .line 117
    :pswitch_6
    iget-object v1, p0, Lcom/meizu/settings/battery/BatteryManagementMain;->balance:Lcom/meizu/settings/ChecktextPreference;

    invoke-virtual {v1, v2}, Lcom/meizu/settings/ChecktextPreference;->setChecked(Z)V

    .line 118
    iget-object v1, p0, Lcom/meizu/settings/battery/BatteryManagementMain;->saving:Lcom/meizu/settings/ChecktextPreference;

    invoke-virtual {v1, v3}, Lcom/meizu/settings/ChecktextPreference;->setChecked(Z)V

    .line 119
    iget-object v1, p0, Lcom/meizu/settings/battery/BatteryManagementMain;->performance:Lcom/meizu/settings/ChecktextPreference;

    invoke-virtual {v1, v2}, Lcom/meizu/settings/ChecktextPreference;->setChecked(Z)V

    goto :goto_1

    .line 101
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private setMode(Landroid/preference/Preference;)V
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 144
    iget-object v0, p0, Lcom/meizu/settings/battery/BatteryManagementMain;->balance:Lcom/meizu/settings/ChecktextPreference;

    if-ne p1, v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/meizu/settings/battery/BatteryManagementMain;->balance:Lcom/meizu/settings/ChecktextPreference;

    invoke-virtual {v0, v2}, Lcom/meizu/settings/ChecktextPreference;->setChecked(Z)V

    .line 146
    iget-object v0, p0, Lcom/meizu/settings/battery/BatteryManagementMain;->saving:Lcom/meizu/settings/ChecktextPreference;

    invoke-virtual {v0, v1}, Lcom/meizu/settings/ChecktextPreference;->setChecked(Z)V

    .line 147
    iget-object v0, p0, Lcom/meizu/settings/battery/BatteryManagementMain;->performance:Lcom/meizu/settings/ChecktextPreference;

    invoke-virtual {v0, v1}, Lcom/meizu/settings/ChecktextPreference;->setChecked(Z)V

    .line 148
    const-string v0, "sys.perf.profile"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/meizu/settings/battery/BatteryManagementMain;->saving:Lcom/meizu/settings/ChecktextPreference;

    if-ne p1, v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/meizu/settings/battery/BatteryManagementMain;->balance:Lcom/meizu/settings/ChecktextPreference;

    invoke-virtual {v0, v1}, Lcom/meizu/settings/ChecktextPreference;->setChecked(Z)V

    .line 151
    iget-object v0, p0, Lcom/meizu/settings/battery/BatteryManagementMain;->saving:Lcom/meizu/settings/ChecktextPreference;

    invoke-virtual {v0, v2}, Lcom/meizu/settings/ChecktextPreference;->setChecked(Z)V

    .line 152
    iget-object v0, p0, Lcom/meizu/settings/battery/BatteryManagementMain;->performance:Lcom/meizu/settings/ChecktextPreference;

    invoke-virtual {v0, v1}, Lcom/meizu/settings/ChecktextPreference;->setChecked(Z)V

    .line 153
    const-string v0, "sys.perf.profile"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/meizu/settings/battery/BatteryManagementMain;->performance:Lcom/meizu/settings/ChecktextPreference;

    if-ne p1, v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/meizu/settings/battery/BatteryManagementMain;->balance:Lcom/meizu/settings/ChecktextPreference;

    invoke-virtual {v0, v1}, Lcom/meizu/settings/ChecktextPreference;->setChecked(Z)V

    .line 156
    iget-object v0, p0, Lcom/meizu/settings/battery/BatteryManagementMain;->saving:Lcom/meizu/settings/ChecktextPreference;

    invoke-virtual {v0, v1}, Lcom/meizu/settings/ChecktextPreference;->setChecked(Z)V

    .line 157
    iget-object v0, p0, Lcom/meizu/settings/battery/BatteryManagementMain;->performance:Lcom/meizu/settings/ChecktextPreference;

    invoke-virtual {v0, v2}, Lcom/meizu/settings/ChecktextPreference;->setChecked(Z)V

    .line 158
    const-string v0, "sys.perf.profile"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showLowDpiDialog()V
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/meizu/settings/battery/BatteryManagementMain;->mLowDPIDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/meizu/settings/battery/BatteryManagementMain;->mLowDPIDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/settings/battery/BatteryManagementMain;->mLowDPIDialog:Landroid/app/Dialog;

    .line 167
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/meizu/settings/battery/BatteryManagementMain;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0aeb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v0, p0, Lcom/meizu/settings/battery/BatteryManagementMain;->mLowDPISwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0}, Lcom/meizu/common/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0c0ae9

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/meizu/settings/battery/BatteryManagementMain$2;

    invoke-direct {v2, p0}, Lcom/meizu/settings/battery/BatteryManagementMain$2;-><init>(Lcom/meizu/settings/battery/BatteryManagementMain;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    new-instance v2, Lcom/meizu/settings/battery/BatteryManagementMain$1;

    invoke-direct {v2, p0}, Lcom/meizu/settings/battery/BatteryManagementMain$1;-><init>(Lcom/meizu/settings/battery/BatteryManagementMain;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/meizu/settings/battery/BatteryManagementMain;->createDialogOnCancelListener()Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/battery/BatteryManagementMain;->mLowDPIDialog:Landroid/app/Dialog;

    .line 210
    return-void

    .line 167
    :cond_1
    const v0, 0x7f0c0ae8

    goto :goto_0
.end method

.method private showProgressDialog(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/meizu/settings/battery/BatteryManagementMain;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/meizu/settings/battery/BatteryManagementMain;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/settings/battery/BatteryManagementMain;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 229
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/meizu/settings/battery/BatteryManagementMain;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/settings/battery/BatteryManagementMain;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 230
    iget-object v0, p0, Lcom/meizu/settings/battery/BatteryManagementMain;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v0, p0, Lcom/meizu/settings/battery/BatteryManagementMain;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 232
    iget-object v0, p0, Lcom/meizu/settings/battery/BatteryManagementMain;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 233
    iget-object v0, p0, Lcom/meizu/settings/battery/BatteryManagementMain;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 234
    iget-object v0, p0, Lcom/meizu/settings/battery/BatteryManagementMain;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 235
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 56
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v2, 0x7f070009

    invoke-virtual {p0, v2}, Lcom/meizu/settings/battery/BatteryManagementMain;->addPreferencesFromResource(I)V

    .line 58
    const-string v2, "statusbar_battery_percent"

    invoke-virtual {p0, v2}, Lcom/meizu/settings/battery/BatteryManagementMain;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v2, p0, Lcom/meizu/settings/battery/BatteryManagementMain;->mBattery:Lcom/meizu/common/preference/SwitchPreference;

    .line 59
    iget-object v5, p0, Lcom/meizu/settings/battery/BatteryManagementMain;->mBattery:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/meizu/settings/battery/BatteryManagementMain;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "statusbar_battery_percent"

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 61
    const-string v2, "balance"

    invoke-virtual {p0, v2}, Lcom/meizu/settings/battery/BatteryManagementMain;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/meizu/settings/ChecktextPreference;

    iput-object v2, p0, Lcom/meizu/settings/battery/BatteryManagementMain;->balance:Lcom/meizu/settings/ChecktextPreference;

    .line 62
    const-string v2, "saving"

    invoke-virtual {p0, v2}, Lcom/meizu/settings/battery/BatteryManagementMain;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/meizu/settings/ChecktextPreference;

    iput-object v2, p0, Lcom/meizu/settings/battery/BatteryManagementMain;->saving:Lcom/meizu/settings/ChecktextPreference;

    .line 63
    const-string v2, "performance"

    invoke-virtual {p0, v2}, Lcom/meizu/settings/battery/BatteryManagementMain;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/meizu/settings/ChecktextPreference;

    iput-object v2, p0, Lcom/meizu/settings/battery/BatteryManagementMain;->performance:Lcom/meizu/settings/ChecktextPreference;

    .line 64
    const-string v2, "low_dpi"

    invoke-virtual {p0, v2}, Lcom/meizu/settings/battery/BatteryManagementMain;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v2, p0, Lcom/meizu/settings/battery/BatteryManagementMain;->mLowDPISwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    .line 65
    invoke-virtual {p0}, Lcom/meizu/settings/battery/BatteryManagementMain;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "display_size_forced"

    invoke-static {v2, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "isLowSize":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/meizu/settings/battery/BatteryManagementMain;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "display_density_forced"

    invoke-static {v2, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "isLowIdenty":Ljava/lang/String;
    iget-object v2, p0, Lcom/meizu/settings/battery/BatteryManagementMain;->mLowDPISwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move v4, v3

    :cond_1
    invoke-virtual {v2, v4}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 75
    invoke-virtual {p0}, Lcom/meizu/settings/battery/BatteryManagementMain;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/settings/battery/BatteryManagementMain;->mLowDPISwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 77
    invoke-virtual {p0}, Lcom/meizu/settings/battery/BatteryManagementMain;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/settings/battery/BatteryManagementMain;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    .line 78
    return-void

    .end local v0    # "isLowIdenty":Ljava/lang/String;
    .end local v1    # "isLowSize":Ljava/lang/String;
    :cond_2
    move v2, v4

    .line 59
    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/meizu/settings/battery/BatteryManagementMain;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v1, "BatteryManagementMain"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Landroid/preference/Preference;)V

    .line 131
    iget-object v0, p0, Lcom/meizu/settings/battery/BatteryManagementMain;->mBattery:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v0, :cond_2

    .line 132
    invoke-virtual {p0}, Lcom/meizu/settings/battery/BatteryManagementMain;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "statusbar_battery_percent"

    iget-object v0, p0, Lcom/meizu/settings/battery/BatteryManagementMain;->mBattery:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0}, Lcom/meizu/common/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 140
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 132
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 135
    :cond_2
    instance-of v0, p2, Lcom/meizu/settings/ChecktextPreference;

    if-eqz v0, :cond_3

    .line 136
    invoke-direct {p0, p2}, Lcom/meizu/settings/battery/BatteryManagementMain;->setMode(Landroid/preference/Preference;)V

    goto :goto_1

    .line 137
    :cond_3
    iget-object v0, p0, Lcom/meizu/settings/battery/BatteryManagementMain;->mLowDPISwitchPreference:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v0, :cond_0

    .line 138
    invoke-direct {p0}, Lcom/meizu/settings/battery/BatteryManagementMain;->showLowDpiDialog()V

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/meizu/settings/battery/BatteryManagementMain;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c05df

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->setActionBar(Landroid/app/Activity;I)V

    .line 95
    invoke-direct {p0}, Lcom/meizu/settings/battery/BatteryManagementMain;->initMode()V

    .line 96
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 97
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 83
    iget-object v0, p0, Lcom/meizu/settings/battery/BatteryManagementMain;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v1, "BatteryManagementMain"

    invoke-virtual {v0, v1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->onPageStart(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 89
    iget-object v0, p0, Lcom/meizu/settings/battery/BatteryManagementMain;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v1, "BatteryManagementMain"

    invoke-virtual {v0, v1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->onPageStop(Ljava/lang/String;)V

    .line 90
    return-void
.end method
