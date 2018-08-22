.class final Landroid/widget/FlymeAutoCompleteTextViewInjector$DropdownPopup;
.super Landroid/widget/ListPopupWindow;
.source "AutoCompleteTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/FlymeAutoCompleteTextViewInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DropdownPopup"
.end annotation


# instance fields
.field private mDropDownPaddingEnd:I

.field private mDropDownPaddingStart:I

.field private mDropDownPaddingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 1525
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1524
    return-void
.end method


# virtual methods
.method public setPaddingEnd(I)V
    .locals 0
    .param p1, "padding"    # I

    .prologue
    .line 1540
    iput p1, p0, Landroid/widget/FlymeAutoCompleteTextViewInjector$DropdownPopup;->mDropDownPaddingEnd:I

    .line 1539
    return-void
.end method

.method public setPaddingStart(I)V
    .locals 0
    .param p1, "padding"    # I

    .prologue
    .line 1536
    iput p1, p0, Landroid/widget/FlymeAutoCompleteTextViewInjector$DropdownPopup;->mDropDownPaddingStart:I

    .line 1535
    return-void
.end method

.method public setPaddingTop(I)V
    .locals 0
    .param p1, "padding"    # I

    .prologue
    .line 1544
    iput p1, p0, Landroid/widget/FlymeAutoCompleteTextViewInjector$DropdownPopup;->mDropDownPaddingTop:I

    .line 1543
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    .line 1530
    invoke-virtual {p0}, Landroid/widget/FlymeAutoCompleteTextViewInjector$DropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 1531
    .local v0, "buildDropDown":Z
    :goto_0
    iget v1, p0, Landroid/widget/FlymeAutoCompleteTextViewInjector$DropdownPopup;->mDropDownPaddingStart:I

    iget v2, p0, Landroid/widget/FlymeAutoCompleteTextViewInjector$DropdownPopup;->mDropDownPaddingTop:I

    iget v3, p0, Landroid/widget/FlymeAutoCompleteTextViewInjector$DropdownPopup;->mDropDownPaddingEnd:I

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/widget/FlymeAutoCompleteTextViewInjector$DropdownPopup;->setDropDownListViewPadding(IIII)V

    .line 1532
    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    .line 1529
    return-void

    .line 1530
    .end local v0    # "buildDropDown":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "buildDropDown":Z
    goto :goto_0
.end method
