.class public Lcyanogenmod/app/CustomTile;
.super Ljava/lang/Object;
.source "CustomTile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/app/CustomTile$Builder;,
        Lcyanogenmod/app/CustomTile$ExpandedListItem;,
        Lcyanogenmod/app/CustomTile$ExpandedGridItem;,
        Lcyanogenmod/app/CustomTile$ExpandedItem;,
        Lcyanogenmod/app/CustomTile$RemoteExpandedStyle;,
        Lcyanogenmod/app/CustomTile$ListExpandedStyle;,
        Lcyanogenmod/app/CustomTile$GridExpandedStyle;,
        Lcyanogenmod/app/CustomTile$ExpandedStyle;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/app/CustomTile;",
            ">;"
        }
    .end annotation
.end field

.field public static final PSEUDO_GRID_ITEM_MAX_COUNT:I = 0x9


# instance fields
.field public collapsePanel:Z

.field public contentDescription:Ljava/lang/String;

.field public deleteIntent:Landroid/app/PendingIntent;

.field public expandedStyle:Lcyanogenmod/app/CustomTile$ExpandedStyle;

.field public icon:I

.field public label:Ljava/lang/String;

.field public onClick:Landroid/app/PendingIntent;

.field public onClickUri:Landroid/net/Uri;

.field public onSettingsClick:Landroid/content/Intent;

.field public remoteIcon:Landroid/graphics/Bitmap;

.field private resourcesPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 869
    new-instance v0, Lcyanogenmod/app/CustomTile$1;

    invoke-direct {v0}, Lcyanogenmod/app/CustomTile$1;-><init>()V

    sput-object v0, Lcyanogenmod/app/CustomTile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcyanogenmod/app/CustomTile;->resourcesPackageName:Ljava/lang/String;

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/CustomTile;->collapsePanel:Z

    .line 167
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v3, ""

    iput-object v3, p0, Lcyanogenmod/app/CustomTile;->resourcesPackageName:Ljava/lang/String;

    .line 109
    iput-boolean v4, p0, Lcyanogenmod/app/CustomTile;->collapsePanel:Z

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 118
    .local v1, "parcelableVersion":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 119
    .local v0, "parcelableSize":I
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 124
    .local v2, "startPosition":I
    if-lt v1, v4, :cond_6

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    iput-object v3, p0, Lcyanogenmod/app/CustomTile;->onClick:Landroid/app/PendingIntent;

    .line 128
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 129
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    iput-object v3, p0, Lcyanogenmod/app/CustomTile;->onSettingsClick:Landroid/content/Intent;

    .line 131
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 132
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Lcyanogenmod/app/CustomTile;->onClickUri:Landroid/net/Uri;

    .line 134
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcyanogenmod/app/CustomTile;->label:Ljava/lang/String;

    .line 137
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcyanogenmod/app/CustomTile;->contentDescription:Ljava/lang/String;

    .line 140
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    .line 141
    sget-object v3, Lcyanogenmod/app/CustomTile$ExpandedStyle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcyanogenmod/app/CustomTile$ExpandedStyle;

    iput-object v3, p0, Lcyanogenmod/app/CustomTile;->expandedStyle:Lcyanogenmod/app/CustomTile$ExpandedStyle;

    .line 143
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcyanogenmod/app/CustomTile;->icon:I

    .line 146
    :cond_6
    const/4 v3, 0x2

    if-lt v1, v3, :cond_8

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcyanogenmod/app/CustomTile;->resourcesPackageName:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v4, :cond_9

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcyanogenmod/app/CustomTile;->collapsePanel:Z

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    .line 150
    sget-object v3, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcyanogenmod/app/CustomTile;->remoteIcon:Landroid/graphics/Bitmap;

    .line 152
    :cond_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    .line 153
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    iput-object v3, p0, Lcyanogenmod/app/CustomTile;->deleteIntent:Landroid/app/PendingIntent;

    .line 157
    :cond_8
    add-int v3, v2, v0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 158
    return-void

    .line 148
    :cond_9
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static synthetic access$302(Lcyanogenmod/app/CustomTile;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcyanogenmod/app/CustomTile;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcyanogenmod/app/CustomTile;->resourcesPackageName:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public clone()Lcyanogenmod/app/CustomTile;
    .locals 1

    .prologue
    .line 176
    new-instance v0, Lcyanogenmod/app/CustomTile;

    invoke-direct {v0}, Lcyanogenmod/app/CustomTile;-><init>()V

    .line 177
    .local v0, "that":Lcyanogenmod/app/CustomTile;
    invoke-virtual {p0, v0}, Lcyanogenmod/app/CustomTile;->cloneInto(Lcyanogenmod/app/CustomTile;)V

    .line 178
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0}, Lcyanogenmod/app/CustomTile;->clone()Lcyanogenmod/app/CustomTile;

    move-result-object v0

    return-object v0
.end method

.method public cloneInto(Lcyanogenmod/app/CustomTile;)V
    .locals 1
    .param p1, "that"    # Lcyanogenmod/app/CustomTile;

    .prologue
    .line 221
    iget-object v0, p0, Lcyanogenmod/app/CustomTile;->resourcesPackageName:Ljava/lang/String;

    iput-object v0, p1, Lcyanogenmod/app/CustomTile;->resourcesPackageName:Ljava/lang/String;

    .line 222
    iget-object v0, p0, Lcyanogenmod/app/CustomTile;->onClick:Landroid/app/PendingIntent;

    iput-object v0, p1, Lcyanogenmod/app/CustomTile;->onClick:Landroid/app/PendingIntent;

    .line 223
    iget-object v0, p0, Lcyanogenmod/app/CustomTile;->onSettingsClick:Landroid/content/Intent;

    iput-object v0, p1, Lcyanogenmod/app/CustomTile;->onSettingsClick:Landroid/content/Intent;

    .line 224
    iget-object v0, p0, Lcyanogenmod/app/CustomTile;->onClickUri:Landroid/net/Uri;

    iput-object v0, p1, Lcyanogenmod/app/CustomTile;->onClickUri:Landroid/net/Uri;

    .line 225
    iget-object v0, p0, Lcyanogenmod/app/CustomTile;->label:Ljava/lang/String;

    iput-object v0, p1, Lcyanogenmod/app/CustomTile;->label:Ljava/lang/String;

    .line 226
    iget-object v0, p0, Lcyanogenmod/app/CustomTile;->contentDescription:Ljava/lang/String;

    iput-object v0, p1, Lcyanogenmod/app/CustomTile;->contentDescription:Ljava/lang/String;

    .line 227
    iget-object v0, p0, Lcyanogenmod/app/CustomTile;->expandedStyle:Lcyanogenmod/app/CustomTile$ExpandedStyle;

    iput-object v0, p1, Lcyanogenmod/app/CustomTile;->expandedStyle:Lcyanogenmod/app/CustomTile$ExpandedStyle;

    .line 228
    iget v0, p0, Lcyanogenmod/app/CustomTile;->icon:I

    iput v0, p1, Lcyanogenmod/app/CustomTile;->icon:I

    .line 229
    iget-boolean v0, p0, Lcyanogenmod/app/CustomTile;->collapsePanel:Z

    iput-boolean v0, p1, Lcyanogenmod/app/CustomTile;->collapsePanel:Z

    .line 230
    iget-object v0, p0, Lcyanogenmod/app/CustomTile;->remoteIcon:Landroid/graphics/Bitmap;

    iput-object v0, p1, Lcyanogenmod/app/CustomTile;->remoteIcon:Landroid/graphics/Bitmap;

    .line 231
    iget-object v0, p0, Lcyanogenmod/app/CustomTile;->deleteIntent:Landroid/app/PendingIntent;

    iput-object v0, p1, Lcyanogenmod/app/CustomTile;->deleteIntent:Landroid/app/PendingIntent;

    .line 232
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    return v0
.end method

.method public getResourcesPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcyanogenmod/app/CustomTile;->resourcesPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .local v1, "b":Ljava/lang/StringBuilder;
    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "NEW_LINE":Ljava/lang/String;
    iget-object v2, p0, Lcyanogenmod/app/CustomTile;->onClickUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClickUri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->onClickUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :cond_0
    iget-object v2, p0, Lcyanogenmod/app/CustomTile;->onClick:Landroid/app/PendingIntent;

    if-eqz v2, :cond_1

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->onClick:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :cond_1
    iget-object v2, p0, Lcyanogenmod/app/CustomTile;->onSettingsClick:Landroid/content/Intent;

    if-eqz v2, :cond_2

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSettingsClick="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->onSettingsClick:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    :cond_2
    iget-object v2, p0, Lcyanogenmod/app/CustomTile;->label:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "label="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    :cond_3
    iget-object v2, p0, Lcyanogenmod/app/CustomTile;->contentDescription:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contentDescription="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->contentDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    :cond_4
    iget-object v2, p0, Lcyanogenmod/app/CustomTile;->expandedStyle:Lcyanogenmod/app/CustomTile$ExpandedStyle;

    if-eqz v2, :cond_5

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expandedStyle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->expandedStyle:Lcyanogenmod/app/CustomTile$ExpandedStyle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "icon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcyanogenmod/app/CustomTile;->icon:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resourcesPackageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->resourcesPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "collapsePanel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcyanogenmod/app/CustomTile;->collapsePanel:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    iget-object v2, p0, Lcyanogenmod/app/CustomTile;->remoteIcon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remoteIcon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->remoteIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getGenerationId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    :cond_6
    iget-object v2, p0, Lcyanogenmod/app/CustomTile;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_7

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteIntent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 243
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 248
    .local v1, "sizePosition":I
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 252
    .local v2, "startPosition":I
    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->onClick:Landroid/app/PendingIntent;

    if-eqz v3, :cond_0

    .line 253
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->onClick:Landroid/app/PendingIntent;

    invoke-virtual {v3, p1, v5}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 258
    :goto_0
    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->onSettingsClick:Landroid/content/Intent;

    if-eqz v3, :cond_1

    .line 259
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->onSettingsClick:Landroid/content/Intent;

    invoke-virtual {v3, p1, v5}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 264
    :goto_1
    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->onClickUri:Landroid/net/Uri;

    if-eqz v3, :cond_2

    .line 265
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->onClickUri:Landroid/net/Uri;

    invoke-virtual {v3, p1, v5}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 270
    :goto_2
    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->label:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 271
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->label:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 276
    :goto_3
    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->contentDescription:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 277
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->contentDescription:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 282
    :goto_4
    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->expandedStyle:Lcyanogenmod/app/CustomTile$ExpandedStyle;

    if-eqz v3, :cond_5

    .line 283
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->expandedStyle:Lcyanogenmod/app/CustomTile$ExpandedStyle;

    invoke-virtual {v3, p1, v5}, Lcyanogenmod/app/CustomTile$ExpandedStyle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 288
    :goto_5
    iget v3, p0, Lcyanogenmod/app/CustomTile;->icon:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->resourcesPackageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 292
    iget-boolean v3, p0, Lcyanogenmod/app/CustomTile;->collapsePanel:Z

    if-eqz v3, :cond_6

    move v3, v4

    :goto_6
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->remoteIcon:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_7

    .line 295
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->remoteIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3, p1, v5}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 301
    :goto_7
    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_8

    .line 302
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    iget-object v3, p0, Lcyanogenmod/app/CustomTile;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, p1, v5}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 309
    :goto_8
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int v0, v3, v2

    .line 310
    .local v0, "parcelableSize":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 311
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    add-int v3, v2, v0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 313
    return-void

    .line 256
    .end local v0    # "parcelableSize":I
    :cond_0
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 262
    :cond_1
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 268
    :cond_2
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 274
    :cond_3
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 280
    :cond_4
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 286
    :cond_5
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    :cond_6
    move v3, v5

    .line 292
    goto :goto_6

    .line 298
    :cond_7
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 305
    :cond_8
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8
.end method
