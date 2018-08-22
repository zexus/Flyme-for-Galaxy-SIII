.class public Landroid/app/CustomTransition$Callback$Stub;
.super Landroid/os/IRemoteCallback$Stub;
.source "CustomTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/CustomTransition$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/CustomTransition$Callback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final EVENT_CANCELLED:I = 0x3

.field static final EVENT_FINISHED:I = 0x2

.field static final EVENT_STARTING:I = 0x1

.field static final KEY_ANIM_CALLBACK_EVENT:Ljava/lang/String; = "android.app:CustomTransition.Callback.event"

.field static final KEY_ANIM_CALLBACK_TOKEN:Ljava/lang/String; = "android.app:CustomTransition.Callback.token"


# instance fields
.field mCallback:Landroid/app/CustomTransition$Callback;


# direct methods
.method constructor <init>(Landroid/app/CustomTransition$Callback;)V
    .locals 0
    .param p1, "callback"    # Landroid/app/CustomTransition$Callback;

    .prologue
    .line 320
    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    .line 321
    iput-object p1, p0, Landroid/app/CustomTransition$Callback$Stub;->mCallback:Landroid/app/CustomTransition$Callback;

    .line 320
    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 333
    const-string/jumbo v0, "android.app:CustomTransition.Callback.event"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 332
    :goto_0
    return-void

    .line 335
    :pswitch_0
    iget-object v0, p0, Landroid/app/CustomTransition$Callback$Stub;->mCallback:Landroid/app/CustomTransition$Callback;

    invoke-interface {v0}, Landroid/app/CustomTransition$Callback;->onTransitionStarting()V

    goto :goto_0

    .line 338
    :pswitch_1
    iget-object v0, p0, Landroid/app/CustomTransition$Callback$Stub;->mCallback:Landroid/app/CustomTransition$Callback;

    const-string/jumbo v1, "android.app:CustomTransition.Callback.token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/CustomTransition$Callback;->onTransitionFinished(Landroid/os/IBinder;)V

    goto :goto_0

    .line 341
    :pswitch_2
    iget-object v0, p0, Landroid/app/CustomTransition$Callback$Stub;->mCallback:Landroid/app/CustomTransition$Callback;

    invoke-interface {v0}, Landroid/app/CustomTransition$Callback;->onTransitionCancelled()V

    goto :goto_0

    .line 333
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
