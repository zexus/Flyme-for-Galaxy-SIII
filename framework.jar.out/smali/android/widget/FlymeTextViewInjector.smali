.class final Landroid/widget/FlymeTextViewInjector;
.super Ljava/lang/Object;
.source "TextView.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copyAllOnTextContextMenuItem(Landroid/widget/TextView;)V
    .locals 2
    .param p0, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 10771
    invoke-virtual {p0}, Landroid/widget/TextView;->flymeGetFieldTransformed()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->flymeInvokeMethodSetPrimaryClip(Landroid/content/ClipData;)V

    .line 10772
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    .line 10770
    return-void
.end method

.method static editorOnSelectionChanged(Landroid/widget/TextView;Landroid/text/Spanned;Ljava/lang/Object;IIII)V
    .locals 4
    .param p0, "tv"    # Landroid/widget/TextView;
    .param p1, "buf"    # Landroid/text/Spanned;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "oldStart"    # I
    .param p4, "newStart"    # I
    .param p5, "oldEnd"    # I
    .param p6, "newEnd"    # I

    .prologue
    .line 10724
    const/4 v2, 0x0

    .line 10725
    .local v2, "selChanged":Z
    const/4 v1, -0x1

    .local v1, "newSelStart":I
    const/4 v0, -0x1

    .line 10727
    .local v0, "newSelEnd":I
    sget-object v3, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    if-ne p2, v3, :cond_0

    .line 10728
    const/4 v2, 0x1

    .line 10729
    move v0, p4

    .line 10732
    :cond_0
    sget-object v3, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    if-ne p2, v3, :cond_1

    .line 10733
    const/4 v2, 0x1

    .line 10734
    move v1, p4

    .line 10737
    :cond_1
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->flymeGetFieldEditor()Landroid/widget/Editor;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 10738
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    and-int/lit16 v3, v3, 0x200

    if-nez v3, :cond_3

    .line 10739
    if-gez v1, :cond_2

    .line 10740
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 10742
    :cond_2
    if-gez v0, :cond_3

    .line 10743
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 10746
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->flymeGetFieldEditor()Landroid/widget/Editor;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Landroid/widget/Editor;->onSelectionChanged(II)V

    .line 10723
    :cond_4
    return-void
.end method

.method private static editorSelectCurrentWordMz(Landroid/widget/TextView;)V
    .locals 1
    .param p0, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 10765
    invoke-virtual {p0}, Landroid/widget/TextView;->flymeGetFieldEditor()Landroid/widget/Editor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10766
    invoke-virtual {p0}, Landroid/widget/TextView;->flymeGetFieldEditor()Landroid/widget/Editor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Editor;->selectCurrentWordMz()Z

    .line 10764
    :cond_0
    return-void
.end method

.method static initFlymeExtraFields(Landroid/widget/TextView;Landroid/content/Context;)V
    .locals 5
    .param p0, "tv"    # Landroid/widget/TextView;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 10700
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 10702
    .local v1, "theme":Landroid/content/res/Resources$Theme;
    iget v3, p0, Landroid/widget/TextView;->mCursorDrawableRes:I

    if-eqz v3, :cond_0

    .line 10703
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Landroid/widget/TextView;->mCursorDrawableRes:I

    invoke-virtual {v3, v4, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 10704
    .local v0, "cursor":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    :goto_0
    iput v2, p0, Landroid/widget/TextView;->mFlymeCursorWidth:I

    .line 10706
    .end local v0    # "cursor":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/TextView;->mFlymeAutoLinkMaskIncludeDateTime:Z

    .line 10707
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/widget/TextView;->mFlymeTempCoords:[I

    .line 10699
    return-void

    .line 10704
    .restart local v0    # "cursor":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    goto :goto_0
.end method

.method static mzGetAutoLinkMask(Landroid/widget/TextView;)I
    .locals 1
    .param p0, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 10711
    iget-boolean v0, p0, Landroid/widget/TextView;->mFlymeAutoLinkMaskIncludeDateTime:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->flymeGetFieldAutoLinkMask()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 10712
    invoke-virtual {p0}, Landroid/widget/TextView;->flymeGetFieldAutoLinkMask()I

    move-result v0

    and-int/lit8 v0, v0, -0x11

    return v0

    .line 10714
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->flymeGetFieldAutoLinkMask()I

    move-result v0

    return v0
.end method

.method static mzOnTextContextMenuItem(Landroid/widget/TextView;I)Z
    .locals 2
    .param p0, "tv"    # Landroid/widget/TextView;
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x1

    .line 10753
    invoke-virtual {p0}, Landroid/widget/TextView;->flymeGetIdStartSelecting()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 10754
    invoke-static {p0}, Landroid/widget/FlymeTextViewInjector;->editorSelectCurrentWordMz(Landroid/widget/TextView;)V

    .line 10755
    return v1

    .line 10756
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->flymeGetIdCopyAll()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 10757
    invoke-static {p0}, Landroid/widget/FlymeTextViewInjector;->copyAllOnTextContextMenuItem(Landroid/widget/TextView;)V

    .line 10758
    return v1

    .line 10761
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static resetAutoLinkMask(Landroid/widget/TextView;)V
    .locals 2
    .param p0, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 10718
    iget-boolean v0, p0, Landroid/widget/TextView;->mFlymeAutoLinkMaskIncludeDateTime:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->flymeGetFieldAutoLinkMask()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 10719
    invoke-virtual {p0}, Landroid/widget/TextView;->flymeGetFieldAutoLinkMask()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->flymeSetFieldAutoLinkMask(I)V

    .line 10717
    :cond_0
    return-void
.end method
