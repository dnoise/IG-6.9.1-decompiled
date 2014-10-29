.class public final Lcom/instagram/creation/photo/crop/a;
.super Ljava/lang/Object;
.source "CropArgumentsBuilder.java"


# instance fields
.field private final a:Landroid/os/Bundle;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/photo/crop/a;->a:Landroid/os/Bundle;

    .line 60
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/a;->a:Landroid/os/Bundle;

    const-string v1, "isCrop"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 63
    invoke-static {p1}, Lcom/instagram/common/y/a;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/instagram/creation/photo/crop/a;->a:Landroid/os/Bundle;

    const-string v2, "output"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 65
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)Lcom/instagram/creation/photo/crop/a;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 34
    new-instance v0, Lcom/instagram/creation/photo/crop/a;

    invoke-direct {v0, p0}, Lcom/instagram/creation/photo/crop/a;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1}, Lcom/instagram/creation/photo/crop/a;->a(Landroid/net/Uri;)Lcom/instagram/creation/photo/crop/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/instagram/creation/photo/crop/a;->b(Z)Lcom/instagram/creation/photo/crop/a;

    move-result-object v1

    invoke-static {}, Lcom/instagram/cliffjumper/util/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x400

    :goto_0
    invoke-virtual {v1, v0}, Lcom/instagram/creation/photo/crop/a;->b(I)Lcom/instagram/creation/photo/crop/a;

    move-result-object v0

    invoke-direct {v0}, Lcom/instagram/creation/photo/crop/a;->b()Lcom/instagram/creation/photo/crop/a;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v0, 0x800

    goto :goto_0
.end method

.method private a(Landroid/net/Uri;)Lcom/instagram/creation/photo/crop/a;
    .locals 2
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/a;->a:Landroid/os/Bundle;

    const-string v1, "CropFragment.imageUri"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 73
    return-object p0
.end method

.method private b()Lcom/instagram/creation/photo/crop/a;
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/a;->a:Landroid/os/Bundle;

    const-string v1, "CropFragment.smallestDimension"

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 83
    return-object p0
.end method

.method public static b(Landroid/content/Context;Landroid/net/Uri;)Lcom/instagram/creation/photo/crop/a;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 53
    new-instance v0, Lcom/instagram/creation/photo/crop/a;

    invoke-direct {v0, p0}, Lcom/instagram/creation/photo/crop/a;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1}, Lcom/instagram/creation/photo/crop/a;->a(Landroid/net/Uri;)Lcom/instagram/creation/photo/crop/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/instagram/creation/photo/crop/a;->b(Z)Lcom/instagram/creation/photo/crop/a;

    move-result-object v0

    invoke-direct {v0}, Lcom/instagram/creation/photo/crop/a;->c()Lcom/instagram/creation/photo/crop/a;

    move-result-object v0

    return-object v0
.end method

.method private b(Z)Lcom/instagram/creation/photo/crop/a;
    .locals 2
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/a;->a:Landroid/os/Bundle;

    const-string v1, "CropFragment.requestCropRect"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 78
    return-object p0
.end method

.method private c()Lcom/instagram/creation/photo/crop/a;
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/a;->a:Landroid/os/Bundle;

    const-string v1, "CropFragment.isAvatar"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 93
    return-object p0
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/a;->a:Landroid/os/Bundle;

    return-object v0
.end method

.method public final a(I)Lcom/instagram/creation/photo/crop/a;
    .locals 2
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/a;->a:Landroid/os/Bundle;

    const-string v1, "mediaSource"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 88
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/instagram/creation/photo/crop/a;
    .locals 2
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/a;->a:Landroid/os/Bundle;

    const-string v1, "pendingMediaKey"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-object p0
.end method

.method public final a(Z)Lcom/instagram/creation/photo/crop/a;
    .locals 2
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/a;->a:Landroid/os/Bundle;

    const-string v1, "directShare"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 108
    return-object p0
.end method

.method public final b(I)Lcom/instagram/creation/photo/crop/a;
    .locals 2
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/instagram/creation/photo/crop/a;->a:Landroid/os/Bundle;

    const-string v1, "CropFragment.largestDimension"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 98
    return-object p0
.end method
