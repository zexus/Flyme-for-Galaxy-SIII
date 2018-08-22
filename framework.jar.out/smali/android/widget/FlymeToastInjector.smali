.class final Landroid/widget/FlymeToastInjector;
.super Ljava/lang/Object;
.source "Toast.java"


# static fields
.field private static mPkgName:Ljava/lang/String;

.field private static mText:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 542
    const-string/jumbo v0, ""

    sput-object v0, Landroid/widget/FlymeToastInjector;->mText:Ljava/lang/CharSequence;

    .line 543
    const-string/jumbo v0, ""

    sput-object v0, Landroid/widget/FlymeToastInjector;->mPkgName:Ljava/lang/String;

    .line 539
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkSameMsg(Landroid/widget/Toast;)Z
    .locals 7
    .param p0, "toast"    # Landroid/widget/Toast;

    .prologue
    const/4 v6, 0x0

    .line 548
    iget-object v4, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 550
    .local v2, "pkg":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    const v5, 0x102000b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 551
    .local v3, "tv":Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 552
    .local v1, "msg":Ljava/lang/CharSequence;
    sget-object v4, Landroid/widget/FlymeToastInjector;->mPkgName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Landroid/widget/FlymeToastInjector;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    return v4

    .line 553
    :cond_0
    sput-object v2, Landroid/widget/FlymeToastInjector;->mPkgName:Ljava/lang/String;

    .line 554
    sput-object v1, Landroid/widget/FlymeToastInjector;->mText:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    return v6

    .line 556
    .end local v1    # "msg":Ljava/lang/CharSequence;
    .end local v3    # "tv":Landroid/widget/TextView;
    :catch_0
    move-exception v0

    .line 557
    .local v0, "e":Ljava/lang/Exception;
    return v6
.end method

.method static resetFlymeExtraFields()V
    .locals 1

    .prologue
    .line 564
    const-string/jumbo v0, ""

    sput-object v0, Landroid/widget/FlymeToastInjector;->mPkgName:Ljava/lang/String;

    .line 565
    const-string/jumbo v0, ""

    sput-object v0, Landroid/widget/FlymeToastInjector;->mText:Ljava/lang/CharSequence;

    .line 562
    return-void
.end method
