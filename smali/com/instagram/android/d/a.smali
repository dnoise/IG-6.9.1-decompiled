.class public final Lcom/instagram/android/d/a;
.super Lcom/instagram/android/d/f;
.source "AddAvatarHelper.java"


# instance fields
.field private c:Landroid/graphics/Bitmap;

.field private d:Lcom/instagram/android/login/fragment/an;


# direct methods
.method public constructor <init>(Lcom/instagram/android/login/fragment/an;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/d/f;-><init>(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 39
    iput-object p1, p0, Lcom/instagram/android/d/a;->d:Lcom/instagram/android/login/fragment/an;

    .line 40
    if-eqz p2, :cond_0

    .line 41
    const-string v0, "AddAvatarHelper.BITMAP_KEY"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const-string v0, "AddAvatarHelper.BITMAP_KEY"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/instagram/android/d/a;->c:Landroid/graphics/Bitmap;

    .line 45
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/d/a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/instagram/android/d/a;->c:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/instagram/android/d/a;)Lcom/instagram/android/login/fragment/an;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/instagram/android/d/a;->d:Lcom/instagram/android/login/fragment/an;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/instagram/android/d/a;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/instagram/android/d/a;->d:Lcom/instagram/android/login/fragment/an;

    iget-object v1, p0, Lcom/instagram/android/d/a;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/instagram/android/login/fragment/an;->a(Landroid/graphics/Bitmap;)V

    .line 51
    :cond_0
    return-void
.end method

.method protected final a(Landroid/net/Uri;)V
    .locals 2
    .parameter

    .prologue
    .line 93
    new-instance v0, Lcom/instagram/android/d/b;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, p1}, Lcom/instagram/android/d/b;-><init>(Lcom/instagram/android/d/a;ILandroid/net/Uri;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/instagram/android/d/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 94
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/instagram/android/d/f;->a(Landroid/os/Bundle;)V

    .line 66
    iget-object v0, p0, Lcom/instagram/android/d/a;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 67
    const-string v0, "AddAvatarHelper.BITMAP_KEY"

    iget-object v1, p0, Lcom/instagram/android/d/a;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 69
    :cond_0
    return-void
.end method

.method protected final b()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method protected final c()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/instagram/android/d/a;->d:Lcom/instagram/android/login/fragment/an;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/an;->d()V

    .line 61
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/instagram/android/d/a;->c:Landroid/graphics/Bitmap;

    .line 73
    iput-object v0, p0, Lcom/instagram/android/d/a;->d:Lcom/instagram/android/login/fragment/an;

    .line 74
    iput-object v0, p0, Lcom/instagram/android/d/f;->b:Landroid/support/v4/app/Fragment;

    .line 75
    return-void
.end method

.method protected final e()V
    .locals 3

    .prologue
    .line 79
    new-instance v0, Lcom/instagram/android/d/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/instagram/android/d/b;-><init>(Lcom/instagram/android/d/a;ILandroid/net/Uri;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/instagram/android/d/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 80
    return-void
.end method

.method protected final f()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 84
    new-instance v0, Lcom/instagram/android/d/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v2, v1}, Lcom/instagram/android/d/b;-><init>(Lcom/instagram/android/d/a;ILandroid/net/Uri;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/instagram/android/d/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 85
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/instagram/android/d/a;->f()V

    .line 89
    return-void
.end method

.method public final h()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/instagram/android/d/a;->c:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected final i()Z
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x1

    return v0
.end method
