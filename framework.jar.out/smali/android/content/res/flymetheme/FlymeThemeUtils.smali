.class public Landroid/content/res/flymetheme/FlymeThemeUtils;
.super Ljava/lang/Object;
.source "FlymeThemeUtils.java"


# static fields
.field public static final ANDROID_RES:I = 0x1

.field private static final BLACK_LIST:[Ljava/lang/String;

.field private static final BLACK_PREFIX_LIST:[Ljava/lang/String;

.field public static final CALENDAR_ICON:Ljava/lang/String; = "com.android.calendar"

.field public static final CALENDAR_ICON_NO_NAME:Ljava/lang/String; = "com.android.calendar.nodate"

.field public static final CALENDAR_PKG:Ljava/lang/String; = "com.android.calendar"

.field public static final CLOCK_PKG:Ljava/lang/String; = "com.android.alarmclock"

.field public static final DEFAULT_THEME_ID:Ljava/lang/String; = "com.meizu.theme.default"

.field public static final DEF_ICON:Ljava/lang/String; = "def_icon.png"

.field public static final FILE_CONFIG_NAME:Ljava/lang/String; = "config.xml"

.field public static final FILE_ICONFILTER_CONFIG_NAME:Ljava/lang/String; = "filter_config.xml"

.field public static final FILE_THEME_VALUE:Ljava/lang/String; = "theme_values.xml"

.field public static final FLYME_ICON_PACKAGE_NAME_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLYME_PACKAGE_NAME:Ljava/lang/String; = "flyme"

.field public static final FLYME_PATH_NAME:Ljava/lang/String; = "flyme-res"

.field public static final FLYME_RES:I = 0x2

.field public static final FLYME_THEME_OS:Ljava/lang/String; = "7"

.field public static final FRAMEWORK_PACKAGE_NAME:Ljava/lang/String; = "android"

.field public static final FRAMEWORK_PATH_NAME:Ljava/lang/String; = "framework-res"

.field public static final ICON_BACKGROUND:Ljava/lang/String; = "icon_background.png"

.field public static final ICON_BORDER:Ljava/lang/String; = "icon_border.png"

.field public static final ICON_MASK:Ljava/lang/String; = "icon_mask.png"

.field public static final ICON_PATH_NAME:Ljava/lang/String; = "icons"

.field public static final ICON_WHITE_LIST_PREFIX:Ljava/lang/String; = "com.meizu"

.field public static final MEDIATEK_PACKAGE_NAME:Ljava/lang/String; = "mediatek"

.field public static final MEDIATEK_PATH_NAME:Ljava/lang/String; = "mediatek-res"

.field public static final MEDIATEK_RES:I = 0x3

.field public static final PACKAGE_RES:I = 0x0

.field public static final PNG:Ljava/lang/String; = ".png"

.field public static final SHORTCUT_BACKGROUND:Ljava/lang/String; = "shortcut_background.png"

.field public static final THEME_CHANGE_INTENT:Ljava/lang/String; = "com.meizu.theme.change"

.field public static final THEME_CUSTOM_MTPK_PATH:Ljava/lang/String; = "/custom/meizu/mtpk/"

.field public static final THEME_CUSTOM_PATH:Ljava/lang/String; = "/custom/meizu/theme/"

.field public static final THEME_CUSTOM_PATH_TYPE:I = 0x2

.field public static final THEME_DATA_PATH:Ljava/lang/String; = "/data/data/com.meizu.customizecenter/theme/"

.field public static final THEME_DATA_PATH_TYPE:I = 0x1

.field public static final THEME_FLYME_ICON_SDCARD_PATH:Ljava/lang/String; = "/sdcard/Customize/.FlymeIcon/"

.field public static final THEME_FLYME_ICON_SDCARD_PATH_TYPE:I = 0x3

.field public static final THEME_FLYME_ICON_SYSTEM_PATH:Ljava/lang/String; = "/system/customizecenter/theme/"

.field public static final THEME_FLYME_ICON_SYSTEM_PATH_TYPE:I = 0x4

.field public static final USE_CUSTOMIZE_THEME:I = 0x2

.field public static final USE_FLYME_THEME:I = 0x1

.field public static final USE_THEME:I = 0x3

.field private static final WHITE_LIST:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeUtils;->FLYME_ICON_PACKAGE_NAME_LIST:Ljava/util/ArrayList;

    .line 28
    sget-object v0, Landroid/content/res/flymetheme/FlymeThemeUtils;->FLYME_ICON_PACKAGE_NAME_LIST:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.calendar"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    new-array v0, v4, [Ljava/lang/String;

    .line 138
    const-string/jumbo v1, "com.rsupport.rs.activity.meizu"

    aput-object v1, v0, v3

    .line 92
    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeUtils;->WHITE_LIST:[Ljava/lang/String;

    .line 144
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 145
    const-string/jumbo v1, "com.meizu.watch"

    aput-object v1, v0, v3

    .line 146
    const-string/jumbo v1, "com.meizu.speaker"

    aput-object v1, v0, v4

    .line 147
    const-string/jumbo v1, "com.meizu.meijia"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 148
    const-string/jumbo v1, "com.meizu.router"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 149
    const-string/jumbo v1, "com.flyme.meizu.store"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 150
    const-string/jumbo v1, "com.baidu.BaiduMap.meizu"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 144
    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeUtils;->BLACK_LIST:[Ljava/lang/String;

    .line 156
    new-array v0, v4, [Ljava/lang/String;

    .line 157
    const-string/jumbo v1, "com.meizu.smart."

    aput-object v1, v0, v3

    .line 156
    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeUtils;->BLACK_PREFIX_LIST:[Ljava/lang/String;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResType(Ljava/lang/String;)I
    .locals 1
    .param p0, "resPackageName"    # Ljava/lang/String;

    .prologue
    .line 78
    const-string/jumbo v0, "android"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const/4 v0, 0x1

    return v0

    .line 80
    :cond_0
    const-string/jumbo v0, "flyme"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    const/4 v0, 0x2

    return v0

    .line 82
    :cond_1
    const-string/jumbo v0, "mediatek"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    const/4 v0, 0x3

    return v0

    .line 85
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static isAppUsingTheme(Ljava/lang/String;)Z
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 257
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/data/data/com.meizu.customizecenter/theme/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 258
    .local v0, "appThemeModuleFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private static isInBlackList(Ljava/lang/String;)Z
    .locals 8
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 200
    sget-object v4, Landroid/content/res/flymetheme/FlymeThemeUtils;->BLACK_PREFIX_LIST:[Ljava/lang/String;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v1, v4, v2

    .line 201
    .local v1, "prefix":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 202
    return v7

    .line 200
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 206
    .end local v1    # "prefix":Ljava/lang/String;
    :cond_1
    sget-object v4, Landroid/content/res/flymetheme/FlymeThemeUtils;->BLACK_LIST:[Ljava/lang/String;

    array-length v5, v4

    move v2, v3

    :goto_1
    if-ge v2, v5, :cond_3

    aget-object v0, v4, v2

    .line 207
    .local v0, "name":Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 208
    return v7

    .line 206
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 212
    .end local v0    # "name":Ljava/lang/String;
    :cond_3
    return v3
.end method

.method public static isInWhiteList(Landroid/content/pm/ApplicationInfo;)Z
    .locals 7
    .param p0, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 168
    if-eqz p0, :cond_0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    :cond_0
    return v2

    .line 172
    :cond_1
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeUtils;->isInBlackList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 173
    return v2

    .line 177
    :cond_2
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 178
    return v6

    .line 186
    :cond_3
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v3, "com.meizu"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 187
    return v6

    .line 190
    :cond_4
    sget-object v3, Landroid/content/res/flymetheme/FlymeThemeUtils;->WHITE_LIST:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_6

    aget-object v0, v3, v1

    .line 191
    .local v0, "name":Ljava/lang/String;
    iget-object v5, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 192
    return v6

    .line 190
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    .end local v0    # "name":Ljava/lang/String;
    :cond_6
    return v2
.end method

.method public static isUseCustomSystem()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 239
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "/data/data/com.meizu.customizecenter/custom_flag/no_custom"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 240
    .local v0, "custom":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    return v3

    .line 243
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 244
    :catch_0
    move-exception v1

    .line 245
    .local v1, "e":Ljava/lang/Exception;
    return v3
.end method

.method public static isUseCustomizeTheme()Z
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x1

    return v0
.end method

.method public static isUseFlymeTheme()Z
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x1

    return v0
.end method
