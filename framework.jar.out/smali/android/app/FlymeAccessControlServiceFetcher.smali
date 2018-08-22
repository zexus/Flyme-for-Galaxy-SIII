.class final Landroid/app/FlymeAccessControlServiceFetcher;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher",
        "<",
        "Lmeizu/security/AccessControlManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 919
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 921
    invoke-virtual {p0, p1}, Landroid/app/FlymeAccessControlServiceFetcher;->createService(Landroid/app/ContextImpl;)Lmeizu/security/AccessControlManager;

    move-result-object v0

    return-object v0
.end method

.method public createService(Landroid/app/ContextImpl;)Lmeizu/security/AccessControlManager;
    .locals 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 922
    const-string/jumbo v2, "access_control"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 923
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lmeizu/security/IAccessControlManager$Stub;->asInterface(Landroid/os/IBinder;)Lmeizu/security/IAccessControlManager;

    move-result-object v1

    .line 924
    .local v1, "service":Lmeizu/security/IAccessControlManager;
    new-instance v2, Lmeizu/security/AccessControlManager;

    invoke-direct {v2, p1, v1}, Lmeizu/security/AccessControlManager;-><init>(Landroid/content/Context;Lmeizu/security/IAccessControlManager;)V

    return-object v2
.end method
