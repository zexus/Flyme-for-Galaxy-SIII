.class final Lcom/android/internal/app/AlertController$AlertParams$FlymeCheckedItemAdapter;
.super Lcom/android/internal/app/AlertController$CheckedItemAdapter;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AlertController$AlertParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FlymeCheckedItemAdapter"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/app/AlertController$AlertParams;


# direct methods
.method constructor <init>(Lcom/android/internal/app/AlertController$AlertParams;II[Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/internal/app/AlertController$AlertParams;
    .param p2, "resource"    # I
    .param p3, "textViewResourceId"    # I
    .param p4, "objects"    # [Ljava/lang/CharSequence;

    .prologue
    .line 1221
    iput-object p1, p0, Lcom/android/internal/app/AlertController$AlertParams$FlymeCheckedItemAdapter;->this$1:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 1222
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/internal/app/AlertController$CheckedItemAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    .line 1221
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1227
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/app/AlertController$CheckedItemAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1228
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams$FlymeCheckedItemAdapter;->this$1:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/AlertController$AlertParams;->setFlymeListItemViewPadding(Landroid/view/View;)V

    .line 1229
    return-object v0
.end method
