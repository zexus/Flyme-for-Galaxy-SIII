.class final Landroid/app/FlymeAlertDialogInjector;
.super Ljava/lang/Object;
.source "AlertDialog.java"


# static fields
.field private static mIsThemeDeviceDefaultLight:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getFlymeAlertDialogTheme(Landroid/content/Context;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    .line 1351
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 1352
    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/FlymeAlertDialogInjector;->mIsThemeDeviceDefaultLight:Z

    .line 1353
    sget v0, Lcom/flyme/internal/R$style;->Theme_Flyme_Light_Dialog_Alert:I

    return v0

    .line 1355
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/FlymeAlertDialogInjector;->mIsThemeDeviceDefaultLight:Z

    .line 1357
    return p1
.end method

.method static setIsThemeDeviceDefaultLight(Landroid/app/AlertDialog;)V
    .locals 2
    .param p0, "alertDialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 1340
    invoke-virtual {p0}, Landroid/app/AlertDialog;->flymeGetFieldAlert()Lcom/android/internal/app/AlertController;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAlertExt:Lcom/android/internal/app/AlertControllerExt;

    sget-boolean v1, Landroid/app/FlymeAlertDialogInjector;->mIsThemeDeviceDefaultLight:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertControllerExt;->setIsThemeDeviceDefaultLight(Z)V

    .line 1338
    return-void
.end method
