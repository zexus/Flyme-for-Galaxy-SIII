.class final Lcom/android/server/wm/FlymeAppTransitionInjector;
.super Ljava/lang/Object;
.source "AppTransition.java"


# static fields
.field private static mFlymeAnimArray:Landroid/util/SparseIntArray;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2067
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 2072
    invoke-static {p1}, Lcom/android/server/wm/FlymeAppTransitionInjector;->overlayFlymeAnim(I)I

    move-result v0

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method private static overlayFlymeAnim(I)I
    .locals 6
    .param p0, "id"    # I

    .prologue
    .line 2076
    sget-object v2, Lcom/android/server/wm/FlymeAppTransitionInjector;->mFlymeAnimArray:Landroid/util/SparseIntArray;

    if-nez v2, :cond_1

    .line 2077
    new-instance v2, Landroid/util/SparseIntArray;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Landroid/util/SparseIntArray;-><init>(I)V

    sput-object v2, Lcom/android/server/wm/FlymeAppTransitionInjector;->mFlymeAnimArray:Landroid/util/SparseIntArray;

    .line 2078
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 2079
    .local v1, "res":Landroid/content/res/Resources;
    if-nez v1, :cond_0

    .line 2080
    return p0

    .line 2082
    :cond_0
    sget-object v2, Lcom/android/server/wm/FlymeAppTransitionInjector;->mFlymeAnimArray:Landroid/util/SparseIntArray;

    const-string/jumbo v3, "activity_open_enter"

    const-string/jumbo v4, "anim"

    const-string/jumbo v5, "android"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/internal/R$anim;->mz_activity_to_next_open_enter:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2083
    sget-object v2, Lcom/android/server/wm/FlymeAppTransitionInjector;->mFlymeAnimArray:Landroid/util/SparseIntArray;

    const-string/jumbo v3, "activity_open_exit"

    const-string/jumbo v4, "anim"

    const-string/jumbo v5, "android"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/internal/R$anim;->mz_activity_to_next_open_exit:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2084
    sget-object v2, Lcom/android/server/wm/FlymeAppTransitionInjector;->mFlymeAnimArray:Landroid/util/SparseIntArray;

    const-string/jumbo v3, "activity_close_enter"

    const-string/jumbo v4, "anim"

    const-string/jumbo v5, "android"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/internal/R$anim;->mz_activity_to_next_close_enter:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2085
    sget-object v2, Lcom/android/server/wm/FlymeAppTransitionInjector;->mFlymeAnimArray:Landroid/util/SparseIntArray;

    const-string/jumbo v3, "activity_close_exit"

    const-string/jumbo v4, "anim"

    const-string/jumbo v5, "android"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/internal/R$anim;->mz_activity_to_next_close_exit:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2086
    sget-object v2, Lcom/android/server/wm/FlymeAppTransitionInjector;->mFlymeAnimArray:Landroid/util/SparseIntArray;

    const-string/jumbo v3, "task_open_enter"

    const-string/jumbo v4, "anim"

    const-string/jumbo v5, "android"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/internal/R$anim;->mz_new_app_to_next_open_enter:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2087
    sget-object v2, Lcom/android/server/wm/FlymeAppTransitionInjector;->mFlymeAnimArray:Landroid/util/SparseIntArray;

    const-string/jumbo v3, "task_open_exit"

    const-string/jumbo v4, "anim"

    const-string/jumbo v5, "android"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/internal/R$anim;->mz_new_app_to_next_open_exit:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2088
    sget-object v2, Lcom/android/server/wm/FlymeAppTransitionInjector;->mFlymeAnimArray:Landroid/util/SparseIntArray;

    const-string/jumbo v3, "task_close_enter"

    const-string/jumbo v4, "anim"

    const-string/jumbo v5, "android"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/internal/R$anim;->mz_new_app_to_next_close_enter:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2089
    sget-object v2, Lcom/android/server/wm/FlymeAppTransitionInjector;->mFlymeAnimArray:Landroid/util/SparseIntArray;

    const-string/jumbo v3, "task_close_exit"

    const-string/jumbo v4, "anim"

    const-string/jumbo v5, "android"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/internal/R$anim;->mz_new_app_to_next_close_exit:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2090
    sget-object v2, Lcom/android/server/wm/FlymeAppTransitionInjector;->mFlymeAnimArray:Landroid/util/SparseIntArray;

    const-string/jumbo v3, "wallpaper_open_enter"

    const-string/jumbo v4, "anim"

    const-string/jumbo v5, "android"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/internal/R$anim;->mz_wallpaper_close_enter:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2091
    sget-object v2, Lcom/android/server/wm/FlymeAppTransitionInjector;->mFlymeAnimArray:Landroid/util/SparseIntArray;

    const-string/jumbo v3, "wallpaper_open_exit"

    const-string/jumbo v4, "anim"

    const-string/jumbo v5, "android"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/internal/R$anim;->mz_wallpaper_close_exit:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2092
    sget-object v2, Lcom/android/server/wm/FlymeAppTransitionInjector;->mFlymeAnimArray:Landroid/util/SparseIntArray;

    const-string/jumbo v3, "wallpaper_close_enter"

    const-string/jumbo v4, "anim"

    const-string/jumbo v5, "android"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/internal/R$anim;->mz_wallpaper_open_enter:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2093
    sget-object v2, Lcom/android/server/wm/FlymeAppTransitionInjector;->mFlymeAnimArray:Landroid/util/SparseIntArray;

    const-string/jumbo v3, "wallpaper_close_exit"

    const-string/jumbo v4, "anim"

    const-string/jumbo v5, "android"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/internal/R$anim;->mz_wallpaper_open_exit:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2095
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_1
    sget-object v2, Lcom/android/server/wm/FlymeAppTransitionInjector;->mFlymeAnimArray:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 2096
    .local v0, "overlayId":I
    if-lez v0, :cond_2

    .line 2097
    return v0

    .line 2099
    :cond_2
    return p0
.end method
