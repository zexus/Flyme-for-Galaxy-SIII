.class final Lcom/android/internal/app/AlertController$AlertParams$FlymeSimpleCursorAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AlertController$AlertParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FlymeSimpleCursorAdapter"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/app/AlertController$AlertParams;


# direct methods
.method constructor <init>(Lcom/android/internal/app/AlertController$AlertParams;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 6
    .param p1, "this$1"    # Lcom/android/internal/app/AlertController$AlertParams;
    .param p2, "layout"    # I
    .param p3, "c"    # Landroid/database/Cursor;
    .param p4, "from"    # [Ljava/lang/String;
    .param p5, "to"    # [I

    .prologue
    .line 1207
    iput-object p1, p0, Lcom/android/internal/app/AlertController$AlertParams$FlymeSimpleCursorAdapter;->this$1:Lcom/android/internal/app/AlertController$AlertParams;

    move-object v0, p0

    iget-object v1, p1, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1208
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 1207
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1213
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1214
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams$FlymeSimpleCursorAdapter;->this$1:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/AlertController$AlertParams;->setFlymeListItemViewPadding(Landroid/view/View;)V

    .line 1215
    return-object v0
.end method
