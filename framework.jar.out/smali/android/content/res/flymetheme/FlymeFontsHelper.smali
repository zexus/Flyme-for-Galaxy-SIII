.class public Landroid/content/res/flymetheme/FlymeFontsHelper;
.super Ljava/lang/Object;
.source "FlymeFontsHelper.java"


# static fields
.field static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "FlymeFontsHelper"

.field private static curTypefacePath:Ljava/lang/String; = null

.field private static mCreated:Z = false

.field private static final sFONT_PATH:Ljava/lang/String; = "data/data/com.meizu.customizecenter/font"

.field private static sFlymeDefaultTypeface:Landroid/graphics/Typeface; = null

.field private static final sMULTI_OPEN_USER_SDCARD_FONT_PATH:Ljava/lang/String; = "/storage/emulated/999/Customize/font"

.field private static final sMULTI_OPEN_USER_SDCARD_OTF_FONT_PATH:Ljava/lang/String; = "/storage/emulated/999/Customize/font/flymeFont.otf"

.field private static final sMULTI_OPEN_USER_SDCARD_TTF_FONT_PATH:Ljava/lang/String; = "/storage/emulated/999/Customize/font/flymeFont.ttf"

.field private static final sOTF_FONT_PATH:Ljava/lang/String; = "data/data/com.meizu.customizecenter/font/flymeFont.otf"

.field private static final sTTF_FONT_PATH:Ljava/lang/String; = "data/data/com.meizu.customizecenter/font/flymeFont.ttf"

.field private static sWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 14
    const-string/jumbo v0, "FlymeFontsHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/content/res/flymetheme/FlymeFontsHelper;->DEBUG:Z

    .line 24
    sput-object v2, Landroid/content/res/flymetheme/FlymeFontsHelper;->curTypefacePath:Ljava/lang/String;

    .line 26
    sput-object v2, Landroid/content/res/flymetheme/FlymeFontsHelper;->sWhiteList:Ljava/util/List;

    .line 28
    sput-object v2, Landroid/content/res/flymetheme/FlymeFontsHelper;->sFlymeDefaultTypeface:Landroid/graphics/Typeface;

    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Landroid/content/res/flymetheme/FlymeFontsHelper;->mCreated:Z

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanflymeTypeface()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 83
    sput-object v0, Landroid/content/res/flymetheme/FlymeFontsHelper;->curTypefacePath:Ljava/lang/String;

    .line 84
    sput-object v0, Landroid/content/res/flymetheme/FlymeFontsHelper;->sFlymeDefaultTypeface:Landroid/graphics/Typeface;

    .line 85
    const/4 v0, 0x0

    sput-boolean v0, Landroid/content/res/flymetheme/FlymeFontsHelper;->mCreated:Z

    .line 82
    return-void
.end method

.method private static generateNewTypeface()V
    .locals 8

    .prologue
    .line 34
    :try_start_0
    const-string/jumbo v3, "data/data/com.meizu.customizecenter/font"

    .line 35
    .local v3, "fontPath":Ljava/lang/String;
    const-string/jumbo v5, "data/data/com.meizu.customizecenter/font/flymeFont.ttf"

    .line 36
    .local v5, "ttfFontPath":Ljava/lang/String;
    const-string/jumbo v4, "data/data/com.meizu.customizecenter/font/flymeFont.otf"

    .line 38
    .local v4, "otfFontPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .local v0, "checkFontPathMount":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 43
    return-void

    .line 45
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .local v1, "customFontFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 47
    sput-object v5, Landroid/content/res/flymetheme/FlymeFontsHelper;->curTypefacePath:Ljava/lang/String;

    .line 48
    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v6

    sput-object v6, Landroid/content/res/flymetheme/FlymeFontsHelper;->sFlymeDefaultTypeface:Landroid/graphics/Typeface;

    .line 59
    :goto_0
    const/4 v6, 0x1

    sput-boolean v6, Landroid/content/res/flymetheme/FlymeFontsHelper;->mCreated:Z

    .line 32
    .end local v0    # "checkFontPathMount":Ljava/io/File;
    .end local v1    # "customFontFile":Ljava/io/File;
    .end local v4    # "otfFontPath":Ljava/lang/String;
    .end local v5    # "ttfFontPath":Ljava/lang/String;
    :goto_1
    return-void

    .line 50
    .restart local v0    # "checkFontPathMount":Ljava/io/File;
    .restart local v1    # "customFontFile":Ljava/io/File;
    .restart local v4    # "otfFontPath":Ljava/lang/String;
    .restart local v5    # "ttfFontPath":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/io/File;

    .end local v1    # "customFontFile":Ljava/io/File;
    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .restart local v1    # "customFontFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 52
    sput-object v4, Landroid/content/res/flymetheme/FlymeFontsHelper;->curTypefacePath:Ljava/lang/String;

    .line 53
    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v6

    sput-object v6, Landroid/content/res/flymetheme/FlymeFontsHelper;->sFlymeDefaultTypeface:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    .end local v0    # "checkFontPathMount":Ljava/io/File;
    .end local v1    # "customFontFile":Ljava/io/File;
    .end local v4    # "otfFontPath":Ljava/lang/String;
    .end local v5    # "ttfFontPath":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 61
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "FlymeFontsHelper"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 55
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "checkFontPathMount":Ljava/io/File;
    .restart local v1    # "customFontFile":Ljava/io/File;
    .restart local v4    # "otfFontPath":Ljava/lang/String;
    .restart local v5    # "ttfFontPath":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    :try_start_1
    sput-object v6, Landroid/content/res/flymetheme/FlymeFontsHelper;->curTypefacePath:Ljava/lang/String;

    .line 56
    const/4 v6, 0x0

    sput-object v6, Landroid/content/res/flymetheme/FlymeFontsHelper;->sFlymeDefaultTypeface:Landroid/graphics/Typeface;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static getCurFlymeTypefacePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Landroid/content/res/flymetheme/FlymeFontsHelper;->curTypefacePath:Ljava/lang/String;

    return-object v0
.end method

.method public static getflymeTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 76
    sget-boolean v0, Landroid/content/res/flymetheme/FlymeFontsHelper;->mCreated:Z

    if-nez v0, :cond_0

    sget-object v0, Landroid/content/res/flymetheme/FlymeFontsHelper;->sFlymeDefaultTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 77
    invoke-static {}, Landroid/content/res/flymetheme/FlymeFontsHelper;->generateNewTypeface()V

    .line 79
    :cond_0
    sget-object v0, Landroid/content/res/flymetheme/FlymeFontsHelper;->sFlymeDefaultTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static hasFlymeTypeface()Z
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Landroid/content/res/flymetheme/FlymeFontsHelper;->getflymeTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDefaultTypeface(Landroid/graphics/Typeface;)Z
    .locals 1
    .param p0, "curTypeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 66
    if-eqz p0, :cond_0

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    if-ne p0, v0, :cond_1

    .line 69
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 67
    :cond_1
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    if-eq p0, v0, :cond_0

    .line 68
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    if-eq p0, v0, :cond_0

    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    if-eq p0, v0, :cond_0

    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Landroid/graphics/Typeface;->isSystemTypeface(Landroid/graphics/Typeface;)Z

    move-result v0

    .line 66
    if-nez v0, :cond_0

    .line 71
    const/4 v0, 0x0

    return v0
.end method
