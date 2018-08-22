.class final Lcom/android/server/wallpaper/FlymeChildrenModeToast;
.super Ljava/lang/Object;
.source "WallpaperManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2448
    iput-object p1, p0, Lcom/android/server/wallpaper/FlymeChildrenModeToast;->mContext:Landroid/content/Context;

    .line 2447
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2453
    iget-object v0, p0, Lcom/android/server/wallpaper/FlymeChildrenModeToast;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wallpaper/FlymeChildrenModeToast;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/flyme/internal/R$string;->children_mode_can_not_set_wallpaper:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2452
    return-void
.end method
