.class public abstract Landroid/app/CustomTransition;
.super Ljava/lang/Object;
.source "CustomTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/CustomTransition$Builder;,
        Landroid/app/CustomTransition$Callback;
    }
.end annotation


# static fields
.field private static final KEY_PREFIX:Ljava/lang/String; = "android.app:CustomTransition."

.field private static final TAG:Ljava/lang/String; = "CustomTransition"

.field private static sTransitionMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/CustomTransition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBuilder:Landroid/app/CustomTransition$Builder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Landroid/os/Bundle;Z)Landroid/app/CustomTransition;
    .locals 8
    .param p0, "options"    # Landroid/os/Bundle;
    .param p1, "noTransition"    # Z

    .prologue
    const/4 v5, 0x0

    .line 124
    new-instance v1, Landroid/app/CustomTransition$Builder;

    invoke-direct {v1, p0, v5}, Landroid/app/CustomTransition$Builder;-><init>(Landroid/os/Bundle;Landroid/app/CustomTransition$Builder;)V

    .line 125
    .local v1, "builder":Landroid/app/CustomTransition$Builder;
    const/4 v4, 0x0

    .line 126
    .local v4, "transition":Landroid/app/CustomTransition;
    if-nez p1, :cond_0

    invoke-static {v1}, Landroid/app/CustomTransition$Builder;->-get2(Landroid/app/CustomTransition$Builder;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 127
    :cond_0
    invoke-static {v1}, Landroid/app/CustomTransition$Builder;->-get6(Landroid/app/CustomTransition$Builder;)Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "className":Ljava/lang/String;
    sget-object v5, Landroid/app/CustomTransition;->sTransitionMap:Landroid/util/ArrayMap;

    if-nez v5, :cond_1

    .line 129
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    sput-object v5, Landroid/app/CustomTransition;->sTransitionMap:Landroid/util/ArrayMap;

    .line 131
    :cond_1
    sget-object v5, Landroid/app/CustomTransition;->sTransitionMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "transition":Landroid/app/CustomTransition;
    check-cast v4, Landroid/app/CustomTransition;

    .line 132
    .local v4, "transition":Landroid/app/CustomTransition;
    if-nez v4, :cond_2

    .line 134
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/app/CustomTransition;

    move-object v4, v0

    .line 135
    invoke-virtual {v4}, Landroid/app/CustomTransition;->isPersisted()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 136
    sget-object v5, Landroid/app/CustomTransition;->sTransitionMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :cond_2
    :goto_0
    if-eqz v4, :cond_3

    .line 142
    iput-object v1, v4, Landroid/app/CustomTransition;->mBuilder:Landroid/app/CustomTransition$Builder;

    .line 143
    invoke-virtual {v4, p0}, Landroid/app/CustomTransition;->init(Landroid/os/Bundle;)V

    .line 146
    .end local v2    # "className":Ljava/lang/String;
    .end local v4    # "transition":Landroid/app/CustomTransition;
    :cond_3
    return-object v4

    .line 137
    .restart local v2    # "className":Ljava/lang/String;
    .restart local v4    # "transition":Landroid/app/CustomTransition;
    :catch_0
    move-exception v3

    .line 138
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "CustomTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to new instance of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public abstract animateWallpaper()Z
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/CustomTransition;->mBuilder:Landroid/app/CustomTransition$Builder;

    .line 98
    return-void
.end method

.method public abstract createAnimation(Landroid/view/DisplayInfo;IZI)Landroid/view/animation/Animation;
.end method

.method public abstract createThumbnailAnimation(Landroid/view/DisplayInfo;I)Landroid/view/animation/Animation;
.end method

.method public final getCallback()Landroid/app/CustomTransition$Callback;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    iget-object v0, p0, Landroid/app/CustomTransition;->mBuilder:Landroid/app/CustomTransition$Builder;

    invoke-static {v0}, Landroid/app/CustomTransition$Builder;->-get1(Landroid/app/CustomTransition$Builder;)Landroid/os/IRemoteCallback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 49
    return-object v1

    .line 51
    :cond_0
    iget-object v0, p0, Landroid/app/CustomTransition;->mBuilder:Landroid/app/CustomTransition$Builder;

    invoke-static {v0}, Landroid/app/CustomTransition$Builder;->-get1(Landroid/app/CustomTransition$Builder;)Landroid/os/IRemoteCallback;

    move-result-object v0

    instance-of v0, v0, Landroid/app/CustomTransition$Callback$Stub;

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Landroid/app/CustomTransition;->mBuilder:Landroid/app/CustomTransition$Builder;

    invoke-static {v0}, Landroid/app/CustomTransition$Builder;->-get1(Landroid/app/CustomTransition$Builder;)Landroid/os/IRemoteCallback;

    move-result-object v0

    check-cast v0, Landroid/app/CustomTransition$Callback$Stub;

    iget-object v0, v0, Landroid/app/CustomTransition$Callback$Stub;->mCallback:Landroid/app/CustomTransition$Callback;

    return-object v0

    .line 54
    :cond_1
    new-instance v0, Landroid/app/CustomTransition$Callback$Stub$Proxy;

    iget-object v1, p0, Landroid/app/CustomTransition;->mBuilder:Landroid/app/CustomTransition$Builder;

    invoke-static {v1}, Landroid/app/CustomTransition$Builder;->-get1(Landroid/app/CustomTransition$Builder;)Landroid/os/IRemoteCallback;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/CustomTransition$Callback$Stub$Proxy;-><init>(Landroid/os/IRemoteCallback;)V

    return-object v0
.end method

.method public getOnAnimationStartedListener()Landroid/os/IRemoteCallback;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Landroid/app/CustomTransition;->mBuilder:Landroid/app/CustomTransition$Builder;

    invoke-static {v0}, Landroid/app/CustomTransition$Builder;->-get0(Landroid/app/CustomTransition$Builder;)Landroid/os/IRemoteCallback;

    move-result-object v0

    return-object v0
.end method

.method public final getStartingX()I
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Landroid/app/CustomTransition;->mBuilder:Landroid/app/CustomTransition$Builder;

    invoke-static {v0}, Landroid/app/CustomTransition$Builder;->-get3(Landroid/app/CustomTransition$Builder;)I

    move-result v0

    return v0
.end method

.method public final getStartingY()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Landroid/app/CustomTransition;->mBuilder:Landroid/app/CustomTransition$Builder;

    invoke-static {v0}, Landroid/app/CustomTransition$Builder;->-get4(Landroid/app/CustomTransition$Builder;)I

    move-result v0

    return v0
.end method

.method public final getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Landroid/app/CustomTransition;->mBuilder:Landroid/app/CustomTransition$Builder;

    invoke-static {v0}, Landroid/app/CustomTransition$Builder;->-get5(Landroid/app/CustomTransition$Builder;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected abstract init(Landroid/os/Bundle;)V
.end method

.method protected isPersisted()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method
