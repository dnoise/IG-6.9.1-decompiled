.class public final Lcom/instagram/android/d/o;
.super Lcom/instagram/api/j/b;
.source "UpdateAvatarRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/b",
        "<",
        "Lcom/instagram/user/c/a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:[B

.field private d:Z

.field private e:I

.field private f:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/an;",
            "Lcom/instagram/api/j/a",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    sget v0, Lcom/facebook/av;->request_id_update_avatar:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/instagram/api/j/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/d/o;->d:Z

    .line 32
    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;)[B
    .locals 3
    .parameter

    .prologue
    .line 35
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 36
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 37
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private static d(Lcom/instagram/api/j/j;)Lcom/instagram/user/c/a;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;)",
            "Lcom/instagram/user/c/a;"
        }
    .end annotation

    .prologue
    .line 91
    const/4 v0, 0x0

    .line 92
    const-string v1, "user"

    invoke-virtual {p0, v1}, Lcom/instagram/api/j/j;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    const-string v0, "user"

    const-class v1, Lcom/instagram/user/c/a;

    invoke-virtual {p0, v0, v1}, Lcom/instagram/api/j/j;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/c/a;

    .line 97
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput p1, p0, Lcom/instagram/android/d/o;->e:I

    .line 51
    invoke-super {p0}, Lcom/instagram/api/j/b;->g()V

    .line 52
    return-void
.end method

.method public final a(Landroid/net/Uri;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/instagram/android/d/o;->f:Landroid/net/Uri;

    .line 47
    return-void
.end method

.method protected final a(Lcom/instagram/common/a/c/b;)V
    .locals 3
    .parameter

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/instagram/android/d/o;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/d/o;->a:[B

    if-eqz v0, :cond_0

    .line 75
    const-string v0, "profile_pic"

    iget-object v1, p0, Lcom/instagram/android/d/o;->a:[B

    const-string v2, "profile_pic"

    invoke-virtual {p1, v0, v1, v2}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;[BLjava/lang/String;)V

    .line 77
    :cond_0
    return-void
.end method

.method public final synthetic b(Lcom/instagram/api/j/j;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 22
    invoke-static {p1}, Lcom/instagram/android/d/o;->d(Lcom/instagram/api/j/j;)Lcom/instagram/user/c/a;

    move-result-object v0

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lcom/instagram/common/a/c/a;->a:I

    return v0
.end method

.method protected final c_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/instagram/android/d/o;->d:Z

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "accounts/remove_profile_picture/"

    .line 84
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "accounts/change_profile_picture/"

    goto :goto_0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/d/o;->d:Z

    .line 42
    invoke-super {p0}, Lcom/instagram/api/j/b;->g()V

    .line 43
    return-void
.end method

.method public final f()V
    .locals 3

    .prologue
    .line 58
    :try_start_0
    iget-boolean v0, p0, Lcom/instagram/android/d/o;->d:Z

    if-nez v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/instagram/android/d/o;->k()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/instagram/android/d/o;->e:I

    iget-object v2, p0, Lcom/instagram/android/d/o;->f:Landroid/net/Uri;

    invoke-static {v0, v1, v2}, Lcom/instagram/android/d/d;->a(Landroid/content/Context;ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 60
    invoke-static {v0}, Lcom/instagram/android/d/o;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/d/o;->a:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :cond_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    new-instance v0, Lcom/instagram/api/j/e;

    invoke-direct {v0}, Lcom/instagram/api/j/e;-><init>()V

    throw v0
.end method
