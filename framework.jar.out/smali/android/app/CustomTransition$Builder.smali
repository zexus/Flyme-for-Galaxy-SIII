.class public Landroid/app/CustomTransition$Builder;
.super Ljava/lang/Object;
.source "CustomTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/CustomTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final KEY_ANIM_CALLBACK:Ljava/lang/String; = "android.app:CustomTransition.animCallback"

.field private static final KEY_ANIM_CLASS:Ljava/lang/String; = "android.app:CustomTransition.class"

.field private static final KEY_ANIM_PRIORITY:Ljava/lang/String; = "android.app:CustomTransition.animPriority"

.field private static final KEY_ANIM_START_LISTENER:Ljava/lang/String; = "android.app:CustomTransition.animStartListener"

.field private static final KEY_ANIM_START_X:Ljava/lang/String; = "android.app:CustomTransition.animStartX"

.field private static final KEY_ANIM_START_Y:Ljava/lang/String; = "android.app:CustomTransition.animStartY"

.field private static final KEY_ANIM_THUMBNAIL:Ljava/lang/String; = "android.app:CustomTransition.animThumbnail"


# instance fields
.field private mAnimationStartedListener:Landroid/os/IRemoteCallback;

.field private mCallback:Landroid/os/IRemoteCallback;

.field private mOverrideOriginal:Z

.field private mStartingX:I

.field private mStartingY:I

.field private mThumbnail:Landroid/graphics/Bitmap;

.field private mTransitionClass:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Landroid/app/CustomTransition$Builder;)Landroid/os/IRemoteCallback;
    .locals 1

    iget-object v0, p0, Landroid/app/CustomTransition$Builder;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    return-object v0
.end method

.method static synthetic -get1(Landroid/app/CustomTransition$Builder;)Landroid/os/IRemoteCallback;
    .locals 1

    iget-object v0, p0, Landroid/app/CustomTransition$Builder;->mCallback:Landroid/os/IRemoteCallback;

    return-object v0
.end method

.method static synthetic -get2(Landroid/app/CustomTransition$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/CustomTransition$Builder;->mOverrideOriginal:Z

    return v0
.end method

.method static synthetic -get3(Landroid/app/CustomTransition$Builder;)I
    .locals 1

    iget v0, p0, Landroid/app/CustomTransition$Builder;->mStartingX:I

    return v0
.end method

.method static synthetic -get4(Landroid/app/CustomTransition$Builder;)I
    .locals 1

    iget v0, p0, Landroid/app/CustomTransition$Builder;->mStartingY:I

    return v0
.end method

.method static synthetic -get5(Landroid/app/CustomTransition$Builder;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Landroid/app/CustomTransition$Builder;->mThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -get6(Landroid/app/CustomTransition$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/CustomTransition$Builder;->mTransitionClass:Ljava/lang/String;

    return-object v0
.end method

.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/CustomTransition$Builder;->mOverrideOriginal:Z

    .line 182
    invoke-direct {p0, p1}, Landroid/app/CustomTransition$Builder;->unpack(Landroid/os/Bundle;)V

    .line 181
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Bundle;Landroid/app/CustomTransition$Builder;)V
    .locals 0
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/CustomTransition$Builder;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "transitionClass"    # Ljava/lang/String;

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/CustomTransition$Builder;->mOverrideOriginal:Z

    .line 176
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Empty class name is not allow!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    iput-object p1, p0, Landroid/app/CustomTransition$Builder;->mTransitionClass:Ljava/lang/String;

    .line 175
    return-void
.end method

.method private unpack(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 267
    const-string/jumbo v0, "android.app:CustomTransition.class"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/CustomTransition$Builder;->mTransitionClass:Ljava/lang/String;

    .line 268
    const-string/jumbo v0, "android.app:CustomTransition.animThumbnail"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/app/CustomTransition$Builder;->mThumbnail:Landroid/graphics/Bitmap;

    .line 269
    iget-object v0, p0, Landroid/app/CustomTransition$Builder;->mThumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 270
    const-string/jumbo v0, "android.app:CustomTransition.animStartX"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/app/CustomTransition$Builder;->mStartingX:I

    .line 271
    const-string/jumbo v0, "android.app:CustomTransition.animStartY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/app/CustomTransition$Builder;->mStartingY:I

    .line 273
    :cond_0
    const-string/jumbo v0, "android.app:CustomTransition.animPriority"

    iget-boolean v1, p0, Landroid/app/CustomTransition$Builder;->mOverrideOriginal:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/CustomTransition$Builder;->mOverrideOriginal:Z

    .line 274
    const-string/jumbo v0, "android.app:CustomTransition.animStartListener"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v0

    iput-object v0, p0, Landroid/app/CustomTransition$Builder;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 275
    const-string/jumbo v0, "android.app:CustomTransition.animCallback"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v0

    iput-object v0, p0, Landroid/app/CustomTransition$Builder;->mCallback:Landroid/os/IRemoteCallback;

    .line 266
    return-void
.end method


# virtual methods
.method public overridePendingTransition(Landroid/app/Activity;)V
    .locals 2
    .param p1, "target"    # Landroid/app/Activity;

    .prologue
    .line 284
    if-nez p1, :cond_0

    .line 285
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Target must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_0
    invoke-virtual {p0}, Landroid/app/CustomTransition$Builder;->pack()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->overridePendingTransition(Landroid/os/Bundle;)V

    .line 283
    return-void
.end method

.method public pack()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 249
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 250
    .local v0, "options":Landroid/os/Bundle;
    const-string/jumbo v1, "android.app:CustomTransition.class"

    iget-object v2, p0, Landroid/app/CustomTransition$Builder;->mTransitionClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v1, p0, Landroid/app/CustomTransition$Builder;->mThumbnail:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 252
    const-string/jumbo v1, "android.app:CustomTransition.animThumbnail"

    iget-object v2, p0, Landroid/app/CustomTransition$Builder;->mThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 253
    const-string/jumbo v1, "android.app:CustomTransition.animStartX"

    iget v2, p0, Landroid/app/CustomTransition$Builder;->mStartingX:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 254
    const-string/jumbo v1, "android.app:CustomTransition.animStartY"

    iget v2, p0, Landroid/app/CustomTransition$Builder;->mStartingY:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 256
    :cond_0
    const-string/jumbo v1, "android.app:CustomTransition.animPriority"

    iget-boolean v2, p0, Landroid/app/CustomTransition$Builder;->mOverrideOriginal:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 257
    iget-object v1, p0, Landroid/app/CustomTransition$Builder;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_1

    .line 258
    const-string/jumbo v1, "android.app:CustomTransition.animStartListener"

    iget-object v2, p0, Landroid/app/CustomTransition$Builder;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    invoke-interface {v2}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 260
    :cond_1
    iget-object v1, p0, Landroid/app/CustomTransition$Builder;->mCallback:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_2

    .line 261
    const-string/jumbo v1, "android.app:CustomTransition.animCallback"

    iget-object v2, p0, Landroid/app/CustomTransition$Builder;->mCallback:Landroid/os/IRemoteCallback;

    invoke-interface {v2}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 263
    :cond_2
    return-object v0
.end method

.method public final setCallback(Landroid/app/CustomTransition$Callback;)Landroid/app/CustomTransition$Builder;
    .locals 1
    .param p1, "callback"    # Landroid/app/CustomTransition$Callback;

    .prologue
    .line 242
    if-eqz p1, :cond_0

    .line 243
    new-instance v0, Landroid/app/CustomTransition$Callback$Stub;

    invoke-direct {v0, p1}, Landroid/app/CustomTransition$Callback$Stub;-><init>(Landroid/app/CustomTransition$Callback;)V

    iput-object v0, p0, Landroid/app/CustomTransition$Builder;->mCallback:Landroid/os/IRemoteCallback;

    .line 245
    :cond_0
    return-object p0
.end method

.method public final setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/CustomTransition$Builder;
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .prologue
    .line 218
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 219
    move-object v1, p1

    .line 220
    .local v1, "h":Landroid/os/Handler;
    move-object v0, p2

    .line 221
    .local v0, "finalListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    new-instance v2, Landroid/app/CustomTransition$Builder$1;

    invoke-direct {v2, p0, p1, p2}, Landroid/app/CustomTransition$Builder$1;-><init>(Landroid/app/CustomTransition$Builder;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    iput-object v2, p0, Landroid/app/CustomTransition$Builder;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 233
    .end local v0    # "finalListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .end local v1    # "h":Landroid/os/Handler;
    :cond_0
    return-object p0
.end method

.method public final setOverrideOriginal(Z)Landroid/app/CustomTransition$Builder;
    .locals 0
    .param p1, "overrideOriginal"    # Z

    .prologue
    .line 206
    iput-boolean p1, p0, Landroid/app/CustomTransition$Builder;->mOverrideOriginal:Z

    .line 207
    return-object p0
.end method

.method public final setThumbnail(Landroid/graphics/Bitmap;II)Landroid/app/CustomTransition$Builder;
    .locals 0
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startingX"    # I
    .param p3, "startingY"    # I

    .prologue
    .line 194
    iput-object p1, p0, Landroid/app/CustomTransition$Builder;->mThumbnail:Landroid/graphics/Bitmap;

    .line 195
    iput p2, p0, Landroid/app/CustomTransition$Builder;->mStartingX:I

    .line 196
    iput p3, p0, Landroid/app/CustomTransition$Builder;->mStartingY:I

    .line 197
    return-object p0
.end method
