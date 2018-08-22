.class final Landroid/app/FlymeActivityThreadInjector;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/FlymeActivityThreadInjector$ScrollActivityData;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setFlymeThemeResource(Landroid/app/LoadedApk;Landroid/content/res/Resources;)V
    .locals 1
    .param p0, "pkgInfo"    # Landroid/app/LoadedApk;
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 6258
    if-eqz p1, :cond_0

    .line 6259
    invoke-virtual {p0}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->setFlymeThemeResource(Ljava/lang/String;)V

    .line 6257
    :cond_0
    return-void
.end method
