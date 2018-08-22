.class final Landroid/content/pm/FlymePackageParserInjector;
.super Ljava/lang/Object;
.source "PackageParser.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addFlymeRequestedPermissions(Landroid/content/pm/PackageParser$Package;)V
    .locals 2
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 5786
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5787
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string/jumbo v1, "com.google.android.packageinstaller"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 5786
    if-eqz v0, :cond_0

    .line 5788
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.permission.WRITE_MEDIA_STORAGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5784
    :cond_0
    :goto_0
    return-void

    .line 5789
    :cond_1
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.permission.WRITE_MEDIA_STORAGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static validateName(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5779
    const-string/jumbo v0, "flyme"

    .line 5780
    .local v0, "FLYME_PACKAGE":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 5781
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
