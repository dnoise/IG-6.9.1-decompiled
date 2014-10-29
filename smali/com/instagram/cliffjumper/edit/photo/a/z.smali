.class final Lcom/instagram/cliffjumper/edit/photo/a/z;
.super Lcom/instagram/filterkit/c/a;
.source "PhotoFilterFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/cliffjumper/edit/photo/a/a;

.field private b:Lcom/instagram/filterkit/e/a;

.field private c:Z

.field private d:Z


# direct methods
.method private constructor <init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V
    .locals 1
    .parameter

    .prologue
    .line 1004
    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/a/z;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-direct {p0}, Lcom/instagram/filterkit/c/a;-><init>()V

    .line 1006
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/z;->b:Lcom/instagram/filterkit/e/a;

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/cliffjumper/edit/photo/a/a;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1004
    invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/photo/a/z;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V

    return-void
.end method

.method private static a(IIIIZ)Landroid/graphics/Rect;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1069
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1070
    sub-int v5, p0, v4

    .line 1071
    sub-int v6, p1, v4

    .line 1073
    if-nez p3, :cond_0

    if-eqz p2, :cond_0

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p4

    .line 1074
    invoke-static/range {v0 .. v6}, Lcom/instagram/cliffjumper/util/d;->b(IIIZIII)Landroid/graphics/Rect;

    move-result-object v0

    .line 1077
    :goto_0
    return-object v0

    :cond_0
    move v0, p0

    move v1, p1

    move v2, p3

    move v3, p4

    invoke-static/range {v0 .. v6}, Lcom/instagram/cliffjumper/util/d;->a(IIIZIII)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method

.method private d()Landroid/graphics/Rect;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1051
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/z;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "cropRect"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1052
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/z;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "cropRect"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 1062
    :goto_0
    return-object v0

    .line 1053
    :cond_0
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/z;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "cameraRotation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1054
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/z;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->r(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/creation/photo/gallery/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/creation/photo/gallery/c;->e()I

    move-result v0

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/z;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->r(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/creation/photo/gallery/c;

    move-result-object v1

    invoke-interface {v1}, Lcom/instagram/creation/photo/gallery/c;->f()I

    move-result v1

    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/photo/a/z;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v2}, Lcom/instagram/cliffjumper/edit/photo/a/a;->j()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "cameraRotation"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/instagram/cliffjumper/edit/photo/a/z;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v3}, Lcom/instagram/cliffjumper/edit/photo/a/a;->u(Lcom/instagram/cliffjumper/edit/photo/a/a;)I

    move-result v3

    iget-object v4, p0, Lcom/instagram/cliffjumper/edit/photo/a/z;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v4}, Lcom/instagram/cliffjumper/edit/photo/a/a;->j()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "mirrorMedia"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/instagram/cliffjumper/edit/photo/a/z;->a(IIIIZ)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    .line 1061
    :cond_1
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/z;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->r(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/creation/photo/gallery/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/creation/photo/gallery/c;->e()I

    move-result v0

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/z;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->r(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/creation/photo/gallery/c;

    move-result-object v1

    invoke-interface {v1}, Lcom/instagram/creation/photo/gallery/c;->f()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1062
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/instagram/filterkit/e/a;
    .locals 5

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/z;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->r(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/creation/photo/gallery/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/creation/photo/gallery/c;->a()Ljava/lang/String;

    move-result-object v0

    .line 1013
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/z;->b:Lcom/instagram/filterkit/e/a;

    if-nez v1, :cond_0

    .line 1014
    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/photo/a/z;->d()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/jpeg/a;->a(Ljava/lang/String;Landroid/graphics/Rect;)Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;

    move-result-object v0

    .line 1016
    new-instance v1, Lcom/instagram/filterkit/d/d;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;->uploadTexture(Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;)I

    move-result v2

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;->getHeight()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/instagram/filterkit/d/d;-><init>(III)V

    iput-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/z;->b:Lcom/instagram/filterkit/e/a;

    .line 1020
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/z;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->s(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/cliffjumper/edit/photo/lux/a;

    move-result-object v1

    invoke-static {}, Lcom/instagram/common/y/c/a;->a()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/instagram/cliffjumper/edit/photo/lux/a;->a(Ljava/util/concurrent/Executor;Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;)V

    .line 1022
    :cond_0
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/z;->b:Lcom/instagram/filterkit/e/a;

    return-object v0
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 2
    .parameter

    .prologue
    .line 1042
    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/z;->d:Z

    if-nez v0, :cond_0

    .line 1043
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/z;->d:Z

    .line 1044
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/z;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->t(Lcom/instagram/cliffjumper/edit/photo/a/a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1045
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1046
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/z;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->t(Lcom/instagram/cliffjumper/edit/photo/a/a;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1048
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 1027
    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/z;->c:Z

    if-nez v0, :cond_0

    .line 1028
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/z;->c:Z

    .line 1029
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/z;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->t(Lcom/instagram/cliffjumper/edit/photo/a/a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1031
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/z;->b:Lcom/instagram/filterkit/e/a;

    invoke-interface {v0}, Lcom/instagram/filterkit/e/a;->e()V

    .line 1036
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/z;->b:Lcom/instagram/filterkit/e/a;

    .line 1037
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/z;->c:Z

    .line 1038
    return-void
.end method
