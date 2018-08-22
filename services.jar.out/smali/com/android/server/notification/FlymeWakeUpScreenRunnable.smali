.class final Lcom/android/server/notification/FlymeWakeUpScreenRunnable;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mNMS:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p1, "nms"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 4697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4698
    iput-object p1, p0, Lcom/android/server/notification/FlymeWakeUpScreenRunnable;->mNMS:Lcom/android/server/notification/NotificationManagerService;

    .line 4697
    return-void
.end method

.method private wakeUpScreen()V
    .locals 4

    .prologue
    .line 4707
    iget-object v1, p0, Lcom/android/server/notification/FlymeWakeUpScreenRunnable;->mNMS:Lcom/android/server/notification/NotificationManagerService;

    monitor-enter v1

    .line 4708
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/FlymeWakeUpScreenRunnable;->mNMS:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mFlymeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4709
    iget-object v0, p0, Lcom/android/server/notification/FlymeWakeUpScreenRunnable;->mNMS:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mFlymeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4711
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/FlymeWakeUpScreenRunnable;->mNMS:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mFlymeWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 4712
    iget-object v0, p0, Lcom/android/server/notification/FlymeWakeUpScreenRunnable;->mNMS:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mFlymePowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 4706
    return-void

    .line 4707
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 4703
    invoke-direct {p0}, Lcom/android/server/notification/FlymeWakeUpScreenRunnable;->wakeUpScreen()V

    .line 4702
    return-void
.end method
