.class Lorg/cyanogenmod/platform/internal/SettingsManagerService$1;
.super Lcyanogenmod/app/ISettingsManager$Stub;
.source "SettingsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/SettingsManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/SettingsManagerService;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/SettingsManagerService;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/SettingsManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/SettingsManagerService;

    invoke-direct {p0}, Lcyanogenmod/app/ISettingsManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public reboot()V
    .locals 4

    .prologue
    .line 127
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/SettingsManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/SettingsManagerService;

    # invokes: Lorg/cyanogenmod/platform/internal/SettingsManagerService;->enforceShutdownPermission()V
    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/SettingsManagerService;->access$300(Lorg/cyanogenmod/platform/internal/SettingsManagerService;)V

    .line 133
    invoke-static {}, Lorg/cyanogenmod/platform/internal/SettingsManagerService$1;->clearCallingIdentity()J

    move-result-wide v0

    .line 134
    .local v0, "token":J
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/SettingsManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/SettingsManagerService;

    const/4 v3, 0x1

    # invokes: Lorg/cyanogenmod/platform/internal/SettingsManagerService;->shutdownInternal(Z)V
    invoke-static {v2, v3}, Lorg/cyanogenmod/platform/internal/SettingsManagerService;->access$400(Lorg/cyanogenmod/platform/internal/SettingsManagerService;Z)V

    .line 135
    invoke-static {v0, v1}, Lorg/cyanogenmod/platform/internal/SettingsManagerService$1;->restoreCallingIdentity(J)V

    .line 136
    return-void
.end method

.method public setAirplaneModeEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 88
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/SettingsManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/SettingsManagerService;

    # invokes: Lorg/cyanogenmod/platform/internal/SettingsManagerService;->enforceModifyNetworkSettingsPermission()V
    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/SettingsManagerService;->access$000(Lorg/cyanogenmod/platform/internal/SettingsManagerService;)V

    .line 94
    invoke-static {}, Lorg/cyanogenmod/platform/internal/SettingsManagerService$1;->clearCallingIdentity()J

    move-result-wide v0

    .line 95
    .local v0, "token":J
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/SettingsManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/SettingsManagerService;

    # invokes: Lorg/cyanogenmod/platform/internal/SettingsManagerService;->setAirplaneModeEnabledInternal(Z)V
    invoke-static {v2, p1}, Lorg/cyanogenmod/platform/internal/SettingsManagerService;->access$100(Lorg/cyanogenmod/platform/internal/SettingsManagerService;Z)V

    .line 96
    invoke-static {v0, v1}, Lorg/cyanogenmod/platform/internal/SettingsManagerService$1;->restoreCallingIdentity(J)V

    .line 97
    return-void
.end method

.method public setMobileDataEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 101
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/SettingsManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/SettingsManagerService;

    # invokes: Lorg/cyanogenmod/platform/internal/SettingsManagerService;->enforceModifyNetworkSettingsPermission()V
    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/SettingsManagerService;->access$000(Lorg/cyanogenmod/platform/internal/SettingsManagerService;)V

    .line 107
    invoke-static {}, Lorg/cyanogenmod/platform/internal/SettingsManagerService$1;->clearCallingIdentity()J

    move-result-wide v0

    .line 108
    .local v0, "token":J
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/SettingsManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/SettingsManagerService;

    # invokes: Lorg/cyanogenmod/platform/internal/SettingsManagerService;->setMobileDataEnabledInternal(Z)V
    invoke-static {v2, p1}, Lorg/cyanogenmod/platform/internal/SettingsManagerService;->access$200(Lorg/cyanogenmod/platform/internal/SettingsManagerService;Z)V

    .line 109
    invoke-static {v0, v1}, Lorg/cyanogenmod/platform/internal/SettingsManagerService$1;->restoreCallingIdentity(J)V

    .line 110
    return-void
.end method

.method public setZenMode(I)Z
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 140
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/SettingsManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/SettingsManagerService;

    # invokes: Lorg/cyanogenmod/platform/internal/SettingsManagerService;->enforceModifySoundSettingsPermission()V
    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/SettingsManagerService;->access$500(Lorg/cyanogenmod/platform/internal/SettingsManagerService;)V

    .line 146
    invoke-static {}, Lorg/cyanogenmod/platform/internal/SettingsManagerService$1;->clearCallingIdentity()J

    move-result-wide v2

    .line 147
    .local v2, "token":J
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/SettingsManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/SettingsManagerService;

    # invokes: Lorg/cyanogenmod/platform/internal/SettingsManagerService;->setZenModeInternal(I)Z
    invoke-static {v1, p1}, Lorg/cyanogenmod/platform/internal/SettingsManagerService;->access$600(Lorg/cyanogenmod/platform/internal/SettingsManagerService;I)Z

    move-result v0

    .line 148
    .local v0, "success":Z
    invoke-static {v2, v3}, Lorg/cyanogenmod/platform/internal/SettingsManagerService$1;->restoreCallingIdentity(J)V

    .line 149
    return v0
.end method

.method public shutdown()V
    .locals 4

    .prologue
    .line 114
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/SettingsManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/SettingsManagerService;

    # invokes: Lorg/cyanogenmod/platform/internal/SettingsManagerService;->enforceShutdownPermission()V
    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/SettingsManagerService;->access$300(Lorg/cyanogenmod/platform/internal/SettingsManagerService;)V

    .line 120
    invoke-static {}, Lorg/cyanogenmod/platform/internal/SettingsManagerService$1;->clearCallingIdentity()J

    move-result-wide v0

    .line 121
    .local v0, "token":J
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/SettingsManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/SettingsManagerService;

    const/4 v3, 0x0

    # invokes: Lorg/cyanogenmod/platform/internal/SettingsManagerService;->shutdownInternal(Z)V
    invoke-static {v2, v3}, Lorg/cyanogenmod/platform/internal/SettingsManagerService;->access$400(Lorg/cyanogenmod/platform/internal/SettingsManagerService;Z)V

    .line 122
    invoke-static {v0, v1}, Lorg/cyanogenmod/platform/internal/SettingsManagerService$1;->restoreCallingIdentity(J)V

    .line 123
    return-void
.end method
