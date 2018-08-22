.class final Landroid/app/FlymeResourcesManagerInjector;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 971
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static freeCaches(I)V
    .locals 1
    .param p0, "changes"    # I

    .prologue
    .line 974
    and-int/lit16 v0, p0, 0x4000

    if-eqz v0, :cond_0

    .line 977
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    .line 979
    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    .line 980
    invoke-static {}, Landroid/content/res/flymetheme/iconfilter/IconFilter;->getInstance()Landroid/content/res/flymetheme/iconfilter/IconFilter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/flymetheme/iconfilter/IconFilter;->cleanFilter()V

    .line 982
    :cond_0
    const v0, 0x8000

    and-int/2addr v0, p0

    if-eqz v0, :cond_1

    .line 985
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    .line 987
    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    .line 989
    invoke-static {}, Landroid/content/res/flymetheme/FlymeFontsHelper;->cleanflymeTypeface()V

    .line 973
    :cond_1
    return-void
.end method
