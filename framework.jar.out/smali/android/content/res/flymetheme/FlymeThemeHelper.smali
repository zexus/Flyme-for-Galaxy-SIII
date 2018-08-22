.class public Landroid/content/res/flymetheme/FlymeThemeHelper;
.super Ljava/lang/Object;
.source "FlymeThemeHelper.java"


# static fields
.field public static LAUNCHER_CONFIG_CALENDAR_DAY_COLOR:Ljava/lang/String; = null

.field public static LAUNCHER_CONFIG_DRAW_BG_SHADOW:Ljava/lang/String; = null

.field public static LAUNCHER_CONFIG_DRAW_DATE:Ljava/lang/String; = null

.field public static LAUNCHER_CONFIG_DRAW_ICON_SHADOW:Ljava/lang/String; = null

.field public static LAUNCHER_CONFIG_STATUSBAR_COLOR:Ljava/lang/String; = null

.field public static MEIZU_CALENDAR_ICON:Z = false

.field private static SCALE_VALUE:F = 0.0f

.field private static final THEME_ICON_FLAG_BACKGROUND:I = 0x2

.field private static final THEME_ICON_FLAG_BB:I = 0x3

.field private static final THEME_ICON_FLAG_BORDER:I = 0x1

.field private static final THEME_ICON_FLAG_DEFAULT:I = 0x0

.field private static final THEME_ICON_FLAG_MASK:I = 0x4

.field private static final THEME_ICON_FLAG_MBB:I = 0x7

.field private static final THEME_ICON_FLAG_M_BACKGROUND:I = 0x6

.field private static final THEME_ICON_FLAG_M_BORDER:I = 0x5

.field private static mLauncherHelper:Landroid/content/res/flymetheme/LauncherConfigHelper;

.field private static mMBBFlag:I

.field private static mZipThemeManager:Landroid/content/res/flymetheme/MtpkManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    sput-boolean v0, Landroid/content/res/flymetheme/FlymeThemeHelper;->MEIZU_CALENDAR_ICON:Z

    .line 57
    const-string/jumbo v0, "draw_date"

    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeHelper;->LAUNCHER_CONFIG_DRAW_DATE:Ljava/lang/String;

    .line 61
    const-string/jumbo v0, "draw_icon_shadow"

    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeHelper;->LAUNCHER_CONFIG_DRAW_ICON_SHADOW:Ljava/lang/String;

    .line 65
    const-string/jumbo v0, "draw_bg_shadow"

    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeHelper;->LAUNCHER_CONFIG_DRAW_BG_SHADOW:Ljava/lang/String;

    .line 70
    const-string/jumbo v0, "statusbar_color"

    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeHelper;->LAUNCHER_CONFIG_STATUSBAR_COLOR:Ljava/lang/String;

    .line 74
    const-string/jumbo v0, "calendar_dayofweek_color"

    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeHelper;->LAUNCHER_CONFIG_CALENDAR_DAY_COLOR:Ljava/lang/String;

    .line 83
    const v0, 0x3f65bc02    # 0.8974f

    sput v0, Landroid/content/res/flymetheme/FlymeThemeHelper;->SCALE_VALUE:F

    .line 88
    const/4 v0, 0x0

    sput v0, Landroid/content/res/flymetheme/FlymeThemeHelper;->mMBBFlag:I

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "backguard"    # Landroid/graphics/Bitmap;
    .param p1, "top"    # Landroid/graphics/Bitmap;
    .param p2, "isBorder"    # Z

    .prologue
    .line 138
    const/4 v9, 0x0

    .line 139
    .local v9, "newBitmap":Landroid/graphics/Bitmap;
    const/4 v10, 0x0

    .line 141
    .local v10, "tmpBitmap":Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 142
    .local v10, "tmpBitmap":Landroid/graphics/Bitmap;
    invoke-static {v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 143
    .local v9, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 144
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 145
    .local v5, "paint":Landroid/graphics/Paint;
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 146
    .local v11, "w":I
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 147
    .local v7, "h":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 148
    .local v12, "w_2":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 149
    .local v8, "h_2":I
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 150
    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v3, v11

    int-to-float v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 151
    new-instance v5, Landroid/graphics/Paint;

    .end local v5    # "paint":Landroid/graphics/Paint;
    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 152
    .restart local v5    # "paint":Landroid/graphics/Paint;
    sub-int v1, v11, v12

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-int v2, v7, v8

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, p1, v1, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "paint":Landroid/graphics/Paint;
    .end local v7    # "h":I
    .end local v8    # "h_2":I
    .end local v10    # "tmpBitmap":Landroid/graphics/Bitmap;
    .end local v11    # "w":I
    .end local v12    # "w_2":I
    :cond_0
    :goto_0
    return-object v9

    .line 162
    .restart local v0    # "canvas":Landroid/graphics/Canvas;
    .restart local v5    # "paint":Landroid/graphics/Paint;
    .restart local v7    # "h":I
    .restart local v8    # "h_2":I
    .restart local v10    # "tmpBitmap":Landroid/graphics/Bitmap;
    .restart local v11    # "w":I
    .restart local v12    # "w_2":I
    :cond_1
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 163
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "paint":Landroid/graphics/Paint;
    .end local v7    # "h":I
    .end local v8    # "h_2":I
    .end local v10    # "tmpBitmap":Landroid/graphics/Bitmap;
    .end local v11    # "w":I
    .end local v12    # "w_2":I
    :goto_1
    const/4 v10, 0x0

    .local v10, "tmpBitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 153
    .end local v9    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v10    # "tmpBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v6

    .line 154
    .local v6, "er":Ljava/lang/OutOfMemoryError;
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    if-eqz p2, :cond_2

    .line 156
    move-object v9, p0

    .line 161
    .restart local v9    # "newBitmap":Landroid/graphics/Bitmap;
    :goto_2
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 158
    .end local v9    # "newBitmap":Landroid/graphics/Bitmap;
    :cond_2
    move-object v9, p1

    .restart local v9    # "newBitmap":Landroid/graphics/Bitmap;
    goto :goto_2

    .line 160
    .end local v6    # "er":Ljava/lang/OutOfMemoryError;
    .end local v9    # "newBitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    .line 161
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 160
    :cond_3
    :goto_3
    throw v1

    .line 162
    :cond_4
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 163
    const/4 v10, 0x0

    .restart local v10    # "tmpBitmap":Landroid/graphics/Bitmap;
    goto :goto_3
.end method

.method private static addCalendarBorder(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "newBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 487
    const/4 v3, 0x0

    .line 488
    .local v3, "result":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 489
    .local v4, "temp":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 491
    .local v2, "resBitmap":Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v5, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_MASK:Ljava/lang/String;

    invoke-static {v5}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 492
    .local v0, "border":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 493
    sget v5, Lcom/flyme/internal/R$drawable;->calendar_mask:I

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 495
    :cond_0
    if-nez v0, :cond_3

    .line 496
    move-object v3, p1

    .line 505
    .end local v0    # "border":Landroid/graphics/drawable/Drawable;
    .end local v2    # "resBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "temp":Landroid/graphics/Bitmap;
    .local v3, "result":Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 509
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 514
    :cond_2
    :goto_2
    return-object v3

    .line 498
    .restart local v0    # "border":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "resBitmap":Landroid/graphics/Bitmap;
    .local v3, "result":Landroid/graphics/Bitmap;
    .restart local v4    # "temp":Landroid/graphics/Bitmap;
    :cond_3
    :try_start_1
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "border":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 499
    .local v4, "temp":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/content/res/flymetheme/FlymeThemeHelper;->zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 500
    .local v2, "resBitmap":Landroid/graphics/Bitmap;
    const/4 v5, 0x1

    invoke-static {p1, v2, v5}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .local v3, "result":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 506
    .end local v2    # "resBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "temp":Landroid/graphics/Bitmap;
    :cond_4
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 507
    const/4 v4, 0x0

    .local v4, "temp":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 510
    .end local v4    # "temp":Landroid/graphics/Bitmap;
    :cond_5
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 511
    :goto_3
    const/4 v2, 0x0

    .local v2, "resBitmap":Landroid/graphics/Bitmap;
    goto :goto_2

    .line 502
    .end local v2    # "resBitmap":Landroid/graphics/Bitmap;
    .local v3, "result":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 503
    .local v1, "e":Ljava/lang/Exception;
    move-object v3, p1

    .line 505
    .local v3, "result":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 509
    :cond_6
    :goto_4
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_2

    .line 510
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_3

    .line 506
    :cond_7
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 507
    const/4 v4, 0x0

    .restart local v4    # "temp":Landroid/graphics/Bitmap;
    goto :goto_4

    .line 504
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "temp":Landroid/graphics/Bitmap;
    .local v3, "result":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v5

    .line 505
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 509
    :cond_8
    :goto_5
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 504
    :cond_9
    :goto_6
    throw v5

    .line 506
    :cond_a
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 507
    const/4 v4, 0x0

    .restart local v4    # "temp":Landroid/graphics/Bitmap;
    goto :goto_5

    .line 510
    .end local v4    # "temp":Landroid/graphics/Bitmap;
    :cond_b
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 511
    const/4 v2, 0x0

    .restart local v2    # "resBitmap":Landroid/graphics/Bitmap;
    goto :goto_6
.end method

.method public static addDateToIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 20
    .param p0, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 355
    const/4 v10, 0x0

    .line 356
    .local v10, "oneBitmap":Landroid/graphics/Bitmap;
    const/4 v14, 0x0

    .line 357
    .local v14, "twoBitmap":Landroid/graphics/Bitmap;
    const/4 v13, 0x0

    .line 359
    .local v13, "result":Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    .line 360
    .local v12, "resources":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v2, v0

    .line 361
    .local v2, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v17

    sget-object v18, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 362
    .local v9, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 363
    .local v11, "paint":Landroid/graphics/Paint;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 364
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 365
    .local v3, "canvas":Landroid/graphics/Canvas;
    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getDateOfMonth()Ljava/lang/String;

    move-result-object v4

    .line 366
    .local v4, "date":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const v18, 0x3ec3f35c

    mul-float v16, v17, v18

    .line 367
    .local v16, "y":F
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 368
    .local v7, "nH":I
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 369
    .local v8, "nW":I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 370
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    invoke-static {v12, v0, v7, v8}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getDateImage(Landroid/content/res/Resources;CII)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 371
    .local v10, "oneBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    sub-int v17, v8, v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v15, v17, v18

    .line 372
    .local v15, "x":F
    move/from16 v0, v16

    invoke-virtual {v3, v10, v15, v0, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 380
    .end local v14    # "twoBitmap":Landroid/graphics/Bitmap;
    :goto_0
    new-instance v13, Landroid/graphics/drawable/BitmapDrawable;

    .end local v13    # "result":Landroid/graphics/drawable/Drawable;
    invoke-direct {v13, v12, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    .local v13, "result":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 392
    .end local v10    # "oneBitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_1
    if-eqz v14, :cond_1

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 397
    .end local v2    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "date":Ljava/lang/String;
    .end local v7    # "nH":I
    .end local v8    # "nW":I
    .end local v9    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v11    # "paint":Landroid/graphics/Paint;
    .end local v12    # "resources":Landroid/content/res/Resources;
    .end local v15    # "x":F
    .end local v16    # "y":F
    :cond_1
    :goto_2
    return-object v13

    .line 374
    .restart local v2    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v3    # "canvas":Landroid/graphics/Canvas;
    .restart local v4    # "date":Ljava/lang/String;
    .restart local v7    # "nH":I
    .restart local v8    # "nW":I
    .restart local v9    # "newBitmap":Landroid/graphics/Bitmap;
    .local v10, "oneBitmap":Landroid/graphics/Bitmap;
    .restart local v11    # "paint":Landroid/graphics/Paint;
    .restart local v12    # "resources":Landroid/content/res/Resources;
    .local v13, "result":Landroid/graphics/drawable/Drawable;
    .restart local v14    # "twoBitmap":Landroid/graphics/Bitmap;
    .restart local v16    # "y":F
    :cond_2
    const/16 v17, 0x0

    :try_start_1
    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    invoke-static {v12, v0, v7, v8}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getDateImage(Landroid/content/res/Resources;CII)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 375
    .local v10, "oneBitmap":Landroid/graphics/Bitmap;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    invoke-static {v12, v0, v7, v8}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getDateImage(Landroid/content/res/Resources;CII)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 376
    .local v14, "twoBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    add-int v17, v17, v18

    sub-int v17, v8, v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v15, v17, v18

    .line 377
    .restart local v15    # "x":F
    move/from16 v0, v16

    invoke-virtual {v3, v10, v15, v0, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 378
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, v15

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v3, v14, v0, v1, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 381
    .end local v2    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "date":Ljava/lang/String;
    .end local v7    # "nH":I
    .end local v8    # "nW":I
    .end local v9    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v10    # "oneBitmap":Landroid/graphics/Bitmap;
    .end local v11    # "paint":Landroid/graphics/Paint;
    .end local v12    # "resources":Landroid/content/res/Resources;
    .end local v13    # "result":Landroid/graphics/drawable/Drawable;
    .end local v14    # "twoBitmap":Landroid/graphics/Bitmap;
    .end local v15    # "x":F
    .end local v16    # "y":F
    :catch_0
    move-exception v6

    .line 382
    .local v6, "er":Ljava/lang/OutOfMemoryError;
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 383
    move-object/from16 v13, p0

    .line 388
    .local v13, "result":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 392
    :cond_3
    :goto_3
    if-eqz v14, :cond_1

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    if-nez v17, :cond_1

    .line 393
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 394
    .end local v6    # "er":Ljava/lang/OutOfMemoryError;
    :goto_4
    const/4 v14, 0x0

    .local v14, "twoBitmap":Landroid/graphics/Bitmap;
    goto :goto_2

    .line 389
    .end local v14    # "twoBitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v3    # "canvas":Landroid/graphics/Canvas;
    .restart local v4    # "date":Ljava/lang/String;
    .restart local v7    # "nH":I
    .restart local v8    # "nW":I
    .restart local v9    # "newBitmap":Landroid/graphics/Bitmap;
    .restart local v10    # "oneBitmap":Landroid/graphics/Bitmap;
    .restart local v11    # "paint":Landroid/graphics/Paint;
    .restart local v12    # "resources":Landroid/content/res/Resources;
    .restart local v15    # "x":F
    .restart local v16    # "y":F
    :cond_4
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 390
    const/4 v10, 0x0

    .local v10, "oneBitmap":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 393
    .end local v10    # "oneBitmap":Landroid/graphics/Bitmap;
    :cond_5
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_4

    .line 384
    .end local v2    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "date":Ljava/lang/String;
    .end local v7    # "nH":I
    .end local v8    # "nW":I
    .end local v9    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v11    # "paint":Landroid/graphics/Paint;
    .end local v12    # "resources":Landroid/content/res/Resources;
    .end local v13    # "result":Landroid/graphics/drawable/Drawable;
    .end local v15    # "x":F
    .end local v16    # "y":F
    :catch_1
    move-exception v5

    .line 385
    .local v5, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 386
    move-object/from16 v13, p0

    .line 388
    .restart local v13    # "result":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_6

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 392
    :cond_6
    :goto_5
    if-eqz v14, :cond_1

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    if-nez v17, :cond_1

    .line 393
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_4

    .line 389
    :cond_7
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 390
    const/4 v10, 0x0

    .restart local v10    # "oneBitmap":Landroid/graphics/Bitmap;
    goto :goto_5

    .line 389
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v10    # "oneBitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "er":Ljava/lang/OutOfMemoryError;
    :cond_8
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 390
    const/4 v10, 0x0

    .restart local v10    # "oneBitmap":Landroid/graphics/Bitmap;
    goto :goto_3

    .line 387
    .end local v6    # "er":Ljava/lang/OutOfMemoryError;
    .end local v10    # "oneBitmap":Landroid/graphics/Bitmap;
    .end local v13    # "result":Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v17

    .line 388
    if-eqz v10, :cond_9

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v18

    if-eqz v18, :cond_b

    .line 392
    :cond_9
    :goto_6
    if-eqz v14, :cond_a

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 387
    :cond_a
    :goto_7
    throw v17

    .line 389
    :cond_b
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 390
    const/4 v10, 0x0

    .restart local v10    # "oneBitmap":Landroid/graphics/Bitmap;
    goto :goto_6

    .line 393
    .end local v10    # "oneBitmap":Landroid/graphics/Bitmap;
    :cond_c
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 394
    const/4 v14, 0x0

    .restart local v14    # "twoBitmap":Landroid/graphics/Bitmap;
    goto :goto_7
.end method

.method public static addDayOfWeekToIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 23
    .param p0, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 410
    const/4 v15, 0x0

    .line 412
    .local v15, "newBitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v19

    .line 413
    .local v19, "resources":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v10, v0

    .line 414
    .local v10, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 415
    .local v15, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v15}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 416
    .local v11, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    .line 417
    .local v4, "textPaint":Landroid/text/TextPaint;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 418
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3e3851ec    # 0.18f

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 419
    const-string/jumbo v5, "sans-serif-medium"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v22

    .line 420
    .local v22, "typeface":Landroid/graphics/Typeface;
    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 421
    sget v5, Lcom/flyme/internal/R$color;->calendar_dayofweek_color:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    .line 423
    .local v12, "color":I
    :try_start_1
    sget-object v5, Landroid/content/res/flymetheme/FlymeThemeHelper;->LAUNCHER_CONFIG_CALENDAR_DAY_COLOR:Ljava/lang/String;

    invoke-static {v5}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getLauncherConfigByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 424
    .local v18, "resColor":Ljava/lang/String;
    if-nez v18, :cond_1

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 431
    .end local v18    # "resColor":Ljava/lang/String;
    :goto_0
    :try_start_2
    invoke-virtual {v4, v12}, Landroid/text/TextPaint;->setColor(I)V

    .line 432
    invoke-static/range {v19 .. v19}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getDayOfWeek(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    .line 433
    .local v3, "date":Ljava/lang/String;
    new-instance v2, Landroid/text/StaticLayout;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 434
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 433
    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 435
    .local v2, "sl":Landroid/text/StaticLayout;
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3e2aaaab

    mul-float v21, v5, v6

    .line 436
    .local v21, "tanslateY":F
    const/4 v5, 0x0

    move/from16 v0, v21

    invoke-virtual {v11, v5, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 437
    invoke-virtual {v2, v11}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 438
    new-instance v20, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v19

    invoke-static {v0, v15}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addCalendarBorder(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 446
    .local v20, "result":Landroid/graphics/drawable/Drawable;
    if-eqz v15, :cond_0

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 452
    .end local v2    # "sl":Landroid/text/StaticLayout;
    .end local v3    # "date":Ljava/lang/String;
    .end local v4    # "textPaint":Landroid/text/TextPaint;
    .end local v10    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .end local v11    # "canvas":Landroid/graphics/Canvas;
    .end local v12    # "color":I
    .end local v15    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v19    # "resources":Landroid/content/res/Resources;
    .end local v21    # "tanslateY":F
    .end local v22    # "typeface":Landroid/graphics/Typeface;
    .end local p0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_1
    return-object v20

    .line 425
    .end local v20    # "result":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "textPaint":Landroid/text/TextPaint;
    .restart local v10    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v11    # "canvas":Landroid/graphics/Canvas;
    .restart local v12    # "color":I
    .restart local v15    # "newBitmap":Landroid/graphics/Bitmap;
    .restart local v18    # "resColor":Ljava/lang/String;
    .restart local v19    # "resources":Landroid/content/res/Resources;
    .restart local v22    # "typeface":Landroid/graphics/Typeface;
    .restart local p0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v16

    .line 426
    .local v16, "l":J
    move-wide/from16 v0, v16

    long-to-int v12, v0

    goto :goto_0

    .line 428
    .end local v16    # "l":J
    .end local v18    # "resColor":Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 429
    .local v13, "e":Ljava/lang/Exception;
    :try_start_4
    sget v5, Lcom/flyme/internal/R$color;->calendar_dayofweek_color:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v12

    goto :goto_0

    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v2    # "sl":Landroid/text/StaticLayout;
    .restart local v3    # "date":Ljava/lang/String;
    .restart local v20    # "result":Landroid/graphics/drawable/Drawable;
    .restart local v21    # "tanslateY":F
    :cond_2
    move-object/from16 v5, v20

    .line 447
    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eq v15, v5, :cond_0

    .line 448
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 449
    .end local v2    # "sl":Landroid/text/StaticLayout;
    .end local v3    # "date":Ljava/lang/String;
    .end local v4    # "textPaint":Landroid/text/TextPaint;
    .end local v10    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .end local v11    # "canvas":Landroid/graphics/Canvas;
    .end local v12    # "color":I
    .end local v15    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v19    # "resources":Landroid/content/res/Resources;
    .end local v21    # "tanslateY":F
    .end local v22    # "typeface":Landroid/graphics/Typeface;
    .end local p0    # "dr":Landroid/graphics/drawable/Drawable;
    :goto_2
    const/4 v15, 0x0

    .local v15, "newBitmap":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 442
    .end local v15    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v20    # "result":Landroid/graphics/drawable/Drawable;
    .restart local p0    # "dr":Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v13

    .line 443
    .restart local v13    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 444
    move-object/from16 v20, p0

    .line 446
    .restart local v20    # "result":Landroid/graphics/drawable/Drawable;
    if-eqz v15, :cond_0

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 447
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eq v15, v5, :cond_0

    .line 448
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2

    .line 439
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v20    # "result":Landroid/graphics/drawable/Drawable;
    .restart local p0    # "dr":Landroid/graphics/drawable/Drawable;
    :catch_2
    move-exception v14

    .line 440
    .local v14, "er":Ljava/lang/OutOfMemoryError;
    :try_start_6
    invoke-virtual {v14}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 441
    move-object/from16 v20, p0

    .line 446
    .restart local v20    # "result":Landroid/graphics/drawable/Drawable;
    if-eqz v15, :cond_0

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 447
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eq v15, v5, :cond_0

    .line 448
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2

    .line 445
    .end local v14    # "er":Ljava/lang/OutOfMemoryError;
    .end local v20    # "result":Landroid/graphics/drawable/Drawable;
    .restart local p0    # "dr":Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v5

    move-object v6, v5

    .line 446
    if-eqz v15, :cond_3

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 445
    :cond_3
    :goto_3
    throw v6

    .line 409
    :cond_4
    const/4 v5, 0x0

    .line 447
    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eq v15, v5, :cond_3

    .line 448
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 449
    const/4 v15, 0x0

    .restart local v15    # "newBitmap":Landroid/graphics/Bitmap;
    goto :goto_3
.end method

.method public static addMutilLaunchAppMarkToIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 12
    .param p0, "srcDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 457
    const/4 v4, 0x0

    .line 459
    .local v4, "newBitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    .line 460
    .local v5, "resources":Landroid/content/res/Resources;
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v7, v0

    .line 462
    .local v7, "srcBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 463
    .local v4, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 466
    .local v1, "canvas":Landroid/graphics/Canvas;
    sget v8, Lcom/flyme/internal/R$drawable;->mutil_launch_app_mark:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 467
    .local v3, "mutilLaunchAppIconDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 468
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 470
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v5, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    .local v6, "resultIconDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_0

    .line 476
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 483
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "mutilLaunchAppIconDrawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v5    # "resources":Landroid/content/res/Resources;
    .end local v7    # "srcBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local p0    # "srcDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object v6

    .line 477
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    .restart local v3    # "mutilLaunchAppIconDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "newBitmap":Landroid/graphics/Bitmap;
    .restart local v5    # "resources":Landroid/content/res/Resources;
    .restart local v7    # "srcBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local p0    # "srcDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    if-eqz v6, :cond_0

    move-object v8, v6

    .line 478
    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    if-eq v4, v8, :cond_0

    .line 479
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 480
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "mutilLaunchAppIconDrawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v5    # "resources":Landroid/content/res/Resources;
    .end local v7    # "srcBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local p0    # "srcDrawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    const/4 v4, 0x0

    .local v4, "newBitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 471
    .end local v4    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v6    # "resultIconDrawable":Landroid/graphics/drawable/Drawable;
    .restart local p0    # "srcDrawable":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v2

    .line 472
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 473
    move-object v6, p0

    .line 475
    .restart local v6    # "resultIconDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_0

    .line 476
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_0

    .line 477
    if-eqz p0, :cond_0

    .line 478
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "srcDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    if-eq v4, v8, :cond_0

    .line 479
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 474
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "resultIconDrawable":Landroid/graphics/drawable/Drawable;
    .restart local p0    # "srcDrawable":Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v8

    .line 475
    if-eqz v4, :cond_2

    .line 476
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 474
    :cond_2
    throw v8
.end method

.method private static checkBitmapCornerPixelIsTransparent(Landroid/graphics/Bitmap;)Z
    .locals 5
    .param p0, "srcBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 705
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ge v4, v2, :cond_1

    .line 706
    :cond_0
    return v3

    .line 705
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-lt v4, v2, :cond_0

    .line 708
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .line 709
    .local v0, "x":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 710
    .local v1, "y":I
    invoke-virtual {p0, v3, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    if-eqz v4, :cond_2

    .line 711
    invoke-virtual {p0, v0, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    if-nez v4, :cond_3

    .line 710
    :cond_2
    :goto_0
    return v2

    .line 712
    :cond_3
    invoke-virtual {p0, v3, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    if-eqz v4, :cond_2

    .line 713
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    goto :goto_0
.end method

.method public static clean()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 834
    sget-object v0, Landroid/content/res/flymetheme/FlymeThemeHelper;->mZipThemeManager:Landroid/content/res/flymetheme/MtpkManager;

    if-eqz v0, :cond_0

    .line 835
    sget-object v0, Landroid/content/res/flymetheme/FlymeThemeHelper;->mZipThemeManager:Landroid/content/res/flymetheme/MtpkManager;

    invoke-virtual {v0}, Landroid/content/res/flymetheme/MtpkManager;->clean()V

    .line 836
    sput-object v1, Landroid/content/res/flymetheme/FlymeThemeHelper;->mZipThemeManager:Landroid/content/res/flymetheme/MtpkManager;

    .line 838
    :cond_0
    sput-object v1, Landroid/content/res/flymetheme/FlymeThemeHelper;->mLauncherHelper:Landroid/content/res/flymetheme/LauncherConfigHelper;

    .line 833
    return-void
.end method

.method public static drawShadowToIcon()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 263
    :try_start_0
    new-instance v2, Landroid/content/res/flymetheme/LauncherConfigHelper;

    invoke-direct {v2}, Landroid/content/res/flymetheme/LauncherConfigHelper;-><init>()V

    .line 264
    .local v2, "info":Landroid/content/res/flymetheme/LauncherConfigHelper;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "draw_shadow"

    invoke-static {v3}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getLauncherConfigByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, "hasDate":Ljava/lang/String;
    const-string/jumbo v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v1, :cond_1

    .line 266
    :cond_0
    return v4

    .line 265
    :cond_1
    const-string/jumbo v3, "false"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 267
    const-string/jumbo v3, "true"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    .line 268
    const/4 v3, 0x1

    return v3

    .line 270
    :cond_2
    return v4

    .line 271
    .end local v1    # "hasDate":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 273
    return v4
.end method

.method private static generateThemeBitmap()[Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 803
    const/4 v1, 0x3

    new-array v0, v1, [Landroid/graphics/Bitmap;

    .line 804
    .local v0, "themeBitmap":[Landroid/graphics/Bitmap;
    const-string/jumbo v1, "icon_mask.png"

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeResource;->getThemeIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    if-eqz v1, :cond_0

    .line 805
    sget v1, Landroid/content/res/flymetheme/FlymeThemeHelper;->mMBBFlag:I

    or-int/lit8 v1, v1, 0x4

    sput v1, Landroid/content/res/flymetheme/FlymeThemeHelper;->mMBBFlag:I

    .line 808
    :cond_0
    const-string/jumbo v1, "icon_background.png"

    .line 807
    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeResource;->getThemeIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    if-eqz v1, :cond_1

    .line 809
    sget v1, Landroid/content/res/flymetheme/FlymeThemeHelper;->mMBBFlag:I

    or-int/lit8 v1, v1, 0x2

    sput v1, Landroid/content/res/flymetheme/FlymeThemeHelper;->mMBBFlag:I

    .line 811
    :cond_1
    const-string/jumbo v1, "icon_border.png"

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeResource;->getThemeIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    if-eqz v1, :cond_2

    .line 812
    sget v1, Landroid/content/res/flymetheme/FlymeThemeHelper;->mMBBFlag:I

    or-int/lit8 v1, v1, 0x1

    sput v1, Landroid/content/res/flymetheme/FlymeThemeHelper;->mMBBFlag:I

    .line 814
    :cond_2
    return-object v0
.end method

.method public static getCalendarIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 207
    const/4 v0, 0x0

    .line 209
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    :try_start_0
    sget-object v2, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_DEF:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 210
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 211
    return-object v0

    .line 213
    :cond_0
    sget-object v2, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_BG:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_1

    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeHelper;->isAddDateToIcon()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 215
    invoke-static {v0}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addDateToIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 216
    invoke-static {v0}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addDayOfWeekToIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 222
    :cond_1
    :goto_0
    return-object v0

    .line 219
    :catch_0
    move-exception v1

    .line 220
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getConfigXmlByPackageName(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 849
    :try_start_0
    sget-object v3, Landroid/content/res/flymetheme/FlymeThemeHelper;->mZipThemeManager:Landroid/content/res/flymetheme/MtpkManager;

    if-nez v3, :cond_0

    .line 850
    new-instance v3, Landroid/content/res/flymetheme/MtpkManager;

    invoke-direct {v3}, Landroid/content/res/flymetheme/MtpkManager;-><init>()V

    sput-object v3, Landroid/content/res/flymetheme/FlymeThemeHelper;->mZipThemeManager:Landroid/content/res/flymetheme/MtpkManager;

    .line 852
    :cond_0
    const/4 v1, 0x0

    .line 853
    .local v1, "is":Ljava/io/InputStream;
    const-string/jumbo v2, "config.xml"

    .line 854
    .local v2, "resPath":Ljava/lang/String;
    sget-object v3, Landroid/content/res/flymetheme/FlymeThemeHelper;->mZipThemeManager:Landroid/content/res/flymetheme/MtpkManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v2, v4}, Landroid/content/res/flymetheme/MtpkManager;->getStreamFromPackage(Ljava/lang/String;Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 855
    .local v1, "is":Ljava/io/InputStream;
    return-object v1

    .line 856
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "resPath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 857
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 858
    return-object v5
.end method

.method public static getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 178
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    .line 179
    .local v7, "sysResources":Landroid/content/res/Resources;
    if-nez v7, :cond_0

    .line 180
    return-object v8

    .line 182
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 183
    .local v6, "resPath":Ljava/lang/String;
    invoke-static {v6}, Landroid/content/res/flymetheme/FlymeThemeResource;->get3rdPartThemeIcon(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 185
    .local v5, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 187
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_1

    .line 188
    :try_start_0
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 189
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    move-object v1, v2

    .line 197
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_0
    return-object v1

    .line 194
    .restart local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v3

    .line 195
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    .local v3, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 192
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v4

    .line 193
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    .local v4, "er":Ljava/lang/OutOfMemoryError;
    :goto_2
    invoke-virtual {v4}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    .line 192
    .end local v4    # "er":Ljava/lang/OutOfMemoryError;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :catch_2
    move-exception v4

    .restart local v4    # "er":Ljava/lang/OutOfMemoryError;
    move-object v1, v2

    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_2

    .line 194
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v4    # "er":Ljava/lang/OutOfMemoryError;
    .restart local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :catch_3
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    move-object v1, v2

    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_1
.end method

.method private static getDateImage(Landroid/content/res/Resources;CII)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "date"    # C
    .param p2, "h"    # I
    .param p3, "w"    # I

    .prologue
    const/high16 v6, 0x43220000    # 162.0f

    .line 543
    const/4 v0, 0x0

    .line 544
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    packed-switch p1, :pswitch_data_0

    .line 580
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :goto_0
    :pswitch_0
    if-nez v0, :cond_0

    .line 581
    invoke-static {p0, p1}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getSystemDefDateImage(Landroid/content/res/Resources;C)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    .line 546
    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :pswitch_1
    sget-object v2, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_0:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 549
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    :pswitch_2
    sget-object v2, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_1:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 552
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    :pswitch_3
    sget-object v2, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_2:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 555
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    :pswitch_4
    sget-object v2, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_3:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 558
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    :pswitch_5
    sget-object v2, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_4:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 561
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    :pswitch_6
    sget-object v2, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_5:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 564
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    :pswitch_7
    sget-object v2, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_6:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 567
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    :pswitch_8
    sget-object v2, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_7:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 570
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    :pswitch_9
    sget-object v2, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_8:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 573
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    :pswitch_a
    sget-object v2, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->CALENDAR_9:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 584
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v3, p3, 0x2

    if-gt v2, v3, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, p2

    int-to-float v4, p2

    const v5, 0x3ec3f35c

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 585
    :cond_1
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 586
    int-to-float v3, p3

    const/high16 v4, 0x42180000    # 38.0f

    mul-float/2addr v3, v4

    div-float/2addr v3, v6

    float-to-int v3, v3

    int-to-float v4, p2

    const/high16 v5, 0x42ae0000    # 87.0f

    mul-float/2addr v4, v5

    div-float/2addr v4, v6

    float-to-int v4, v4

    .line 585
    invoke-static {v2, v3, v4}, Landroid/content/res/flymetheme/FlymeThemeHelper;->zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 587
    .local v1, "resBitmap":Landroid/graphics/Bitmap;
    return-object v1

    .line 589
    .end local v1    # "resBitmap":Landroid/graphics/Bitmap;
    :cond_2
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    .line 544
    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
    .end packed-switch
.end method

.method private static getDateOfMonth()Ljava/lang/String;
    .locals 4

    .prologue
    .line 518
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 519
    .local v2, "today":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 520
    .local v1, "cal":Ljava/util/Calendar;
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 521
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 522
    .local v0, "aDate":I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static getDayOfWeek(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 9
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    const/4 v8, 0x0

    .line 527
    sget v5, Lcom/flyme/internal/R$array;->calendar_week_title:I

    .line 526
    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 529
    .local v4, "weekDays":[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 530
    .local v0, "cal":Ljava/util/Calendar;
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v1, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 531
    .local v1, "curDate":Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 532
    const/4 v5, 0x7

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .line 533
    .local v3, "w":I
    if-gez v3, :cond_0

    .line 534
    const/4 v3, 0x0

    .line 535
    :cond_0
    aget-object v5, v4, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 536
    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v1    # "curDate":Ljava/util/Date;
    .end local v3    # "w":I
    :catch_0
    move-exception v2

    .line 537
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, " getDayOfWeek: "

    invoke-static {v5, v2}, Landroid/content/res/flymetheme/FlymeLogUtil;->exception(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 538
    aget-object v5, v4, v8

    return-object v5
.end method

.method public static getFlymeIcon(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    const-string/jumbo v1, "com.android.alarmclock"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 249
    new-instance v0, Landroid/content/res/flymetheme/drawable/ClockDrawable;

    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    invoke-direct {v0, p1}, Landroid/content/res/flymetheme/drawable/ClockDrawable;-><init>(Landroid/content/Context;)V

    .line 253
    :cond_0
    :goto_0
    return-object v0

    .line 250
    .restart local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_1
    const-string/jumbo v1, "com.android.calendar"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    new-instance v0, Landroid/content/res/flymetheme/drawable/CalendarDrawable;

    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    invoke-direct {v0, p1}, Landroid/content/res/flymetheme/drawable/CalendarDrawable;-><init>(Landroid/content/Context;)V

    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method private static getIconFilterConfig()Ljava/io/InputStream;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 901
    :try_start_0
    sget-object v3, Landroid/content/res/flymetheme/FlymeThemeHelper;->mZipThemeManager:Landroid/content/res/flymetheme/MtpkManager;

    if-nez v3, :cond_0

    .line 902
    new-instance v3, Landroid/content/res/flymetheme/MtpkManager;

    invoke-direct {v3}, Landroid/content/res/flymetheme/MtpkManager;-><init>()V

    sput-object v3, Landroid/content/res/flymetheme/FlymeThemeHelper;->mZipThemeManager:Landroid/content/res/flymetheme/MtpkManager;

    .line 904
    :cond_0
    const/4 v1, 0x0

    .line 905
    .local v1, "is":Ljava/io/InputStream;
    const-string/jumbo v2, "filter_config.xml"

    .line 906
    .local v2, "resPath":Ljava/lang/String;
    sget-object v3, Landroid/content/res/flymetheme/FlymeThemeHelper;->mZipThemeManager:Landroid/content/res/flymetheme/MtpkManager;

    const-string/jumbo v4, "icons"

    .line 907
    const/4 v5, 0x0

    .line 906
    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/flymetheme/MtpkManager;->getStreamFromPackage(Ljava/lang/String;Ljava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 908
    .local v1, "is":Ljava/io/InputStream;
    return-object v1

    .line 909
    .local v1, "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 910
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 911
    return-object v6
.end method

.method public static getLauncherConfigByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 285
    :try_start_0
    sget-object v2, Landroid/content/res/flymetheme/FlymeThemeHelper;->mLauncherHelper:Landroid/content/res/flymetheme/LauncherConfigHelper;

    if-nez v2, :cond_0

    .line 286
    new-instance v2, Landroid/content/res/flymetheme/LauncherConfigHelper;

    invoke-direct {v2}, Landroid/content/res/flymetheme/LauncherConfigHelper;-><init>()V

    sput-object v2, Landroid/content/res/flymetheme/FlymeThemeHelper;->mLauncherHelper:Landroid/content/res/flymetheme/LauncherConfigHelper;

    .line 288
    :cond_0
    sget-object v2, Landroid/content/res/flymetheme/FlymeThemeHelper;->mLauncherHelper:Landroid/content/res/flymetheme/LauncherConfigHelper;

    invoke-virtual {v2, p0}, Landroid/content/res/flymetheme/LauncherConfigHelper;->getLauncherConfig(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 289
    .local v1, "res":Ljava/lang/String;
    return-object v1

    .line 290
    .end local v1    # "res":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 292
    return-object v3
.end method

.method private static getSystemDefDateImage(Landroid/content/res/Resources;C)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "date"    # C

    .prologue
    .line 595
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_0:I

    .line 596
    .local v0, "dr":I
    packed-switch p1, :pswitch_data_0

    .line 632
    :goto_0
    :pswitch_0
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 598
    :pswitch_1
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_0:I

    goto :goto_0

    .line 601
    :pswitch_2
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_1:I

    goto :goto_0

    .line 604
    :pswitch_3
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_2:I

    goto :goto_0

    .line 607
    :pswitch_4
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_3:I

    goto :goto_0

    .line 610
    :pswitch_5
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_4:I

    goto :goto_0

    .line 613
    :pswitch_6
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_5:I

    goto :goto_0

    .line 616
    :pswitch_7
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_6:I

    goto :goto_0

    .line 619
    :pswitch_8
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_7:I

    goto :goto_0

    .line 622
    :pswitch_9
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_8:I

    goto :goto_0

    .line 625
    :pswitch_a
    sget v0, Lcom/flyme/internal/R$drawable;->ic_launcher_calendar_9:I

    goto :goto_0

    .line 596
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
    .end packed-switch
.end method

.method public static getThemeDefaultActivityIcon(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "srcDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    .line 823
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_0

    .line 824
    return-object p1

    .line 825
    :cond_0
    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeResource;->getDefaultActivityIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 826
    .local v0, "defIcon":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 827
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "srcDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {p1, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 828
    .restart local p1    # "srcDrawable":Landroid/graphics/drawable/Drawable;
    return-object p1

    .line 830
    :cond_1
    invoke-static {p0, p1, v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->makeThemeIcon(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method private static hasThemeIconTemplate()Z
    .locals 1

    .prologue
    .line 699
    const-string/jumbo v0, "icon_mask.png"

    invoke-static {v0}, Landroid/content/res/flymetheme/FlymeThemeHelper;->isThemeIcon(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 700
    const-string/jumbo v0, "icon_background.png"

    invoke-static {v0}, Landroid/content/res/flymetheme/FlymeThemeHelper;->isThemeIcon(Ljava/lang/String;)Z

    move-result v0

    .line 699
    if-nez v0, :cond_0

    .line 701
    const-string/jumbo v0, "icon_border.png"

    invoke-static {v0}, Landroid/content/res/flymetheme/FlymeThemeHelper;->isThemeIcon(Ljava/lang/String;)Z

    move-result v0

    .line 699
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isAddDateToIcon()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 233
    :try_start_0
    new-instance v2, Landroid/content/res/flymetheme/LauncherConfigHelper;

    invoke-direct {v2}, Landroid/content/res/flymetheme/LauncherConfigHelper;-><init>()V

    .line 234
    .local v2, "info":Landroid/content/res/flymetheme/LauncherConfigHelper;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "draw_date"

    invoke-static {v3}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getLauncherConfigByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, "hasDate":Ljava/lang/String;
    const-string/jumbo v3, "false"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 236
    const/4 v3, 0x0

    return v3

    .line 238
    :cond_0
    return v4

    .line 240
    .end local v1    # "hasDate":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 242
    return v4
.end method

.method public static isFlymeIcon(Ljava/lang/String;)Z
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 338
    const-string/jumbo v2, ".png"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 339
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 341
    :cond_0
    invoke-static {p0}, Landroid/content/res/flymetheme/FlymeThemeResource;->get3rdPartThemeIconPathType(Ljava/lang/String;)I

    move-result v0

    .line 342
    .local v0, "iconPathType":I
    const/4 v2, 0x3

    if-eq v2, v0, :cond_1

    .line 343
    const/4 v2, 0x4

    if-ne v2, v0, :cond_2

    .line 342
    :cond_1
    :goto_0
    return v1

    .line 343
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isNeedMakeThemeIcon(Landroid/content/pm/ApplicationInfo;ZLandroid/graphics/Bitmap;)Z
    .locals 3
    .param p0, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "isFlymeIcon"    # Z
    .param p2, "srcBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 677
    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeHelper;->hasThemeIconTemplate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    return v1

    .line 682
    :cond_0
    if-eqz p1, :cond_2

    .line 683
    invoke-static {p2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->checkBitmapCornerPixelIsTransparent(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 684
    return v2

    .line 686
    :cond_1
    return v1

    .line 691
    :cond_2
    invoke-static {p0}, Landroid/content/res/flymetheme/FlymeThemeUtils;->isInWhiteList(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 692
    return v2

    .line 695
    :cond_3
    return v1
.end method

.method public static isThemeIcon()Z
    .locals 4

    .prologue
    .line 305
    :try_start_0
    const-string/jumbo v2, "/data/data/com.meizu.customizecenter/theme/icons"

    .line 306
    .local v2, "zipFilePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 307
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 308
    const/4 v3, 0x1

    return v3

    .line 310
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 313
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method private static isThemeIcon(Ljava/lang/String;)Z
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 322
    const-string/jumbo v2, ".png"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 325
    :cond_0
    invoke-static {p0}, Landroid/content/res/flymetheme/FlymeThemeResource;->get3rdPartThemeIconPathType(Ljava/lang/String;)I

    move-result v0

    .line 326
    .local v0, "iconPathType":I
    if-eq v1, v0, :cond_1

    .line 327
    const/4 v2, 0x2

    if-ne v2, v0, :cond_2

    .line 326
    :cond_1
    :goto_0
    return v1

    .line 327
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static makeFilterBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "src"    # Landroid/graphics/Bitmap;

    .prologue
    .line 917
    const/4 v4, 0x0

    .line 919
    .local v4, "resultBmp":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {}, Landroid/content/res/flymetheme/iconfilter/IconFilter;->getInstance()Landroid/content/res/flymetheme/iconfilter/IconFilter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/flymetheme/iconfilter/IconFilter;->isLoaded()Z

    move-result v5

    if-nez v5, :cond_0

    .line 920
    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getIconFilterConfig()Ljava/io/InputStream;

    move-result-object v3

    .line 921
    .local v3, "is":Ljava/io/InputStream;
    if-eqz v3, :cond_0

    .line 922
    invoke-static {}, Landroid/content/res/flymetheme/iconfilter/IconFilter;->getInstance()Landroid/content/res/flymetheme/iconfilter/IconFilter;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/flymetheme/iconfilter/IconFilter;->setConfig(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 924
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 931
    .end local v3    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_0
    :try_start_2
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 932
    .local v4, "resultBmp":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/content/res/flymetheme/iconfilter/IconFilter;->getInstance()Landroid/content/res/flymetheme/iconfilter/IconFilter;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/flymetheme/iconfilter/IconFilter;->filter(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 941
    :goto_1
    return-object v4

    .line 925
    .restart local v3    # "is":Ljava/io/InputStream;
    .local v4, "resultBmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 926
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 933
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "resultBmp":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v2

    .line 934
    .local v2, "er":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 935
    move-object v4, p0

    .local v4, "resultBmp":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 936
    .end local v2    # "er":Ljava/lang/OutOfMemoryError;
    .end local v4    # "resultBmp":Landroid/graphics/Bitmap;
    :catch_2
    move-exception v1

    .line 937
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 938
    move-object v4, p0

    .restart local v4    # "resultBmp":Landroid/graphics/Bitmap;
    goto :goto_1
.end method

.method private static makeMaskBackgroundBoarderBitmap(Landroid/content/pm/ApplicationInfo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "srcBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 717
    const/4 v2, 0x0

    .line 718
    .local v2, "step1Bitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 719
    .local v3, "step2Bitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 720
    .local v1, "result":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeHelper;->generateThemeBitmap()[Landroid/graphics/Bitmap;

    move-result-object v4

    .line 721
    .local v4, "themeBitmap":[Landroid/graphics/Bitmap;
    sget v6, Landroid/content/res/flymetheme/FlymeThemeHelper;->mMBBFlag:I

    packed-switch v6, :pswitch_data_0

    .line 772
    .end local v1    # "result":Landroid/graphics/Bitmap;
    .end local v2    # "step1Bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "step2Bitmap":Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 775
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 779
    :cond_1
    :goto_2
    array-length v6, v4

    :goto_3
    if-ge v5, v6, :cond_7

    aget-object v0, v4, v5

    .line 780
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 779
    :cond_2
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 723
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "result":Landroid/graphics/Bitmap;
    .restart local v2    # "step1Bitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "step2Bitmap":Landroid/graphics/Bitmap;
    :pswitch_0
    aget-object v6, v4, v5

    invoke-static {v6, p1}, Landroid/content/res/flymetheme/FlymeThemeHelper;->makeMaskedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 724
    .local v2, "step1Bitmap":Landroid/graphics/Bitmap;
    aget-object v6, v4, v7

    invoke-static {v6, v2, v5}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 725
    .local v3, "step2Bitmap":Landroid/graphics/Bitmap;
    aget-object v6, v4, v8

    invoke-static {v3, v6, v7}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "result":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 730
    .local v1, "result":Landroid/graphics/Bitmap;
    .local v2, "step1Bitmap":Landroid/graphics/Bitmap;
    .local v3, "step2Bitmap":Landroid/graphics/Bitmap;
    :pswitch_1
    aget-object v6, v4, v5

    invoke-static {v6, p1}, Landroid/content/res/flymetheme/FlymeThemeHelper;->makeMaskedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 731
    .local v2, "step1Bitmap":Landroid/graphics/Bitmap;
    aget-object v6, v4, v7

    invoke-static {v6, v2, v5}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "result":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 736
    .local v1, "result":Landroid/graphics/Bitmap;
    .local v2, "step1Bitmap":Landroid/graphics/Bitmap;
    :pswitch_2
    aget-object v6, v4, v5

    invoke-static {v6, p1}, Landroid/content/res/flymetheme/FlymeThemeHelper;->makeMaskedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 737
    .local v2, "step1Bitmap":Landroid/graphics/Bitmap;
    aget-object v6, v4, v8

    invoke-static {v2, v6, v7}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "result":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 742
    .local v1, "result":Landroid/graphics/Bitmap;
    .local v2, "step1Bitmap":Landroid/graphics/Bitmap;
    :pswitch_3
    aget-object v6, v4, v7

    invoke-static {v6, p1, v5}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 743
    .local v2, "step1Bitmap":Landroid/graphics/Bitmap;
    aget-object v6, v4, v8

    invoke-static {v2, v6, v7}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "result":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 748
    .local v1, "result":Landroid/graphics/Bitmap;
    .local v2, "step1Bitmap":Landroid/graphics/Bitmap;
    :pswitch_4
    aget-object v6, v4, v5

    invoke-static {v6, p1}, Landroid/content/res/flymetheme/FlymeThemeHelper;->makeMaskedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "result":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 753
    .local v1, "result":Landroid/graphics/Bitmap;
    :pswitch_5
    aget-object v6, v4, v7

    invoke-static {v6, p1, v5}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "result":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 758
    .local v1, "result":Landroid/graphics/Bitmap;
    :pswitch_6
    aget-object v6, v4, v8

    invoke-static {p1, v6, v7}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addBackguard(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "result":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 763
    .local v1, "result":Landroid/graphics/Bitmap;
    :pswitch_7
    if-eqz p0, :cond_3

    .line 764
    invoke-static {p1, p0}, Landroid/content/res/flymetheme/FlymeThemeHelper;->scale3rdPartIcon(Landroid/graphics/Bitmap;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "result":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 766
    .local v1, "result":Landroid/graphics/Bitmap;
    :cond_3
    move-object v1, p1

    .local v1, "result":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 773
    .end local v1    # "result":Landroid/graphics/Bitmap;
    .end local v2    # "step1Bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "step2Bitmap":Landroid/graphics/Bitmap;
    :cond_4
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 776
    :cond_5
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2

    .line 781
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_6
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_4

    .line 785
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_7
    sget v5, Landroid/content/res/flymetheme/FlymeThemeHelper;->mMBBFlag:I

    and-int/lit8 v5, v5, 0x0

    sput v5, Landroid/content/res/flymetheme/FlymeThemeHelper;->mMBBFlag:I

    .line 786
    return-object v1

    .line 721
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static makeMaskedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "maskBmp"    # Landroid/graphics/Bitmap;
    .param p1, "viewBmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 100
    :try_start_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 101
    .local v3, "resultBmp":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 102
    .local v2, "paint":Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 103
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 104
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {p1, v4, v5}, Landroid/content/res/flymetheme/FlymeThemeHelper;->zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 105
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, p1, v4, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    return-object v3

    .line 107
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "paint":Landroid/graphics/Paint;
    .end local v3    # "resultBmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 108
    .local v1, "er":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 110
    return-object p1
.end method

.method public static makeThemeIcon(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "srcDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 644
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/content/res/flymetheme/FlymeThemeHelper;->makeThemeIcon(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static makeThemeIcon(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "srcDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "isFlymeIcon"    # Z

    .prologue
    .line 658
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_0

    .line 659
    return-object p1

    :cond_0
    move-object v1, p1

    .line 661
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 664
    .local v0, "srcBitmap":Landroid/graphics/Bitmap;
    invoke-static {p2, p3, v0}, Landroid/content/res/flymetheme/FlymeThemeHelper;->isNeedMakeThemeIcon(Landroid/content/pm/ApplicationInfo;ZLandroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 665
    return-object p1

    .line 669
    :cond_1
    invoke-static {v0}, Landroid/content/res/flymetheme/FlymeThemeHelper;->makeFilterBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 671
    invoke-static {p2, v0}, Landroid/content/res/flymetheme/FlymeThemeHelper;->makeMaskBackgroundBoarderBitmap(Landroid/content/pm/ApplicationInfo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 672
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method public static makeThemeShortcut(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "srcDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 796
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/content/res/flymetheme/FlymeThemeHelper;->makeThemeIcon(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static scale3rdPartIcon(Landroid/graphics/Bitmap;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/Bitmap;
    .locals 14
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 869
    const/4 v10, 0x0

    .line 870
    .local v10, "resizeBmp":Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    .line 871
    .local v11, "resultBmp":Landroid/graphics/Bitmap;
    invoke-static {p1}, Landroid/content/res/flymetheme/FlymeThemeUtils;->isInWhiteList(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 872
    move-object v11, p0

    .line 896
    .end local v10    # "resizeBmp":Landroid/graphics/Bitmap;
    .local v11, "resultBmp":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object v11

    .line 875
    .restart local v10    # "resizeBmp":Landroid/graphics/Bitmap;
    .local v11, "resultBmp":Landroid/graphics/Bitmap;
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 876
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 875
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 877
    .local v11, "resultBmp":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 878
    .local v9, "paint":Landroid/graphics/Paint;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 879
    .local v7, "canvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 880
    .local v5, "matrix":Landroid/graphics/Matrix;
    sget v0, Landroid/content/res/flymetheme/FlymeThemeHelper;->SCALE_VALUE:F

    sget v1, Landroid/content/res/flymetheme/FlymeThemeHelper;->SCALE_VALUE:F

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 881
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 882
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 881
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 882
    const/4 v6, 0x1

    move-object v0, p0

    .line 881
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 883
    .local v10, "resizeBmp":Landroid/graphics/Bitmap;
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v12, v0, 0x2

    .line 884
    .local v12, "x":I
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v13, v0, 0x2

    .line 885
    .local v13, "y":I
    int-to-float v0, v12

    int-to-float v1, v13

    invoke-virtual {v7, v10, v0, v1, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 890
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 891
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 892
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    .end local v9    # "paint":Landroid/graphics/Paint;
    .end local v10    # "resizeBmp":Landroid/graphics/Bitmap;
    .end local v12    # "x":I
    .end local v13    # "y":I
    :goto_1
    const/4 v10, 0x0

    .local v10, "resizeBmp":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 886
    .end local v10    # "resizeBmp":Landroid/graphics/Bitmap;
    .end local v11    # "resultBmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v8

    .line 887
    .local v8, "error":Ljava/lang/OutOfMemoryError;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 888
    move-object v11, p0

    .line 890
    .restart local v11    # "resultBmp":Landroid/graphics/Bitmap;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 891
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 889
    .end local v8    # "error":Ljava/lang/OutOfMemoryError;
    .end local v11    # "resultBmp":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v0

    .line 890
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 889
    :cond_2
    :goto_2
    throw v0

    .line 891
    :cond_3
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 892
    const/4 v10, 0x0

    .restart local v10    # "resizeBmp":Landroid/graphics/Bitmap;
    goto :goto_2
.end method

.method public static zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 123
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, p1, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "er":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 127
    return-object p0
.end method
