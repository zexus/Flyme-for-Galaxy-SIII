.class public Lcom/android/server/notification/NotificationFirewallImpl;
.super Ljava/lang/Object;
.source "NotificationFirewallImpl.java"

# interfaces
.implements Lcom/android/server/notification/NotificationFirewall;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationFirewallImpl$H;,
        Lcom/android/server/notification/NotificationFirewallImpl$StatusBarNotificationHolder;
    }
.end annotation


# static fields
.field private static final DISTINGUISH_NOTIFICATION:I = 0x1

.field private static FILTER_ACTION_NAME:Ljava/lang/String;

.field public static final INTERCEPT_SYSTEM_APP_NOTIFICATION:Z

.field private static SYSTEM_UI_TOOLS:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final INTERCEPT_NOTIFICATION_TIME_OUT:I

.field private conn:Landroid/content/ServiceConnection;

.field public final mCondition:Ljava/util/concurrent/locks/Condition;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mNotificationKey:Ljava/lang/String;

.field private mResult:Lmeizu/notification/FilterResult;

.field private remoteService:Lmeizu/notification/INotificationFilterService;


# direct methods
.method static synthetic -get0(Lcom/android/server/notification/NotificationFirewallImpl;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/notification/NotificationFirewallImpl;)Lmeizu/notification/INotificationFilterService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl;->remoteService:Lmeizu/notification/INotificationFilterService;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/notification/NotificationFirewallImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mNotificationKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/notification/NotificationFirewallImpl;Lmeizu/notification/FilterResult;)Lmeizu/notification/FilterResult;
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mResult:Lmeizu/notification/FilterResult;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/notification/NotificationFirewallImpl;Lmeizu/notification/INotificationFilterService;)Lmeizu/notification/INotificationFilterService;
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/NotificationFirewallImpl;->remoteService:Lmeizu/notification/INotificationFilterService;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/notification/NotificationFirewallImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/NotificationFirewallImpl;->startService()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "NotificationFirewall"

    sput-object v0, Lcom/android/server/notification/NotificationFirewallImpl;->TAG:Ljava/lang/String;

    .line 35
    const-string/jumbo v0, "com.meizu.notification.FILTER"

    sput-object v0, Lcom/android/server/notification/NotificationFirewallImpl;->FILTER_ACTION_NAME:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, "com.flyme.systemuitools"

    sput-object v0, Lcom/android/server/notification/NotificationFirewallImpl;->SYSTEM_UI_TOOLS:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 43
    iget-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mCondition:Ljava/util/concurrent/locks/Condition;

    .line 44
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/server/notification/NotificationFirewallImpl;->INTERCEPT_NOTIFICATION_TIME_OUT:I

    .line 30
    return-void
.end method

.method private hasRemoteInput(Landroid/service/notification/StatusBarNotification;)Z
    .locals 11
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v5, 0x0

    .line 205
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v1, v4, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 206
    .local v1, "actions":[Landroid/app/Notification$Action;
    const/4 v2, 0x0

    .line 207
    .local v2, "hasRemoteInput":Z
    if-eqz v1, :cond_2

    .line 208
    array-length v7, v1

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v0, v1, v6

    .line 209
    .local v0, "a":Landroid/app/Notification$Action;
    invoke-virtual {v0}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 210
    invoke-virtual {v0}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v8

    array-length v9, v8

    move v4, v5

    :goto_1
    if-ge v4, v9, :cond_0

    aget-object v3, v8, v4

    .line 211
    .local v3, "ri":Landroid/app/RemoteInput;
    invoke-virtual {v3}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 212
    const/4 v2, 0x1

    .line 208
    .end local v3    # "ri":Landroid/app/RemoteInput;
    :cond_0
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_0

    .line 210
    .restart local v3    # "ri":Landroid/app/RemoteInput;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 219
    .end local v0    # "a":Landroid/app/Notification$Action;
    .end local v3    # "ri":Landroid/app/RemoteInput;
    :cond_2
    return v2
.end method

.method private startService()V
    .locals 5

    .prologue
    .line 84
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/android/server/notification/NotificationFirewallImpl;->FILTER_ACTION_NAME:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, "intent":Landroid/content/Intent;
    sget-object v2, Lcom/android/server/notification/NotificationFirewallImpl;->SYSTEM_UI_TOOLS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    iget-object v2, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/notification/NotificationFirewallImpl;->conn:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v1

    .local v1, "throwable":Ljava/lang/Throwable;
    goto :goto_0
.end method


# virtual methods
.method public decreaseScore(Lmeizu/notification/RankingDaily;)F
    .locals 3
    .param p1, "preDaily"    # Lmeizu/notification/RankingDaily;

    .prologue
    .line 195
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationFirewallImpl;->remoteService:Lmeizu/notification/INotificationFilterService;

    if-eqz v2, :cond_0

    .line 196
    iget-object v2, p0, Lcom/android/server/notification/NotificationFirewallImpl;->remoteService:Lmeizu/notification/INotificationFilterService;

    invoke-interface {v2, p1}, Lmeizu/notification/INotificationFilterService;->decreaseScore(Lmeizu/notification/RankingDaily;)F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    return v2

    .line 198
    :catch_0
    move-exception v0

    .line 201
    :cond_0
    :goto_0
    iget v2, p1, Lmeizu/notification/RankingDaily;->score:F

    return v2

    .line 199
    :catch_1
    move-exception v1

    .local v1, "throwable":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method public getRankingScoreBase(Ljava/lang/String;II)F
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "notificationPriority"    # I
    .param p3, "categoryPriority"    # I

    .prologue
    .line 225
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationFirewallImpl;->remoteService:Lmeizu/notification/INotificationFilterService;

    if-eqz v2, :cond_0

    .line 226
    iget-object v2, p0, Lcom/android/server/notification/NotificationFirewallImpl;->remoteService:Lmeizu/notification/INotificationFilterService;

    invoke-interface {v2, p1, p2, p3}, Lmeizu/notification/INotificationFilterService;->getRankingScoreBase(Ljava/lang/String;II)F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    return v2

    .line 228
    :catch_0
    move-exception v0

    .line 231
    :cond_0
    :goto_0
    const/high16 v2, 0x42340000    # 45.0f

    return v2

    .line 229
    :catch_1
    move-exception v1

    .local v1, "throwable":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method public increaseScore(Lmeizu/notification/RankingDaily;)F
    .locals 3
    .param p1, "preDaily"    # Lmeizu/notification/RankingDaily;

    .prologue
    .line 183
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationFirewallImpl;->remoteService:Lmeizu/notification/INotificationFilterService;

    if-eqz v2, :cond_0

    .line 184
    iget-object v2, p0, Lcom/android/server/notification/NotificationFirewallImpl;->remoteService:Lmeizu/notification/INotificationFilterService;

    invoke-interface {v2, p1}, Lmeizu/notification/INotificationFilterService;->increaseScore(Lmeizu/notification/RankingDaily;)F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    return v2

    .line 186
    :catch_0
    move-exception v0

    .line 189
    :cond_0
    :goto_0
    iget v2, p1, Lmeizu/notification/RankingDaily;->score:F

    return v2

    .line 187
    :catch_1
    move-exception v1

    .local v1, "throwable":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method public initialize(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mContext:Landroid/content/Context;

    .line 65
    new-instance v0, Lcom/android/server/notification/NotificationFirewallImpl$H;

    invoke-direct {v0, p0, p2}, Lcom/android/server/notification/NotificationFirewallImpl$H;-><init>(Lcom/android/server/notification/NotificationFirewallImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mHandler:Landroid/os/Handler;

    .line 66
    new-instance v0, Lcom/android/server/notification/NotificationFirewallImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationFirewallImpl$1;-><init>(Lcom/android/server/notification/NotificationFirewallImpl;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl;->conn:Landroid/content/ServiceConnection;

    .line 79
    invoke-direct {p0}, Lcom/android/server/notification/NotificationFirewallImpl;->startService()V

    .line 63
    return-void
.end method

.method public interceptNotification(Landroid/service/notification/StatusBarNotification;ZZZ)I
    .locals 9
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "isSystemNotification"    # Z
    .param p3, "isSystemApp"    # Z
    .param p4, "isClearable"    # Z

    .prologue
    .line 134
    const/4 v1, 0x0

    .line 135
    .local v1, "intercept":Z
    iget-object v5, p0, Lcom/android/server/notification/NotificationFirewallImpl;->remoteService:Lmeizu/notification/INotificationFilterService;

    if-eqz v5, :cond_0

    iget-object v5, p1, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget-boolean v5, v5, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAuthorityManagement:Z

    if-nez v5, :cond_0

    if-eqz p4, :cond_0

    .line 138
    sget-object v5, Lcom/android/server/notification/CloudNotificationHelper;->TOOLS_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 139
    const/4 v5, -0x1

    return v5

    .line 136
    :cond_0
    const/4 v5, -0x1

    return v5

    .line 141
    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/notification/CloudNotificationHelper;->getGreenChannelType(Landroid/app/Notification;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 142
    const/4 v5, -0x1

    return v5

    .line 144
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationFirewallImpl;->hasRemoteInput(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 145
    const/4 v5, -0x1

    return v5

    .line 149
    :cond_3
    :try_start_0
    iget-object v5, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v6, 0x7d0

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 150
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mNotificationKey:Ljava/lang/String;

    .line 151
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mResult:Lmeizu/notification/FilterResult;

    .line 152
    iget-object v5, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 153
    iget-object v6, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mHandler:Landroid/os/Handler;

    if-eqz p3, :cond_5

    const/4 v5, 0x1

    :goto_0
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v5, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 154
    .local v2, "message":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 155
    iget-object v5, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mCondition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v6, 0x7d0

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v6, v7, v8}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 156
    iget-object v3, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mResult:Lmeizu/notification/FilterResult;

    .line 157
    .local v3, "result":Lmeizu/notification/FilterResult;
    if-eqz v3, :cond_4

    iget-object v5, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mNotificationKey:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mNotificationKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 158
    iget-object v5, p1, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget-object v6, v3, Lmeizu/notification/FilterResult;->category:Ljava/lang/String;

    iput-object v6, v5, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->category:Ljava/lang/String;

    .line 159
    iget-object v5, p1, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget v6, v3, Lmeizu/notification/FilterResult;->categoryPriority:I

    iput v6, v5, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->categoryPriority:I

    .line 160
    iget-object v5, p1, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget v6, v3, Lmeizu/notification/FilterResult;->notificationPriority:I

    iput v6, v5, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->notificationPriority:I

    .line 161
    iget-object v5, p1, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget v6, v3, Lmeizu/notification/FilterResult;->userFilter:I

    iput v6, v5, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->userFilter:I

    .line 162
    iget-object v5, p1, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget-object v6, v3, Lmeizu/notification/FilterResult;->tag:Ljava/lang/String;

    iput-object v6, v5, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->tag:Ljava/lang/String;

    .line 163
    iget-object v5, p1, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget-object v6, v3, Lmeizu/notification/FilterResult;->extras:Landroid/os/Bundle;

    iput-object v6, v5, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->extras:Landroid/os/Bundle;

    .line 164
    iget-object v5, p1, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget-boolean v6, v3, Lmeizu/notification/FilterResult;->intercept:Z

    iput-boolean v6, v5, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->intercept:Z

    .line 165
    iget-object v5, p1, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget-boolean v6, v3, Lmeizu/notification/FilterResult;->shouldAffectRanking:Z

    iput-boolean v6, v5, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectRanking:Z

    .line 166
    iget-object v5, p1, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget-boolean v6, v3, Lmeizu/notification/FilterResult;->shouldAffectIntercept:Z

    iput-boolean v6, v5, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectIntercept:Z

    .line 167
    iget-object v5, p1, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget v6, v3, Lmeizu/notification/FilterResult;->score:F

    iput v6, v5, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->score:F

    .line 168
    iget-object v5, p1, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget v6, v3, Lmeizu/notification/FilterResult;->score_scale:F

    iput v6, v5, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->score_scale:F

    .line 169
    iget-boolean v1, v3, Lmeizu/notification/FilterResult;->intercept:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    .end local v1    # "intercept":Z
    .end local v2    # "message":Landroid/os/Message;
    .end local v3    # "result":Lmeizu/notification/FilterResult;
    :cond_4
    iget-object v5, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 177
    :goto_1
    iget-object v5, p1, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget-boolean v5, v5, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectIntercept:Z

    if-eqz v5, :cond_7

    if-eqz v1, :cond_6

    const/4 v5, 0x1

    :goto_2
    return v5

    .line 153
    .restart local v1    # "intercept":Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v4

    .line 175
    .local v4, "throwable":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .line 172
    .end local v4    # "throwable":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v5, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .line 174
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v5

    .line 175
    iget-object v6, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 174
    throw v5

    .line 177
    .end local v1    # "intercept":Z
    :cond_6
    const/4 v5, 0x0

    goto :goto_2

    :cond_7
    const/4 v5, -0x1

    goto :goto_2
.end method

.method public offsetScore(Lmeizu/notification/RankingDaily;J)F
    .locals 4
    .param p1, "preDaily"    # Lmeizu/notification/RankingDaily;
    .param p2, "postDate"    # J

    .prologue
    .line 237
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationFirewallImpl;->remoteService:Lmeizu/notification/INotificationFilterService;

    if-eqz v2, :cond_0

    .line 238
    iget-object v2, p0, Lcom/android/server/notification/NotificationFirewallImpl;->remoteService:Lmeizu/notification/INotificationFilterService;

    invoke-interface {v2, p1, p2, p3}, Lmeizu/notification/INotificationFilterService;->offsetScore(Lmeizu/notification/RankingDaily;J)F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    return v2

    .line 240
    :catch_0
    move-exception v0

    .line 243
    :cond_0
    :goto_0
    iget v2, p1, Lmeizu/notification/RankingDaily;->score:F

    return v2

    .line 241
    :catch_1
    move-exception v1

    .local v1, "throwable":Ljava/lang/Throwable;
    goto :goto_0
.end method
