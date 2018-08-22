.class final Landroid/inputmethodservice/FlymeInputMethodServiceInjector;
.super Ljava/lang/Object;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/FlymeInputMethodServiceInjector$FlymeHandler;
    }
.end annotation


# static fields
.field private static final MZ_MSG_REQUEST_HIDE_SELF:I = 0x1

.field private static final MZ_MSG_REQUEST_SHOW_SELF:I = 0x2

.field private static final MZ_ON_UNBIND_INPUT:I = 0x1

.field private static final sCoverChildMap:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2749
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 2750
    const-string/jumbo v1, "com.meizu.input.cover.SMILE"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2751
    const-string/jumbo v1, "com.meizu.input.cover.VOICE"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 2749
    sput-object v0, Landroid/inputmethodservice/FlymeInputMethodServiceInjector;->sCoverChildMap:[Ljava/lang/String;

    .line 2746
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 2746
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static computeCoverHeight(Landroid/inputmethodservice/InputMethodService;Landroid/inputmethodservice/InputMethodService$Insets;)V
    .locals 4
    .param p0, "ims"    # Landroid/inputmethodservice/InputMethodService;
    .param p1, "outInsets"    # Landroid/inputmethodservice/InputMethodService$Insets;

    .prologue
    const/4 v3, 0x1

    .line 2808
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mTmpLocation:[I

    .line 2810
    .local v1, "loc":[I
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 2811
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 2818
    :goto_0
    aget v2, v1, v3

    iput v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    iput v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    .line 2819
    const/4 v2, 0x2

    iput v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    .line 2820
    iget-object v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->setEmpty()V

    .line 2807
    return-void

    .line 2812
    :cond_0
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 2813
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    goto :goto_0

    .line 2815
    :cond_1
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 2816
    .local v0, "decor":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    aput v2, v1, v3

    goto :goto_0
.end method

.method private static getFlymePrivateImeOptionsMap(Landroid/inputmethodservice/InputMethodService;)Ljava/util/Map;
    .locals 1
    .param p0, "ims"    # Landroid/inputmethodservice/InputMethodService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/inputmethodservice/InputMethodService;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2788
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mFlymePrivateImeOptionsMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2789
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mFlymePrivateImeOptionsMap:Ljava/util/Map;

    .line 2792
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mFlymePrivateImeOptionsMap:Ljava/util/Map;

    return-object v0
.end method

.method static handleBack(Landroid/inputmethodservice/InputMethodService;)Z
    .locals 1
    .param p0, "ims"    # Landroid/inputmethodservice/InputMethodService;

    .prologue
    .line 2783
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->flymeInvokeMethodHandleBack(Z)Z

    .line 2784
    const/4 v0, 0x0

    return v0
.end method

.method static handleSmsVoiceInput(Landroid/inputmethodservice/InputMethodService;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7
    .param p0, "ims"    # Landroid/inputmethodservice/InputMethodService;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 2824
    const-string/jumbo v5, "com.meizu.input.attrsChanged"

    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2825
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    .line 2826
    .local v2, "attrs":Landroid/view/inputmethod/EditorInfo;
    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    if-eqz v5, :cond_1

    .line 2827
    const-string/jumbo v5, "imeOptions"

    iget v6, v2, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 2828
    .local v4, "imeOptions":I
    const-string/jumbo v5, "actionId"

    iget v6, v2, Landroid/view/inputmethod/EditorInfo;->actionId:I

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2829
    .local v0, "actionId":I
    const-string/jumbo v5, "actionLabel"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2830
    .local v1, "actionLabel":Ljava/lang/CharSequence;
    iget v5, v2, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    if-ne v4, v5, :cond_0

    iget v5, v2, Landroid/view/inputmethod/EditorInfo;->actionId:I

    if-ne v5, v0, :cond_0

    .line 2831
    iget-object v5, v2, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    .line 2830
    if-eqz v5, :cond_0

    .line 2832
    return-void

    .line 2834
    :cond_0
    iput v4, v2, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 2835
    iput v0, v2, Landroid/view/inputmethod/EditorInfo;->actionId:I

    .line 2836
    iput-object v1, v2, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    .line 2837
    const-string/jumbo v5, "initialSelStart"

    iget v6, v2, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v2, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 2838
    const-string/jumbo v5, "initialSelEnd"

    iget v6, v2, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v2, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 2839
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v2, v6}, Landroid/inputmethodservice/InputMethodService;->doStartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 2823
    .end local v0    # "actionId":I
    .end local v1    # "actionLabel":Ljava/lang/CharSequence;
    .end local v2    # "attrs":Landroid/view/inputmethod/EditorInfo;
    .end local v4    # "imeOptions":I
    :cond_1
    :goto_0
    return-void

    .line 2842
    :cond_2
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mFlymeCoverView:Lcom/meizu/widget/inputmethod/CoverView;

    .line 2843
    .local v3, "cover":Lcom/meizu/widget/inputmethod/CoverView;
    if-eqz v3, :cond_3

    .line 2844
    invoke-virtual {v3, p1, p2}, Lcom/meizu/widget/inputmethod/CoverView;->onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2846
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method static hideInputDelayIfNeeded(Landroid/inputmethodservice/InputMethodService;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
    .locals 4
    .param p0, "ims"    # Landroid/inputmethodservice/InputMethodService;
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "attribute"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 2929
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mFlymeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-static {p2}, Landroid/inputmethodservice/FlymeInputMethodServiceInjector;->isAppCompatibleMeizu(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2930
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mFlymeHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x96

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2927
    :cond_0
    return-void
.end method

.method static initFlymeCoverViews(Landroid/inputmethodservice/InputMethodService;)V
    .locals 5
    .param p0, "ims"    # Landroid/inputmethodservice/InputMethodService;

    .prologue
    .line 2855
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/flyme/internal/R$layout;->input_method_cover_container:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewAnimator;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mFlymeCoverFrame:Landroid/widget/ViewAnimator;

    .line 2856
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mFlymeCoverFrame:Landroid/widget/ViewAnimator;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/inputmethodservice/SoftInputWindow;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2857
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mFlymeCoverFrame:Landroid/widget/ViewAnimator;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setVisibility(I)V

    .line 2854
    return-void
.end method

.method static initFlymeExtraFields(Landroid/inputmethodservice/InputMethodService;)V
    .locals 1
    .param p0, "ims"    # Landroid/inputmethodservice/InputMethodService;

    .prologue
    .line 2851
    new-instance v0, Landroid/inputmethodservice/FlymeInputMethodServiceInjector$FlymeHandler;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/FlymeInputMethodServiceInjector$FlymeHandler;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mFlymeHandler:Landroid/os/Handler;

    .line 2850
    return-void
.end method

.method private static isAppCompatibleMeizu(Landroid/view/inputmethod/EditorInfo;)Z
    .locals 7
    .param p0, "attribute"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 2935
    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    const v4, 0x1020003

    if-ne v2, v4, :cond_0

    .line 2936
    return v3

    .line 2938
    :cond_0
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    .line 2939
    const-string/jumbo v2, "com.icbc"

    aput-object v2, v0, v3

    .line 2940
    const-string/jumbo v2, "com.tmall.wireless"

    aput-object v2, v0, v6

    .line 2941
    const-string/jumbo v2, "com.android.meizu.audioprofiles"

    const/4 v4, 0x2

    aput-object v2, v0, v4

    .line 2943
    .local v0, "APPS_INCOMPATIBLE_MZ":[Ljava/lang/String;
    array-length v4, v0

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v1, v0, v2

    .line 2944
    .local v1, "s":Ljava/lang/String;
    iget-object v5, p0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2945
    return v3

    .line 2943
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2948
    .end local v1    # "s":Ljava/lang/String;
    :cond_2
    return v6
.end method

.method static isImeInterceptBackKey(Landroid/inputmethodservice/InputMethodService;)Z
    .locals 3
    .param p0, "ims"    # Landroid/inputmethodservice/InputMethodService;

    .prologue
    const/4 v0, 0x0

    .line 2778
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "keyboard_exit_directly"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static onEvaluateFullscreenMode(Landroid/inputmethodservice/InputMethodService;)Z
    .locals 2
    .param p0, "ims"    # Landroid/inputmethodservice/InputMethodService;

    .prologue
    const/4 v1, 0x0

    .line 2867
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v0, :cond_0

    .line 2868
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v0, :cond_0

    .line 2869
    const/4 v0, 0x1

    return v0

    .line 2871
    :cond_0
    return v1
.end method

.method static removeHideSelfMessage(Landroid/inputmethodservice/InputMethodService;)V
    .locals 2
    .param p0, "ims"    # Landroid/inputmethodservice/InputMethodService;

    .prologue
    .line 2922
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mFlymeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2923
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mFlymeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2921
    :cond_0
    return-void
.end method

.method static requestHideSelf(Landroid/inputmethodservice/InputMethodService;)Z
    .locals 2
    .param p0, "ims"    # Landroid/inputmethodservice/InputMethodService;

    .prologue
    const/4 v1, 0x0

    .line 2861
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mFlymeMethodFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2862
    :cond_0
    return v1
.end method

.method static unbindInputEnter(Landroid/inputmethodservice/InputMethodService;)V
    .locals 1
    .param p0, "ims"    # Landroid/inputmethodservice/InputMethodService;

    .prologue
    .line 2766
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mFlymeMethodFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mFlymeMethodFlags:I

    .line 2764
    return-void
.end method

.method static unbindInputExit(Landroid/inputmethodservice/InputMethodService;)V
    .locals 1
    .param p0, "ims"    # Landroid/inputmethodservice/InputMethodService;

    .prologue
    .line 2772
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mFlymeMethodFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mFlymeMethodFlags:I

    .line 2770
    return-void
.end method

.method private static updateCoverHeight(Landroid/inputmethodservice/InputMethodService;)V
    .locals 7
    .param p0, "ims"    # Landroid/inputmethodservice/InputMethodService;

    .prologue
    .line 2796
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 2797
    :cond_0
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    .line 2798
    .local v2, "insets":Landroid/inputmethodservice/InputMethodService$Insets;
    invoke-static {p0, v2}, Landroid/inputmethodservice/FlymeInputMethodServiceInjector;->computeCoverHeight(Landroid/inputmethodservice/InputMethodService;Landroid/inputmethodservice/InputMethodService$Insets;)V

    .line 2799
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 2800
    .local v0, "decor":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v4, v2, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    sub-int v1, v3, v4

    .line 2801
    .local v1, "height":I
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mFlymeCoverFrame:Landroid/widget/ViewAnimator;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    const/16 v6, 0x51

    invoke-direct {v4, v5, v1, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4}, Landroid/widget/ViewAnimator;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2795
    return-void
.end method

.method static updateCoverHeightIfNeeded(Landroid/inputmethodservice/InputMethodService;)V
    .locals 1
    .param p0, "ims"    # Landroid/inputmethodservice/InputMethodService;

    .prologue
    .line 2759
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mFlymeCoverFrame:Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2760
    invoke-static {p0}, Landroid/inputmethodservice/FlymeInputMethodServiceInjector;->updateCoverHeight(Landroid/inputmethodservice/InputMethodService;)V

    .line 2758
    :cond_0
    return-void
.end method

.method private static updateCoverView(Landroid/inputmethodservice/InputMethodService;Ljava/lang/String;)V
    .locals 7
    .param p0, "ims"    # Landroid/inputmethodservice/InputMethodService;
    .param p1, "privateImeOptions"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 2892
    const/4 v1, 0x0

    .line 2893
    .local v1, "coverView":Lcom/meizu/widget/inputmethod/CoverView;
    invoke-static {p0}, Landroid/inputmethodservice/FlymeInputMethodServiceInjector;->getFlymePrivateImeOptionsMap(Landroid/inputmethodservice/InputMethodService;)Ljava/util/Map;

    move-result-object v3

    .line 2894
    .local v3, "privateImeOptionsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1, v3}, Landroid/view/inputmethod/EditorInfo;->splitPrivateImeOptions(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2895
    const/4 v4, 0x0

    .local v4, "whichChild":I
    :goto_0
    sget-object v5, Landroid/inputmethodservice/FlymeInputMethodServiceInjector;->sCoverChildMap:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 2896
    sget-object v5, Landroid/inputmethodservice/FlymeInputMethodServiceInjector;->sCoverChildMap:[Ljava/lang/String;

    aget-object v2, v5, v4

    .line 2897
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2898
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mFlymeCoverFrame:Landroid/widget/ViewAnimator;

    invoke-virtual {v5, v4}, Landroid/widget/ViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2899
    .local v0, "child":Landroid/view/View;
    instance-of v5, v0, Lcom/meizu/widget/inputmethod/CoverView;

    if-eqz v5, :cond_2

    move-object v1, v0

    .line 2900
    check-cast v1, Lcom/meizu/widget/inputmethod/CoverView;

    .line 2904
    .local v1, "coverView":Lcom/meizu/widget/inputmethod/CoverView;
    :goto_1
    if-eqz v1, :cond_0

    .line 2905
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Lcom/meizu/widget/inputmethod/CoverView;->onPrivateImeOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 2906
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mFlymeCoverFrame:Landroid/widget/ViewAnimator;

    invoke-virtual {v5}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    move-result v5

    if-eq v5, v4, :cond_0

    .line 2907
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mFlymeCoverFrame:Landroid/widget/ViewAnimator;

    invoke-virtual {v5, v4}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 2915
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "coverView":Lcom/meizu/widget/inputmethod/CoverView;
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "whichChild":I
    :cond_0
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mFlymeCoverView:Lcom/meizu/widget/inputmethod/CoverView;

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mFlymeCoverView:Lcom/meizu/widget/inputmethod/CoverView;

    if-eq v5, v1, :cond_1

    .line 2916
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mFlymeCoverView:Lcom/meizu/widget/inputmethod/CoverView;

    invoke-virtual {v5, v6, v6}, Lcom/meizu/widget/inputmethod/CoverView;->onPrivateImeOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 2918
    :cond_1
    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mFlymeCoverView:Lcom/meizu/widget/inputmethod/CoverView;

    .line 2891
    return-void

    .line 2902
    .restart local v0    # "child":Landroid/view/View;
    .local v1, "coverView":Lcom/meizu/widget/inputmethod/CoverView;
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v4    # "whichChild":I
    :cond_2
    sget v5, Lcom/flyme/internal/R$id;->input_method_cover_view:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "coverView":Lcom/meizu/widget/inputmethod/CoverView;
    check-cast v1, Lcom/meizu/widget/inputmethod/CoverView;

    .local v1, "coverView":Lcom/meizu/widget/inputmethod/CoverView;
    goto :goto_1

    .line 2895
    .end local v0    # "child":Landroid/view/View;
    .local v1, "coverView":Lcom/meizu/widget/inputmethod/CoverView;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method static updateCoverViewShown(Landroid/inputmethodservice/InputMethodService;)V
    .locals 3
    .param p0, "ims"    # Landroid/inputmethodservice/InputMethodService;

    .prologue
    const/4 v2, 0x0

    .line 2876
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-nez v1, :cond_2

    .line 2877
    invoke-static {p0, v2}, Landroid/inputmethodservice/FlymeInputMethodServiceInjector;->updateCoverView(Landroid/inputmethodservice/InputMethodService;Ljava/lang/String;)V

    .line 2881
    :goto_0
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mFlymeCoverView:Lcom/meizu/widget/inputmethod/CoverView;

    if-nez v1, :cond_3

    const/16 v0, 0x8

    .line 2882
    .local v0, "visibility":I
    :goto_1
    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mFlymeCoverFrame:Landroid/widget/ViewAnimator;

    invoke-virtual {v1}, Landroid/widget/ViewAnimator;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 2883
    if-nez v0, :cond_0

    .line 2884
    invoke-static {p0}, Landroid/inputmethodservice/FlymeInputMethodServiceInjector;->updateCoverHeight(Landroid/inputmethodservice/InputMethodService;)V

    .line 2886
    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mFlymeCoverFrame:Landroid/widget/ViewAnimator;

    invoke-virtual {v1, v0}, Landroid/widget/ViewAnimator;->setVisibility(I)V

    .line 2887
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mFlymeCoverFrame:Landroid/widget/ViewAnimator;

    invoke-virtual {v1}, Landroid/widget/ViewAnimator;->bringToFront()V

    .line 2875
    :cond_1
    return-void

    .line 2879
    .end local v0    # "visibility":I
    :cond_2
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v1, v1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/inputmethodservice/FlymeInputMethodServiceInjector;->updateCoverView(Landroid/inputmethodservice/InputMethodService;Ljava/lang/String;)V

    goto :goto_0

    .line 2881
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "visibility":I
    goto :goto_1
.end method
