.class public final Landroid/app/FlymeLoadedApkInjector;
.super Ljava/lang/Object;
.source "FlymeLoadedApkInjector.java"


# static fields
.field private static final FLYME_INTERNAL_PACKAGE:Ljava/lang/String; = "com.flyme.internal"

.field private static final FLYME_PACKAGE:Ljava/lang/String; = "flyme"

.field private static flymePackageId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cleanFlymeTypeface()V
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Landroid/content/res/flymetheme/FlymeFontsHelper;->cleanflymeTypeface()V

    .line 29
    invoke-static {}, Landroid/content/res/flymetheme/iconfilter/IconFilter;->getInstance()Landroid/content/res/flymetheme/iconfilter/IconFilter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/flymetheme/iconfilter/IconFilter;->cleanFilter()V

    .line 26
    return-void
.end method

.method public static getFlymePackageId()I
    .locals 1

    .prologue
    .line 23
    sget v0, Landroid/app/FlymeLoadedApkInjector;->flymePackageId:I

    return v0
.end method

.method static rewriteRValues(Landroid/app/LoadedApk;Ljava/lang/ClassLoader;Ljava/lang/String;I)V
    .locals 1
    .param p0, "loadedApk"    # Landroid/app/LoadedApk;
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/LoadedApk;->flymeInvokeMethodRewriteRValues(Ljava/lang/ClassLoader;Ljava/lang/String;I)V

    .line 16
    const-string/jumbo v0, "flyme"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    sput p3, Landroid/app/FlymeLoadedApkInjector;->flymePackageId:I

    .line 18
    const-string/jumbo v0, "com.flyme.internal"

    invoke-virtual {p0, p1, v0, p3}, Landroid/app/LoadedApk;->flymeInvokeMethodRewriteRValues(Ljava/lang/ClassLoader;Ljava/lang/String;I)V

    .line 14
    :cond_0
    return-void
.end method
