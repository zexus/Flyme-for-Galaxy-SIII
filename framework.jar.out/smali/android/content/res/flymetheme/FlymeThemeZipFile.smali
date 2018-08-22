.class public Landroid/content/res/flymetheme/FlymeThemeZipFile;
.super Ljava/lang/Object;
.source "FlymeThemeZipFile.java"


# static fields
.field private static final PNG_2_OTHER_FORMAT_PIC_FEATURE_APP_WHITE_LIST:[Ljava/lang/String;

.field private static final PROPERTY_KEY_USE_FLYME_ICON_STYLE:Ljava/lang/String; = "persist.sys.use.flyme.icon"


# instance fields
.field private mCustomZipfFile:Ljava/util/zip/ZipFile;

.field private mFlymeThemeZipFile:Ljava/util/zip/ZipFile;

.field private mInputStreamPathTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedLoadCustomFile:Z

.field private mNeedLoadFlymeIconFromSystemPath:Z

.field private mNeedLoadThemeFile:Z

.field private mSystemFlymeIconZipFile:Ljava/util/zip/ZipFile;

.field private mUseCustomTheme:Z

.field private mUseFlymeIcon:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    .line 36
    const-string/jumbo v1, "com.android.calendar"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 37
    const-string/jumbo v1, "com.android.dialer"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 38
    const-string/jumbo v1, "com.android.mms"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 39
    const-string/jumbo v1, "com.android.settings"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 40
    const-string/jumbo v1, "com.meizu.filemanager"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 41
    const-string/jumbo v1, "com.meizu.flyme.input"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 42
    const-string/jumbo v1, "com.meizu.flyme.wallet"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 43
    const-string/jumbo v1, "com.meizu.flyme.weather"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 44
    const-string/jumbo v1, "com.meizu.media.music"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 45
    const-string/jumbo v1, "com.meizu.media.reader"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 46
    const-string/jumbo v1, "com.meizu.net.pedometer"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 47
    const-string/jumbo v1, "com.meizu.notepaper"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 48
    const-string/jumbo v1, "com.meizu.safe"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 35
    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->PNG_2_OTHER_FORMAT_PIC_FEATURE_APP_WHITE_LIST:[Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean v0, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mUseFlymeIcon:Z

    .line 19
    iput-boolean v0, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mUseCustomTheme:Z

    .line 25
    iput-boolean v0, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mNeedLoadThemeFile:Z

    .line 26
    iput-boolean v0, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mNeedLoadFlymeIconFromSystemPath:Z

    .line 27
    iput-boolean v0, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mNeedLoadCustomFile:Z

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mInputStreamPathTypeMap:Ljava/util/HashMap;

    .line 56
    const-string/jumbo v0, "persist.sys.use.flyme.icon"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    const-string/jumbo v1, "true"

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mUseFlymeIcon:Z

    .line 58
    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeUtils;->isUseCustomSystem()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mUseCustomTheme:Z

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FlymeThemeZipFile: mUseFlymeIcon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mUseFlymeIcon:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mUseCustomTheme: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 60
    iget-boolean v1, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mUseCustomTheme:Z

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/res/flymetheme/FlymeLogUtil;->w(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method private get3rdPartRes(Ljava/lang/String;Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/util/TypedValue;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 111
    const-string/jumbo v5, "FlymeThemeZipFile: get3rdPartRes: start"

    invoke-static {v5}, Landroid/content/res/flymetheme/FlymeLogUtil;->w(Ljava/lang/String;)V

    .line 112
    const/4 v3, 0x0

    .line 113
    .local v3, "iStream":Ljava/io/InputStream;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "/data/data/com.meizu.customizecenter/theme/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, "zipFilePath":Ljava/lang/String;
    iget-object v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mFlymeThemeZipFile:Ljava/util/zip/ZipFile;

    if-nez v5, :cond_0

    iget-boolean v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mNeedLoadThemeFile:Z

    if-eqz v5, :cond_0

    .line 116
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 119
    :try_start_0
    new-instance v5, Ljava/util/zip/ZipFile;

    const/4 v6, 0x1

    invoke-direct {v5, v2, v6}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    iput-object v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mFlymeThemeZipFile:Ljava/util/zip/ZipFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    iput-boolean v8, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mNeedLoadThemeFile:Z

    .line 130
    .end local v2    # "file":Ljava/io/File;
    :cond_0
    :goto_1
    iget-object v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mFlymeThemeZipFile:Ljava/util/zip/ZipFile;

    if-eqz v5, :cond_2

    .line 131
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "FlymeThemeZipFile: packageName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/content/res/flymetheme/FlymeLogUtil;->w(Ljava/lang/String;)V

    .line 132
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "FlymeThemeZipFile: filePath : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/content/res/flymetheme/FlymeLogUtil;->w(Ljava/lang/String;)V

    .line 134
    invoke-direct {p0, p2, p1}, Landroid/content/res/flymetheme/FlymeThemeZipFile;->replace2PngFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 135
    iget-object v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mFlymeThemeZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v5, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 137
    .local v1, "entry":Ljava/util/zip/ZipEntry;
    if-nez v1, :cond_1

    .line 138
    const-string/jumbo v5, "-xxhdpi"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 139
    iget-object v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mFlymeThemeZipFile:Ljava/util/zip/ZipFile;

    invoke-direct {p0, p2, p3}, Landroid/content/res/flymetheme/FlymeThemeZipFile;->replacePathToxxhdpi(Ljava/lang/String;Landroid/util/TypedValue;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 140
    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    .line 141
    const/16 v5, 0x1e0

    iput v5, p3, Landroid/util/TypedValue;->density:I

    .line 146
    :cond_1
    if-eqz v1, :cond_2

    .line 148
    :try_start_1
    iget-object v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mFlymeThemeZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v5, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 154
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    .end local v3    # "iStream":Ljava/io/InputStream;
    :cond_2
    :goto_2
    return-object v3

    .line 120
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "iStream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "get theme ZipFile fail msg == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", packageName == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v8}, Landroid/content/res/flymetheme/FlymeLogUtil;->e(Ljava/lang/String;Z)V

    .line 122
    iput-object v7, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mFlymeThemeZipFile:Ljava/util/zip/ZipFile;

    goto/16 :goto_0

    .line 126
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mNeedLoadThemeFile:Z

    goto/16 :goto_1

    .line 149
    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "entry":Ljava/util/zip/ZipEntry;
    :catch_1
    move-exception v0

    .line 150
    .restart local v0    # "e":Ljava/io/IOException;
    iput-object v7, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mFlymeThemeZipFile:Ljava/util/zip/ZipFile;

    goto :goto_2
.end method

.method private getCustomRes(Ljava/lang/String;Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/util/TypedValue;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 236
    const-string/jumbo v5, "FlymeThemeZipFile: getCustomRes: start"

    invoke-static {v5}, Landroid/content/res/flymetheme/FlymeLogUtil;->w(Ljava/lang/String;)V

    .line 237
    const/4 v3, 0x0

    .line 238
    .local v3, "iStream":Ljava/io/InputStream;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "/custom/meizu/theme/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 239
    .local v4, "zipDefFilePath":Ljava/lang/String;
    iget-object v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mCustomZipfFile:Ljava/util/zip/ZipFile;

    if-nez v5, :cond_0

    iget-boolean v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mNeedLoadCustomFile:Z

    if-eqz v5, :cond_0

    .line 240
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 241
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 243
    :try_start_0
    new-instance v5, Ljava/util/zip/ZipFile;

    const/4 v6, 0x1

    invoke-direct {v5, v2, v6}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    iput-object v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mCustomZipfFile:Ljava/util/zip/ZipFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    iput-boolean v8, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mNeedLoadCustomFile:Z

    .line 251
    :goto_1
    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeUtils;->isUseCustomSystem()Z

    move-result v5

    iput-boolean v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mUseCustomTheme:Z

    .line 253
    .end local v2    # "file":Ljava/io/File;
    :cond_0
    iget-object v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mFlymeThemeZipFile:Ljava/util/zip/ZipFile;

    if-nez v5, :cond_2

    iget-boolean v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mUseCustomTheme:Z

    if-eqz v5, :cond_2

    .line 254
    iget-object v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mCustomZipfFile:Ljava/util/zip/ZipFile;

    if-eqz v5, :cond_2

    .line 255
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "FlymeThemeZipFile: USE_CUSTOM_DEF_THEME-packageName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/content/res/flymetheme/FlymeLogUtil;->w(Ljava/lang/String;)V

    .line 257
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "FlymeThemeZipFile: USE_CUSTOM_DEF_THEME-filePath : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/content/res/flymetheme/FlymeLogUtil;->w(Ljava/lang/String;)V

    .line 258
    iget-object v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mCustomZipfFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v5, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 259
    .local v1, "entry":Ljava/util/zip/ZipEntry;
    if-nez v1, :cond_1

    .line 260
    iget-object v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mCustomZipfFile:Ljava/util/zip/ZipFile;

    invoke-direct {p0, p2, p3}, Landroid/content/res/flymetheme/FlymeThemeZipFile;->replacePathTo640dpi(Ljava/lang/String;Landroid/util/TypedValue;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 261
    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    .line 262
    const/16 v5, 0x280

    iput v5, p3, Landroid/util/TypedValue;->density:I

    .line 265
    :cond_1
    if-eqz v1, :cond_2

    .line 267
    :try_start_1
    iget-object v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mCustomZipfFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v5, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 274
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    .end local v3    # "iStream":Ljava/io/InputStream;
    :cond_2
    :goto_2
    return-object v3

    .line 244
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "iStream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/io/IOException;
    iput-object v7, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mCustomZipfFile:Ljava/util/zip/ZipFile;

    goto :goto_0

    .line 249
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mNeedLoadCustomFile:Z

    goto :goto_1

    .line 268
    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "entry":Ljava/util/zip/ZipEntry;
    :catch_1
    move-exception v0

    .line 269
    .restart local v0    # "e":Ljava/io/IOException;
    iput-object v7, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mCustomZipfFile:Ljava/util/zip/ZipFile;

    goto :goto_2
.end method

.method private getFlymeIconISFromSdcardPath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appIconFileName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 175
    iget-boolean v1, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mUseFlymeIcon:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "icons"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FlymeThemeZipFile: getFlymeIconISFromSdcardPath: start appIconFileName == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeLogUtil;->w(Ljava/lang/String;)V

    .line 179
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mFlymeThemeZipFile:Ljava/util/zip/ZipFile;

    if-nez v1, :cond_1

    .line 181
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/sdcard/Customize/.FlymeIcon/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 176
    :cond_0
    return-object v4

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FlymeThemeZipFile: getFlymeIconISFromSdcardPath: File Not Found packagName == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", file == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeLogUtil;->w(Ljava/lang/String;)V

    .line 186
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    return-object v4
.end method

.method private getFlymeIconISFromSystemPath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appIconFileName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 190
    iget-boolean v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mUseFlymeIcon:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "icons"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 193
    const-string/jumbo v5, "FlymeThemeZipFile: getFlymeIconISFromSystemPath: start"

    invoke-static {v5}, Landroid/content/res/flymetheme/FlymeLogUtil;->w(Ljava/lang/String;)V

    .line 194
    const/4 v3, 0x0

    .line 195
    .local v3, "iStream":Ljava/io/InputStream;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "/system/customizecenter/theme/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 196
    .local v4, "zipDefFilePath":Ljava/lang/String;
    iget-object v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mSystemFlymeIconZipFile:Ljava/util/zip/ZipFile;

    if-nez v5, :cond_0

    iget-boolean v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mNeedLoadFlymeIconFromSystemPath:Z

    if-eqz v5, :cond_0

    .line 197
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 200
    :try_start_0
    new-instance v5, Ljava/util/zip/ZipFile;

    const/4 v6, 0x1

    invoke-direct {v5, v2, v6}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    iput-object v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mSystemFlymeIconZipFile:Ljava/util/zip/ZipFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_0
    iput-boolean v8, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mNeedLoadFlymeIconFromSystemPath:Z

    .line 209
    .end local v2    # "file":Ljava/io/File;
    :cond_0
    :goto_1
    iget-object v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mFlymeThemeZipFile:Ljava/util/zip/ZipFile;

    if-nez v5, :cond_1

    .line 210
    iget-object v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mSystemFlymeIconZipFile:Ljava/util/zip/ZipFile;

    if-eqz v5, :cond_1

    .line 211
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "FlymeThemeZipFile: USE_SYSTEM_DEF_THEME-packageName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/content/res/flymetheme/FlymeLogUtil;->w(Ljava/lang/String;)V

    .line 213
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "FlymeThemeZipFile: USE_SYSTEM_DEF_THEME-filePath : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/content/res/flymetheme/FlymeLogUtil;->w(Ljava/lang/String;)V

    .line 214
    iget-object v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mSystemFlymeIconZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v5, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 215
    .local v1, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v1, :cond_1

    .line 217
    :try_start_1
    iget-object v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mSystemFlymeIconZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v5, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 224
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    .end local v3    # "iStream":Ljava/io/InputStream;
    :cond_1
    :goto_2
    return-object v3

    .line 191
    .end local v4    # "zipDefFilePath":Ljava/lang/String;
    :cond_2
    return-object v7

    .line 201
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "iStream":Ljava/io/InputStream;
    .restart local v4    # "zipDefFilePath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/io/IOException;
    iput-object v7, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mSystemFlymeIconZipFile:Ljava/util/zip/ZipFile;

    goto :goto_0

    .line 206
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mNeedLoadFlymeIconFromSystemPath:Z

    goto :goto_1

    .line 218
    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "entry":Ljava/util/zip/ZipEntry;
    :catch_1
    move-exception v0

    .line 219
    .restart local v0    # "e":Ljava/io/IOException;
    iput-object v7, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mSystemFlymeIconZipFile:Ljava/util/zip/ZipFile;

    goto :goto_2
.end method

.method private inWhiteList(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 166
    sget-object v3, Landroid/content/res/flymetheme/FlymeThemeZipFile;->PNG_2_OTHER_FORMAT_PIC_FEATURE_APP_WHITE_LIST:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 167
    .local v0, "whiteListPackageName":Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 168
    const/4 v1, 0x1

    return v1

    .line 166
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    .end local v0    # "whiteListPackageName":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method private replace2PngFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 158
    const-string/jumbo v1, "res/drawable"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, ".png"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p2}, Landroid/content/res/flymetheme/FlymeThemeZipFile;->inWhiteList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    const-string/jumbo v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "fileName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "res/drawable-xxhdpi-v4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 159
    .end local v0    # "fileName":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private replacePathTo640dpi(Ljava/lang/String;Landroid/util/TypedValue;)Ljava/lang/String;
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/util/TypedValue;

    .prologue
    .line 291
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "old-------- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeLogUtil;->w(Ljava/lang/String;)V

    .line 292
    const-string/jumbo v2, "xxhdpi"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "drawable-"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 294
    const-string/jumbo v3, "drawable-640dpi"

    .line 293
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 295
    const-string/jumbo v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 293
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 296
    .local v1, "newPath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "new------- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeLogUtil;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    return-object v1

    .line 299
    .end local v1    # "newPath":Ljava/lang/String;
    :cond_0
    return-object p1

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/Exception;
    return-object p1
.end method

.method private replacePathToxxhdpi(Ljava/lang/String;Landroid/util/TypedValue;)Ljava/lang/String;
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/util/TypedValue;

    .prologue
    .line 279
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "old-------- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeLogUtil;->w(Ljava/lang/String;)V

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "drawable-"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "drawable-xxh"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 281
    const-string/jumbo v3, "dpi-"

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 280
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 282
    .local v1, "newPath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "new------- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeLogUtil;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    return-object v1

    .line 284
    .end local v1    # "newPath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Ljava/lang/Exception;
    return-object p1
.end method

.method private setInputStreamPathType(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "inputStreamPathType"    # I

    .prologue
    .line 106
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mInputStreamPathTypeMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 306
    iget-boolean v1, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mUseFlymeIcon:Z

    if-eqz v1, :cond_0

    .line 307
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mSystemFlymeIconZipFile:Ljava/util/zip/ZipFile;

    if-eqz v1, :cond_0

    .line 309
    :try_start_0
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mSystemFlymeIconZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :goto_0
    iput-object v2, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mSystemFlymeIconZipFile:Ljava/util/zip/ZipFile;

    .line 316
    :cond_0
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mFlymeThemeZipFile:Ljava/util/zip/ZipFile;

    if-eqz v1, :cond_1

    .line 318
    :try_start_1
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mFlymeThemeZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 322
    :goto_1
    iput-object v2, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mFlymeThemeZipFile:Ljava/util/zip/ZipFile;

    .line 324
    :cond_1
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mCustomZipfFile:Ljava/util/zip/ZipFile;

    if-eqz v1, :cond_2

    .line 326
    :try_start_2
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mCustomZipfFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 330
    :goto_2
    iput-object v2, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mCustomZipfFile:Ljava/util/zip/ZipFile;

    .line 332
    :cond_2
    iput-boolean v3, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mNeedLoadThemeFile:Z

    .line 333
    iput-boolean v3, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mNeedLoadFlymeIconFromSystemPath:Z

    .line 334
    iput-boolean v3, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mNeedLoadCustomFile:Z

    .line 335
    const-string/jumbo v1, "persist.sys.use.flyme.icon"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 336
    const-string/jumbo v2, "true"

    .line 335
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mUseFlymeIcon:Z

    .line 337
    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeUtils;->isUseCustomSystem()Z

    move-result v1

    iput-boolean v1, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mUseCustomTheme:Z

    .line 338
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mInputStreamPathTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "clean: mUseFlymeIcon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mUseFlymeIcon:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeLogUtil;->w(Ljava/lang/String;)V

    .line 305
    return-void

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 319
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 320
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 327
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 328
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation build Ljava/lang/FindBugsSuppressWarnings;
        value = {
            "FI_EMPTY"
        }
    .end annotation

    .prologue
    .line 345
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 346
    invoke-virtual {p0}, Landroid/content/res/flymetheme/FlymeThemeZipFile;->clean()V

    .line 344
    return-void
.end method

.method public getInputStream(Ljava/lang/String;Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/util/TypedValue;

    .prologue
    .line 64
    const/4 v1, 0x0

    .line 65
    .local v1, "iStream":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 68
    .local v2, "inputStreamPath":I
    :try_start_0
    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeUtils;->isUseCustomizeTheme()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/flymetheme/FlymeThemeZipFile;->get3rdPartRes(Ljava/lang/String;Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    .line 70
    .local v1, "iStream":Ljava/io/InputStream;
    const/4 v2, 0x1

    .line 73
    .end local v1    # "iStream":Ljava/io/InputStream;
    :cond_0
    if-nez v1, :cond_1

    iget-boolean v3, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mUseCustomTheme:Z

    if-eqz v3, :cond_1

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/flymetheme/FlymeThemeZipFile;->getCustomRes(Ljava/lang/String;Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    .line 75
    .restart local v1    # "iStream":Ljava/io/InputStream;
    const/4 v2, 0x2

    .line 77
    .end local v1    # "iStream":Ljava/io/InputStream;
    :cond_1
    if-nez v1, :cond_2

    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeUtils;->isUseFlymeTheme()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/content/res/flymetheme/FlymeThemeZipFile;->getFlymeIconISFromSdcardPath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 79
    .restart local v1    # "iStream":Ljava/io/InputStream;
    const/4 v2, 0x3

    .line 81
    .end local v1    # "iStream":Ljava/io/InputStream;
    :cond_2
    if-nez v1, :cond_3

    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeUtils;->isUseFlymeTheme()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 82
    invoke-direct {p0, p1, p2}, Landroid/content/res/flymetheme/FlymeThemeZipFile;->getFlymeIconISFromSystemPath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 83
    .restart local v1    # "iStream":Ljava/io/InputStream;
    const/4 v2, 0x4

    .line 86
    .end local v1    # "iStream":Ljava/io/InputStream;
    :cond_3
    if-eqz v1, :cond_4

    .line 87
    invoke-direct {p0, p1, p2, v2}, Landroid/content/res/flymetheme/FlymeThemeZipFile;->setInputStreamPathType(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :cond_4
    :goto_0
    return-object v1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/content/res/flymetheme/FlymeLogUtil;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 92
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    throw v3
.end method

.method getInputStreamPathType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 101
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeZipFile;->mInputStreamPathTypeMap:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 102
    .local v0, "pathType":Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method
