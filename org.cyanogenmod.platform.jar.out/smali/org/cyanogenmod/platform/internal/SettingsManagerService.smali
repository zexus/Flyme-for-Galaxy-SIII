.class public Lorg/cyanogenmod/platform/internal/SettingsManagerService;
.super Lcom/android/server/SystemService;
.source "SettingsManagerService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CMSettingsService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNotificationManager:Landroid/app/INotificationManager;

.field private final mService:Landroid/os/IBinder;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 84
    new-instance v0, Lorg/cyanogenmod/platform/internal/SettingsManagerService$1;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/SettingsManagerService$1;-><init>(Lorg/cyanogenmod/platform/internal/SettingsManagerService;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/SettingsManagerService;->mService:Landroid/os/IBinder;

    .line 57
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/SettingsManagerService;->mContext:Landroid/content/Context;

    .line 58
    const-string v0, "cmsettings"

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/SettingsManagerService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lorg/cyanogenmod/platform/internal/SettingsManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lorg/cyanogenmod/platform/internal/SettingsManagerService;)V
    .locals 0
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/SettingsManagerService;

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/SettingsManagerService;->enforceModifyNetworkSettingsPermission()V

    return-void
.end method

.method static synthetic access$100(Lorg/cyanogenmod/platform/internal/SettingsManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/SettingsManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/SettingsManagerService;->setAirplaneModeEnabledInternal(Z)V

    return-void
.end method

.method static synthetic access$200(Lorg/cyanogenmod/platform/internal/SettingsManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/SettingsManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/SettingsManagerService;->setMobileDataEnabledInternal(Z)V

    return-void
.end method

.method static synthetic access$300(Lorg/cyanogenmod/platform/internal/SettingsManagerService;)V
    .locals 0
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/SettingsManagerService;

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/SettingsManagerService;->enforceShutdownPermission()V

    return-void
.end method

.method static synthetic access$400(Lorg/cyanogenmod/platform/internal/SettingsManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/SettingsManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/SettingsManagerService;->shutdownInternal(Z)V

    return-void
.end method

.method static synthetic access$500(Lorg/cyanogenmod/platform/internal/SettingsManagerService;)V
    .locals 0
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/SettingsManagerService;

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/SettingsManagerService;->enforceModifySoundSettingsPermission()V

    return-void
.end method

.method static synthetic access$600(Lorg/cyanogenmod/platform/internal/SettingsManagerService;I)Z
    .locals 1
    .param p0, "x0"    # Lorg/cyanogenmod/platform/internal/SettingsManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/SettingsManagerService;->setZenModeInternal(I)Z

    move-result v0

    return v0
.end method

.method private enforceModifyNetworkSettingsPermission()V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/SettingsManagerService;->mContext:Landroid/content/Context;

    const-string v1, "cyanogenmod.permission.MODIFY_NETWORK_SETTINGS"

    const-string v2, "You do not have permissions to change system network settings."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method private enforceModifySoundSettingsPermission()V
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/SettingsManagerService;->mContext:Landroid/content/Context;

    const-string v1, "cyanogenmod.permission.MODIFY_SOUND_SETTINGS"

    const-string v2, "You do not have permissions to change system sound settings."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method private enforceShutdownPermission()V
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/SettingsManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REBOOT"

    const-string v2, "You do not have permissions to shut down the device."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method private setAirplaneModeEnabledInternal(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 155
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/SettingsManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 159
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 161
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/SettingsManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 162
    return-void

    .line 155
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setMobileDataEnabledInternal(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 165
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/SettingsManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 166
    return-void
.end method

.method private setZenModeInternal(I)Z
    .locals 7
    .param p1, "mode"    # I

    .prologue
    const/4 v3, 0x0

    .line 183
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/SettingsManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 184
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const/4 v2, -0x1

    .line 185
    .local v2, "zenModeValue":I
    packed-switch p1, :pswitch_data_0

    .line 197
    const-string v4, "CMSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setZenMode() called with invalid mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :goto_0
    return v3

    .line 187
    :pswitch_0
    const/4 v2, 0x1

    .line 200
    :goto_1
    const-string v4, "zen_mode"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 205
    :try_start_0
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/SettingsManagerService;->mNotificationManager:Landroid/app/INotificationManager;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/app/INotificationManager;->setZenModeCondition(Landroid/service/notification/Condition;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    const/4 v3, 0x1

    goto :goto_0

    .line 190
    :pswitch_1
    const/4 v2, 0x0

    .line 191
    goto :goto_1

    .line 193
    :pswitch_2
    const/4 v2, 0x2

    .line 194
    goto :goto_1

    .line 206
    :catch_0
    move-exception v1

    .line 209
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "CMSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setZenMode() failed for mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 185
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private shutdownInternal(Z)V
    .locals 5
    .param p1, "reboot"    # Z

    .prologue
    .line 169
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 172
    .local v1, "pm":Landroid/os/IPowerManager;
    if-eqz p1, :cond_0

    .line 173
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v1, v2, v3, v4}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V

    .line 180
    :goto_0
    return-void

    .line 175
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IPowerManager;->shutdown(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CMSettingsService"

    const-string v3, "Unable to shutdown."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/SettingsManagerService;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/SettingsManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 65
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/SettingsManagerService;->mNotificationManager:Landroid/app/INotificationManager;

    .line 67
    return-void
.end method
