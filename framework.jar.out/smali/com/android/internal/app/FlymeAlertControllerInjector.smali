.class final Lcom/android/internal/app/FlymeAlertControllerInjector;
.super Ljava/lang/Object;
.source "AlertController.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static initFlymeExtFields(Lcom/android/internal/app/AlertController$AlertParams;)V
    .locals 1
    .param p0, "alertParams"    # Lcom/android/internal/app/AlertController$AlertParams;

    .prologue
    .line 1307
    new-instance v0, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;

    invoke-direct {v0, p0}, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;-><init>(Lcom/android/internal/app/AlertController$AlertParams;)V

    iput-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mAlertParamsExt:Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;

    .line 1306
    return-void
.end method

.method static initFlymeExtFields(Lcom/android/internal/app/AlertController;Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 1
    .param p0, "alertController"    # Lcom/android/internal/app/AlertController;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;

    .prologue
    .line 1303
    new-instance v0, Lcom/android/internal/app/AlertControllerExt;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/android/internal/app/AlertControllerExt;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;Lcom/android/internal/app/AlertController;)V

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mAlertExt:Lcom/android/internal/app/AlertControllerExt;

    .line 1302
    return-void
.end method

.method static setFlymeStyleParams(Lcom/android/internal/app/AlertController$AlertParams;Lcom/android/internal/app/AlertController;)V
    .locals 1
    .param p0, "alertParams"    # Lcom/android/internal/app/AlertController$AlertParams;
    .param p1, "dialog"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mAlertParamsExt:Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;->setFlymeStyleParams(Lcom/android/internal/app/AlertController;)V

    .line 1310
    return-void
.end method

.method static setHasListView(Lcom/android/internal/app/AlertController$AlertParams;Lcom/android/internal/app/AlertController;)V
    .locals 2
    .param p0, "alertParams"    # Lcom/android/internal/app/AlertController$AlertParams;
    .param p1, "dialog"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 1340
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/flyme/internal/R$dimen;->dialog_padding_material_mz_list:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mFlymeLeftPadding:I

    .line 1341
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/flyme/internal/R$dimen;->dialog_padding_material_mz_list:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mFlymeRightPadding:I

    .line 1342
    invoke-virtual {p1}, Lcom/android/internal/app/AlertController;->setHasListView()V

    .line 1339
    return-void
.end method

.method static setListViewLayoutParams(Lcom/android/internal/app/AlertController;)V
    .locals 4
    .param p0, "alertController"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 1328
    iget-boolean v2, p0, Lcom/android/internal/app/AlertController;->mFlymeHasListView:Z

    if-eqz v2, :cond_0

    .line 1329
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v3, 0x1020324

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1330
    .local v1, "titleTemplate":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1331
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/internal/app/AlertController;->flymeGetFieldContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/flyme/internal/R$dimen;->dialog_padding_material_mz_list:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1332
    invoke-virtual {p0}, Lcom/android/internal/app/AlertController;->flymeGetFieldContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/flyme/internal/R$dimen;->dialog_padding_material_mz_list:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1333
    invoke-virtual {p0}, Lcom/android/internal/app/AlertController;->flymeGetFieldContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/flyme/internal/R$dimen;->dialog_padding_material_mz_list:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1334
    const/4 v2, 0x0

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1335
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1327
    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "titleTemplate":Landroid/view/View;
    :cond_0
    return-void
.end method

.method static setupListView(Lcom/android/internal/app/AlertController$AlertParams;Lcom/android/internal/app/AlertController;)V
    .locals 1
    .param p0, "alertParams"    # Lcom/android/internal/app/AlertController$AlertParams;
    .param p1, "dialog"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mAlertParamsExt:Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;->setupListView(Lcom/android/internal/app/AlertController;)V

    .line 1314
    return-void
.end method

.method static syncViewAndData(Lcom/android/internal/app/AlertController;)V
    .locals 2
    .param p0, "dialog"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mAlertExt:Lcom/android/internal/app/AlertControllerExt;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertController;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertControllerExt;->setView(Landroid/view/View;)V

    .line 1320
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mAlertExt:Lcom/android/internal/app/AlertControllerExt;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertController;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertControllerExt;->setTitle(Ljava/lang/CharSequence;)V

    .line 1321
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mAlertExt:Lcom/android/internal/app/AlertControllerExt;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertController;->getMessage()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertControllerExt;->setMessage(Ljava/lang/CharSequence;)V

    .line 1322
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mAlertExt:Lcom/android/internal/app/AlertControllerExt;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertController;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertControllerExt;->setListView(Landroid/widget/ListView;)V

    .line 1323
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mAlertExt:Lcom/android/internal/app/AlertControllerExt;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertController;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertControllerExt;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1324
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mAlertExt:Lcom/android/internal/app/AlertControllerExt;

    invoke-virtual {v0}, Lcom/android/internal/app/AlertControllerExt;->setupView()V

    .line 1318
    return-void
.end method
