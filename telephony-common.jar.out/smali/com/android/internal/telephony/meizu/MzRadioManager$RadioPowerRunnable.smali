.class Lcom/android/internal/telephony/meizu/MzRadioManager$RadioPowerRunnable;
.super Ljava/lang/Object;
.source "MzRadioManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/meizu/MzRadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RadioPowerRunnable"
.end annotation


# instance fields
.field retryPhoneId:I

.field retryPower:Z

.field final synthetic this$0:Lcom/android/internal/telephony/meizu/MzRadioManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/meizu/MzRadioManager;ZI)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/meizu/MzRadioManager;
    .param p2, "power"    # Z
    .param p3, "phoneId"    # I

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/internal/telephony/meizu/MzRadioManager$RadioPowerRunnable;->this$0:Lcom/android/internal/telephony/meizu/MzRadioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    iput-boolean p2, p0, Lcom/android/internal/telephony/meizu/MzRadioManager$RadioPowerRunnable;->retryPower:Z

    .line 303
    iput p3, p0, Lcom/android/internal/telephony/meizu/MzRadioManager$RadioPowerRunnable;->retryPhoneId:I

    .line 301
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/internal/telephony/meizu/MzRadioManager$RadioPowerRunnable;->this$0:Lcom/android/internal/telephony/meizu/MzRadioManager;

    iget-boolean v1, p0, Lcom/android/internal/telephony/meizu/MzRadioManager$RadioPowerRunnable;->retryPower:Z

    iget v2, p0, Lcom/android/internal/telephony/meizu/MzRadioManager$RadioPowerRunnable;->retryPhoneId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/meizu/MzRadioManager;->setRadioPower(ZI)V

    .line 306
    return-void
.end method
