.class public interface abstract Landroid/app/CustomTransition$Callback;
.super Ljava/lang/Object;
.source "CustomTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/CustomTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/CustomTransition$Callback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onTransitionCancelled()V
.end method

.method public abstract onTransitionFinished(Landroid/os/IBinder;)V
.end method

.method public abstract onTransitionStarting()V
.end method
