.class final Lcom/android/internal/policy/FlymeDecorViewInjector;
.super Ljava/lang/Object;
.source "DecorView.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static flymeCalculateStatusBarColor(Lcom/android/internal/policy/DecorView;I)I
    .locals 3
    .param p0, "decorView"    # Lcom/android/internal/policy/DecorView;
    .param p1, "defColor"    # I

    .prologue
    .line 2495
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->flymeGetFieldWindow()Lcom/android/internal/policy/PhoneWindow;

    move-result-object v0

    .line 2496
    .local v0, "window":Lcom/android/internal/policy/PhoneWindow;
    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow;->mFlymeAppTintBarAssist:Lcom/meizu/tintbar/IAppTintBarAssist;

    iget v2, v0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    invoke-interface {v1, v0, v2, p1}, Lcom/meizu/tintbar/IAppTintBarAssist;->calculateStatusBarColor(Landroid/view/Window;II)I

    move-result v1

    return v1
.end method

.method static flymeDispatchKeyEvent(Lcom/android/internal/policy/DecorView;Landroid/view/KeyEvent;)Z
    .locals 5
    .param p0, "decorView"    # Lcom/android/internal/policy/DecorView;
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2464
    invoke-static {}, Lcom/meizu/internal/picker/ContentCapture;->getInstance()Lcom/meizu/internal/picker/ContentCapture;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->flymeGetFieldFeatureId()I

    move-result v4

    invoke-virtual {v3, p0, p1, v4}, Lcom/meizu/internal/picker/ContentCapture;->dispatchKeyEvent(Landroid/view/View;Landroid/view/KeyEvent;I)V

    .line 2466
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 2467
    .local v0, "isDown":Z
    :goto_0
    if-nez v0, :cond_1

    .line 2468
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x7a

    if-ne v3, v4, :cond_1

    .line 2469
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2470
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->dispatchStatusBarTap()Z

    .line 2471
    return v1

    .end local v0    # "isDown":Z
    :cond_0
    move v0, v2

    .line 2466
    goto :goto_0

    .line 2475
    .restart local v0    # "isDown":Z
    :cond_1
    return v2
.end method

.method static flymeDispatchTouchEvent(Lcom/android/internal/policy/DecorView;Landroid/view/MotionEvent;)V
    .locals 3
    .param p0, "decorView"    # Lcom/android/internal/policy/DecorView;
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2479
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->flymeGetFieldWindow()Lcom/android/internal/policy/PhoneWindow;

    move-result-object v0

    .line 2481
    .local v0, "window":Lcom/android/internal/policy/PhoneWindow;
    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow;->mFlymeAppTintBarAssist:Lcom/meizu/tintbar/IAppTintBarAssist;

    invoke-interface {v1, v0, p1}, Lcom/meizu/tintbar/IAppTintBarAssist;->onTouchEvent(Landroid/view/Window;Landroid/view/MotionEvent;)V

    .line 2483
    invoke-static {}, Lcom/meizu/internal/picker/ContentCapture;->getInstance()Lcom/meizu/internal/picker/ContentCapture;

    move-result-object v1

    .line 2484
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->flymeGetFieldFeatureId()I

    move-result v2

    .line 2483
    invoke-virtual {v1, p0, p1, v0, v2}, Lcom/meizu/internal/picker/ContentCapture;->dispatchTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;Landroid/view/Window;I)V

    .line 2478
    return-void
.end method

.method static flymeGetDisplayMetricsHeight(Lcom/android/internal/policy/DecorView;Lcom/android/internal/policy/DecorView$ColorViewState;III)I
    .locals 4
    .param p0, "decorView"    # Lcom/android/internal/policy/DecorView;
    .param p1, "state"    # Lcom/android/internal/policy/DecorView$ColorViewState;
    .param p2, "sysUiVis"    # I
    .param p3, "color"    # I
    .param p4, "height"    # I

    .prologue
    .line 2507
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->flymeGetFieldStatusColorViewState()Lcom/android/internal/policy/DecorView$ColorViewState;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 2508
    if-nez p4, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->flymeGetFieldWindow()Lcom/android/internal/policy/PhoneWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget p4, p0, Lcom/android/internal/policy/DecorView;->mFlymeStableInsetTop:I

    .line 2509
    :cond_0
    if-lez p4, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4004000000000000L    # 2.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    add-int/2addr v0, p4

    add-int/lit8 p4, v0, -0x1

    .line 2512
    :cond_1
    :goto_0
    return p4

    .line 2509
    :cond_2
    const/4 p4, 0x0

    goto :goto_0
.end method

.method static flymeOnDecorViewDraw(Lcom/android/internal/policy/DecorView;)V
    .locals 2
    .param p0, "decorView"    # Lcom/android/internal/policy/DecorView;

    .prologue
    .line 2488
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->flymeGetFieldWindow()Lcom/android/internal/policy/PhoneWindow;

    move-result-object v0

    .line 2490
    .local v0, "window":Lcom/android/internal/policy/PhoneWindow;
    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow;->mFlymeAppTintBarAssist:Lcom/meizu/tintbar/IAppTintBarAssist;

    invoke-interface {v1, v0, p0}, Lcom/meizu/tintbar/IAppTintBarAssist;->onDecorViewDraw(Landroid/view/Window;Landroid/view/View;)V

    .line 2487
    return-void
.end method

.method static flymeSuperDispatchKeyEvent(Lcom/android/internal/policy/DecorView;Landroid/view/KeyEvent;)Z
    .locals 5
    .param p0, "decorView"    # Lcom/android/internal/policy/DecorView;
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2451
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2452
    .local v0, "action":I
    if-ne v0, v4, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2459
    :cond_0
    return v4

    .line 2453
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->flymeGetFieldActionMode()Landroid/view/ActionMode;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ActionMode;->getBackPressListener()Landroid/view/ActionMode$BackPressedListener;

    move-result-object v1

    .line 2454
    .local v1, "listener":Landroid/view/ActionMode$BackPressedListener;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/view/ActionMode$BackPressedListener;->onBackPressed()Z

    move-result v2

    :goto_0
    if-nez v2, :cond_2

    .line 2455
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->flymeGetFieldActionMode()Landroid/view/ActionMode;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    .line 2457
    :cond_2
    return v3

    :cond_3
    move v2, v3

    .line 2454
    goto :goto_0
.end method

.method static setFlymeStableInsetTop(Lcom/android/internal/policy/DecorView;Landroid/view/WindowInsets;)V
    .locals 1
    .param p0, "decorView"    # Lcom/android/internal/policy/DecorView;
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 2501
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mFlymeStableInsetTop:I

    .line 2499
    return-void
.end method
