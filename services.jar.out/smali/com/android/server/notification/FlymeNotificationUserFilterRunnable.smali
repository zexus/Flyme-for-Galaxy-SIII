.class final Lcom/android/server/notification/FlymeNotificationUserFilterRunnable;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mId:I

.field private mKey:I

.field private mNMS:Lcom/android/server/notification/NotificationManagerService;

.field private mPkg:Ljava/lang/String;

.field private mTag:Ljava/lang/String;

.field private mUserId:I


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0
    .param p1, "nms"    # Lcom/android/server/notification/NotificationManagerService;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "id"    # I
    .param p5, "userId"    # I
    .param p6, "key"    # I

    .prologue
    .line 4726
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4728
    iput-object p1, p0, Lcom/android/server/notification/FlymeNotificationUserFilterRunnable;->mNMS:Lcom/android/server/notification/NotificationManagerService;

    .line 4729
    iput-object p2, p0, Lcom/android/server/notification/FlymeNotificationUserFilterRunnable;->mPkg:Ljava/lang/String;

    .line 4730
    iput-object p3, p0, Lcom/android/server/notification/FlymeNotificationUserFilterRunnable;->mTag:Ljava/lang/String;

    .line 4731
    iput p4, p0, Lcom/android/server/notification/FlymeNotificationUserFilterRunnable;->mId:I

    .line 4732
    iput p5, p0, Lcom/android/server/notification/FlymeNotificationUserFilterRunnable;->mUserId:I

    .line 4733
    iput p6, p0, Lcom/android/server/notification/FlymeNotificationUserFilterRunnable;->mKey:I

    .line 4727
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4738
    iget-object v5, p0, Lcom/android/server/notification/FlymeNotificationUserFilterRunnable;->mNMS:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 4739
    :try_start_0
    iget-object v6, p0, Lcom/android/server/notification/FlymeNotificationUserFilterRunnable;->mNMS:Lcom/android/server/notification/NotificationManagerService;

    iget-object v7, p0, Lcom/android/server/notification/FlymeNotificationUserFilterRunnable;->mPkg:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/notification/FlymeNotificationUserFilterRunnable;->mTag:Ljava/lang/String;

    iget v9, p0, Lcom/android/server/notification/FlymeNotificationUserFilterRunnable;->mId:I

    iget v10, p0, Lcom/android/server/notification/FlymeNotificationUserFilterRunnable;->mUserId:I

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/notification/NotificationManagerService;->indexOfNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    .line 4740
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 4741
    iget-object v6, p0, Lcom/android/server/notification/FlymeNotificationUserFilterRunnable;->mNMS:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    .line 4742
    .local v1, "r":Lcom/android/server/notification/NotificationRecord;
    iget-object v2, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 4743
    .local v2, "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v6, v2, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget v7, p0, Lcom/android/server/notification/FlymeNotificationUserFilterRunnable;->mKey:I

    iput v7, v6, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->userFilter:I

    .line 4744
    iget-object v6, v2, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget v6, v6, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->userFilter:I

    if-eqz v6, :cond_0

    .line 4745
    iget-object v6, v2, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget-object v7, v2, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget v7, v7, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->userFilter:I

    if-ne v7, v3, :cond_1

    :goto_0
    iput-boolean v3, v6, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->intercept:Z

    .line 4746
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "FLYME_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/notification/FlymeNotificationUserFilterRunnable;->mPkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/service/notification/StatusBarNotification;->setOverrideGroupKey(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v2    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_0
    monitor-exit v5

    .line 4737
    return-void

    .restart local v1    # "r":Lcom/android/server/notification/NotificationRecord;
    .restart local v2    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_1
    move v3, v4

    .line 4745
    goto :goto_0

    .line 4738
    .end local v0    # "index":I
    .end local v1    # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v2    # "sbn":Landroid/service/notification/StatusBarNotification;
    :catchall_0
    move-exception v3

    monitor-exit v5

    throw v3
.end method
