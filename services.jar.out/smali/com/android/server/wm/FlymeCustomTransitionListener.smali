.class final Lcom/android/server/wm/FlymeCustomTransitionListener;
.super Landroid/view/WindowManagerInternal$AppTransitionListener;
.source "AppTransition.java"


# instance fields
.field private mAppTransition:Lcom/android/server/wm/AppTransition;

.field mCallback:Landroid/app/CustomTransition$Callback;

.field mStarted:Z

.field mWaitingTokens:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/wm/AppTransition;)V
    .locals 1
    .param p1, "appTransition"    # Lcom/android/server/wm/AppTransition;

    .prologue
    .line 2111
    invoke-direct {p0}, Landroid/view/WindowManagerInternal$AppTransitionListener;-><init>()V

    .line 2107
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FlymeCustomTransitionListener;->mWaitingTokens:Landroid/util/ArraySet;

    .line 2112
    iput-object p1, p0, Lcom/android/server/wm/FlymeCustomTransitionListener;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 2111
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 2131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/FlymeCustomTransitionListener;->mCallback:Landroid/app/CustomTransition$Callback;

    .line 2132
    iget-object v0, p0, Lcom/android/server/wm/FlymeCustomTransitionListener;->mWaitingTokens:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 2133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/FlymeCustomTransitionListener;->mStarted:Z

    .line 2134
    iget-object v0, p0, Lcom/android/server/wm/FlymeCustomTransitionListener;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/AppTransition;->unregisterListenerLocked(Landroid/view/WindowManagerInternal$AppTransitionListener;)V

    .line 2130
    return-void
.end method


# virtual methods
.method public onAppTransitionCancelledLocked()V
    .locals 1

    .prologue
    .line 2164
    iget-object v0, p0, Lcom/android/server/wm/FlymeCustomTransitionListener;->mCallback:Landroid/app/CustomTransition$Callback;

    invoke-interface {v0}, Landroid/app/CustomTransition$Callback;->onTransitionCancelled()V

    .line 2165
    invoke-direct {p0}, Lcom/android/server/wm/FlymeCustomTransitionListener;->reset()V

    .line 2163
    return-void
.end method

.method public onAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 2154
    iget-object v0, p0, Lcom/android/server/wm/FlymeCustomTransitionListener;->mCallback:Landroid/app/CustomTransition$Callback;

    invoke-interface {v0, p1}, Landroid/app/CustomTransition$Callback;->onTransitionFinished(Landroid/os/IBinder;)V

    .line 2155
    iget-object v0, p0, Lcom/android/server/wm/FlymeCustomTransitionListener;->mWaitingTokens:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2157
    iget-object v0, p0, Lcom/android/server/wm/FlymeCustomTransitionListener;->mWaitingTokens:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2158
    invoke-direct {p0}, Lcom/android/server/wm/FlymeCustomTransitionListener;->reset()V

    .line 2153
    :cond_0
    return-void
.end method

.method public onAppTransitionStartingLocked(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "openToken"    # Landroid/os/IBinder;
    .param p2, "closeToken"    # Landroid/os/IBinder;
    .param p3, "openAnimation"    # Landroid/view/animation/Animation;
    .param p4, "closeAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 2140
    if-eqz p1, :cond_0

    .line 2141
    iget-object v0, p0, Lcom/android/server/wm/FlymeCustomTransitionListener;->mWaitingTokens:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2143
    :cond_0
    if-eqz p2, :cond_1

    .line 2144
    iget-object v0, p0, Lcom/android/server/wm/FlymeCustomTransitionListener;->mWaitingTokens:Landroid/util/ArraySet;

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2146
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/FlymeCustomTransitionListener;->mStarted:Z

    if-nez v0, :cond_2

    .line 2147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/FlymeCustomTransitionListener;->mStarted:Z

    .line 2148
    iget-object v0, p0, Lcom/android/server/wm/FlymeCustomTransitionListener;->mCallback:Landroid/app/CustomTransition$Callback;

    invoke-interface {v0}, Landroid/app/CustomTransition$Callback;->onTransitionStarting()V

    .line 2139
    :cond_2
    return-void
.end method

.method setCallback(Landroid/app/CustomTransition$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroid/app/CustomTransition$Callback;

    .prologue
    .line 2116
    iget-object v0, p0, Lcom/android/server/wm/FlymeCustomTransitionListener;->mCallback:Landroid/app/CustomTransition$Callback;

    if-ne v0, p1, :cond_0

    .line 2117
    return-void

    .line 2120
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/FlymeCustomTransitionListener;->mCallback:Landroid/app/CustomTransition$Callback;

    if-eqz v0, :cond_1

    .line 2121
    invoke-virtual {p0}, Lcom/android/server/wm/FlymeCustomTransitionListener;->onAppTransitionCancelledLocked()V

    .line 2124
    :cond_1
    iput-object p1, p0, Lcom/android/server/wm/FlymeCustomTransitionListener;->mCallback:Landroid/app/CustomTransition$Callback;

    .line 2125
    iget-object v0, p0, Lcom/android/server/wm/FlymeCustomTransitionListener;->mCallback:Landroid/app/CustomTransition$Callback;

    if-eqz v0, :cond_2

    .line 2126
    iget-object v0, p0, Lcom/android/server/wm/FlymeCustomTransitionListener;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/AppTransition;->registerListenerLocked(Landroid/view/WindowManagerInternal$AppTransitionListener;)V

    .line 2115
    :cond_2
    return-void
.end method
