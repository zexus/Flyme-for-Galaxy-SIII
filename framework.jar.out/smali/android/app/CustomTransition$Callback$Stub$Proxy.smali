.class Landroid/app/CustomTransition$Callback$Stub$Proxy;
.super Ljava/lang/Object;
.source "CustomTransition.java"

# interfaces
.implements Landroid/app/CustomTransition$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/CustomTransition$Callback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Proxy"
.end annotation


# instance fields
.field mBinder:Landroid/os/IRemoteCallback;


# direct methods
.method constructor <init>(Landroid/os/IRemoteCallback;)V
    .locals 0
    .param p1, "binder"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    iput-object p1, p0, Landroid/app/CustomTransition$Callback$Stub$Proxy;->mBinder:Landroid/os/IRemoteCallback;

    .line 349
    return-void
.end method


# virtual methods
.method public onTransitionCancelled()V
    .locals 4

    .prologue
    .line 378
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 379
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "android.app:CustomTransition.Callback.event"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 381
    :try_start_0
    iget-object v2, p0, Landroid/app/CustomTransition$Callback$Stub$Proxy;->mBinder:Landroid/os/IRemoteCallback;

    invoke-interface {v2, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    :goto_0
    return-void

    .line 382
    :catch_0
    move-exception v1

    .line 383
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onTransitionFinished(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 366
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 367
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "android.app:CustomTransition.Callback.event"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 368
    const-string/jumbo v2, "android.app:CustomTransition.Callback.token"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 370
    :try_start_0
    iget-object v2, p0, Landroid/app/CustomTransition$Callback$Stub$Proxy;->mBinder:Landroid/os/IRemoteCallback;

    invoke-interface {v2, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :goto_0
    return-void

    .line 371
    :catch_0
    move-exception v1

    .line 372
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onTransitionStarting()V
    .locals 4

    .prologue
    .line 355
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 356
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "android.app:CustomTransition.Callback.event"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 358
    :try_start_0
    iget-object v2, p0, Landroid/app/CustomTransition$Callback$Stub$Proxy;->mBinder:Landroid/os/IRemoteCallback;

    invoke-interface {v2, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :goto_0
    return-void

    .line 359
    :catch_0
    move-exception v1

    .line 360
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
