.class final Lcom/android/server/am/ActivityManagerService$KillProcessBackground;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KillProcessBackground"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1902
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$KillProcessBackground;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 1903
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1904
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1908
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1913
    :goto_0
    return-void

    .line 1910
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$KillProcessBackground;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/am/ActivityManagerService;->killProcessGroupBackground(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->access$1100(Lcom/android/server/am/ActivityManagerService;II)V

    goto :goto_0

    .line 1908
    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_0
    .end packed-switch
.end method
