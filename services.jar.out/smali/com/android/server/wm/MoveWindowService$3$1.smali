.class Lcom/android/server/wm/MoveWindowService$3$1;
.super Ljava/lang/Object;
.source "MoveWindowService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/MoveWindowService$3;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wm/MoveWindowService$3;

.field final synthetic val$animation:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/wm/MoveWindowService$3;Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wm/MoveWindowService$3;
    .param p2, "val$animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/server/wm/MoveWindowService$3$1;->this$1:Lcom/android/server/wm/MoveWindowService$3;

    iput-object p2, p0, Lcom/android/server/wm/MoveWindowService$3$1;->val$animation:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/wm/MoveWindowService$3$1;->val$animation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 138
    return-void
.end method
