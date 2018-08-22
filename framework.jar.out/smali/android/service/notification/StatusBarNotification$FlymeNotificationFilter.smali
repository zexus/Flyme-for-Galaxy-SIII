.class public Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;
.super Ljava/lang/Object;
.source "StatusBarNotification.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/StatusBarNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlymeNotificationFilter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;",
            ">;"
        }
    .end annotation
.end field

.field public static NOTIFICATION_UNKNOW:Ljava/lang/String;


# instance fields
.field public category:Ljava/lang/String;

.field public categoryPriority:I

.field public extras:Landroid/os/Bundle;

.field public intercept:Z

.field public notificationPriority:I

.field public score:F

.field public score_scale:F

.field public shouldAffectIntercept:Z

.field public shouldAffectRanking:Z

.field public shouldAuthorityManagement:Z

.field public tag:Ljava/lang/String;

.field public userFilter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-string/jumbo v0, "unknow"

    sput-object v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->NOTIFICATION_UNKNOW:Ljava/lang/String;

    .line 104
    new-instance v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter$1;

    invoke-direct {v0}, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter$1;-><init>()V

    sput-object v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 52
    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget-object v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->NOTIFICATION_UNKNOW:Ljava/lang/String;

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->category:Ljava/lang/String;

    .line 54
    iput v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->categoryPriority:I

    .line 55
    iput v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->notificationPriority:I

    .line 56
    iput v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->userFilter:I

    .line 59
    iput-boolean v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->intercept:Z

    .line 61
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->score:F

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->score_scale:F

    .line 63
    iput-boolean v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectRanking:Z

    .line 64
    iput-boolean v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectIntercept:Z

    .line 65
    iput-boolean v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAuthorityManagement:Z

    .line 82
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget-object v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->NOTIFICATION_UNKNOW:Ljava/lang/String;

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->category:Ljava/lang/String;

    .line 54
    iput v2, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->categoryPriority:I

    .line 55
    iput v2, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->notificationPriority:I

    .line 56
    iput v2, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->userFilter:I

    .line 59
    iput-boolean v2, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->intercept:Z

    .line 61
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->score:F

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->score_scale:F

    .line 63
    iput-boolean v2, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectRanking:Z

    .line 64
    iput-boolean v2, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectIntercept:Z

    .line 65
    iput-boolean v2, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAuthorityManagement:Z

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->category:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->categoryPriority:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->notificationPriority:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->userFilter:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->tag:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->extras:Landroid/os/Bundle;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->intercept:Z

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->score:F

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->score_scale:F

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectRanking:Z

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectIntercept:Z

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    :goto_3
    iput-boolean v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAuthorityManagement:Z

    .line 67
    return-void

    :cond_0
    move v0, v2

    .line 74
    goto :goto_0

    :cond_1
    move v0, v2

    .line 77
    goto :goto_1

    :cond_2
    move v0, v2

    .line 78
    goto :goto_2

    :cond_3
    move v1, v2

    .line 79
    goto :goto_3
.end method


# virtual methods
.method public copy()Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    invoke-direct {v0}, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;-><init>()V

    .line 87
    .local v0, "filter":Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;
    iget-object v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->category:Ljava/lang/String;

    iput-object v1, v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->category:Ljava/lang/String;

    .line 88
    iget v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->categoryPriority:I

    iput v1, v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->categoryPriority:I

    .line 89
    iget v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->notificationPriority:I

    iput v1, v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->notificationPriority:I

    .line 90
    iget v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->userFilter:I

    iput v1, v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->userFilter:I

    .line 91
    iget-object v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->tag:Ljava/lang/String;

    iput-object v1, v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->tag:Ljava/lang/String;

    .line 92
    iget-object v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->extras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    iput-object v1, v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->extras:Landroid/os/Bundle;

    .line 95
    :cond_0
    iget-boolean v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->intercept:Z

    iput-boolean v1, v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->intercept:Z

    .line 96
    iget v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->score:F

    iput v1, v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->score:F

    .line 97
    iget v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->score_scale:F

    iput v1, v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->score_scale:F

    .line 98
    iget-boolean v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectRanking:Z

    iput-boolean v1, v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectRanking:Z

    .line 99
    iget-boolean v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectIntercept:Z

    iput-boolean v1, v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectIntercept:Z

    .line 100
    iget-boolean v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAuthorityManagement:Z

    iput-boolean v1, v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAuthorityManagement:Z

    .line 101
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public isLowPriority()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x2

    const/4 v1, 0x0

    .line 148
    iget v2, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->notificationPriority:I

    if-eq v2, v3, :cond_0

    .line 149
    iget v2, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->notificationPriority:I

    if-nez v2, :cond_2

    .line 150
    iget v2, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->categoryPriority:I

    if-ne v2, v3, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 150
    goto :goto_0

    :cond_2
    move v0, v1

    .line 149
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 138
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "category=%s;categoryPriority=%d,notificationPriority=%d;userFilter=%d;tag=%s;score=%f,score_scale=%f"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    .line 139
    iget-object v4, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->category:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget v4, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->categoryPriority:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iget v4, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->notificationPriority:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    iget v4, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->userFilter:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    iget-object v4, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->tag:Ljava/lang/String;

    const/4 v5, 0x4

    aput-object v4, v3, v5

    iget v4, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->score:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v3, v5

    iget v4, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->score_scale:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x6

    aput-object v4, v3, v5

    .line 138
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "format":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";extras=;intercept="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->intercept:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 141
    const-string/jumbo v2, ";shouldAffectRanking="

    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 141
    iget-boolean v2, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectRanking:Z

    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 142
    const-string/jumbo v2, ";shouldAffectIntercept="

    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 142
    iget-boolean v2, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectIntercept:Z

    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 143
    const-string/jumbo v2, ";shouldAuthorityManagement="

    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 143
    iget-boolean v2, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAuthorityManagement:Z

    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 123
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->categoryPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->notificationPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->userFilter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 129
    iget-boolean v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->intercept:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 130
    iget v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->score:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 131
    iget v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->score_scale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 132
    iget-boolean v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectRanking:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 133
    iget-boolean v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectIntercept:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 134
    iget-boolean v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAuthorityManagement:Z

    if-eqz v0, :cond_3

    :goto_3
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 122
    return-void

    :cond_0
    move v0, v2

    .line 129
    goto :goto_0

    :cond_1
    move v0, v2

    .line 132
    goto :goto_1

    :cond_2
    move v0, v2

    .line 133
    goto :goto_2

    :cond_3
    move v1, v2

    .line 134
    goto :goto_3
.end method
