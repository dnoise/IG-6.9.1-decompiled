.class public final Lcom/instagram/android/creation/a/ax;
.super Lcom/instagram/base/a/b;
.source "ThumbnailPhotoPreviewFragment.java"


# instance fields
.field private a:Lcom/instagram/creation/b/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/instagram/creation/b/a/b;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-static {p0, p1}, Lcom/instagram/android/creation/a/ax;->b(Lcom/instagram/creation/b/a/b;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/android/creation/a/ax;)Lcom/instagram/creation/b/a/b;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/instagram/android/creation/a/ax;->a:Lcom/instagram/creation/b/a/b;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/android/creation/a/ax;Lcom/instagram/creation/b/a/b;)Lcom/instagram/creation/b/a/b;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/instagram/android/creation/a/ax;->a:Lcom/instagram/creation/b/a/b;

    return-object p1
.end method

.method public static a(Landroid/support/v4/app/s;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 87
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 88
    const-string v1, "pendingMediaKey"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    new-instance v1, Lcom/instagram/base/a/a/a;

    invoke-direct {v1, p0}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v2, Lcom/instagram/android/creation/a/ax;

    invoke-direct {v2}, Lcom/instagram/android/creation/a/ax;-><init>()V

    invoke-virtual {v1, v2, v0}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    .line 90
    return-void
.end method

.method private static b(Lcom/instagram/creation/b/a/b;I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 79
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 80
    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p1}, Lcom/instagram/o/c/a;->b(Ljava/lang/String;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 81
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 82
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 83
    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 47
    sget v0, Lcom/facebook/aw;->fragment_thumbnail_photo_preview:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/instagram/android/creation/a/ax;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/a/e;

    new-instance v1, Lcom/instagram/android/creation/a/ay;

    invoke-direct {v1, p0}, Lcom/instagram/android/creation/a/ay;-><init>(Lcom/instagram/android/creation/a/ax;)V

    invoke-interface {v0, v1}, Lcom/instagram/creation/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 42
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/instagram/base/a/b;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/instagram/android/creation/a/ax;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/a/e;

    new-instance v1, Lcom/instagram/android/creation/a/az;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/creation/a/az;-><init>(Lcom/instagram/android/creation/a/ax;Landroid/view/View;)V

    invoke-interface {v0, v1}, Lcom/instagram/creation/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 76
    return-void
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    const-string v0, "metadata_thumbnail_preview"

    return-object v0
.end method
