.class public final Lcom/instagram/creation/video/g/f/e;
.super Ljava/lang/Object;
.source "VideoResizerParams.java"


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Ljava/io/File;

.field public final c:Landroid/graphics/RectF;

.field public final d:I

.field public final e:I

.field public final f:Lcom/instagram/creation/b/a/b;

.field public final g:Lcom/instagram/creation/video/e/c;

.field public final h:Lcom/instagram/creation/video/g/a/e;


# direct methods
.method constructor <init>(Lcom/instagram/creation/video/g/f/f;)V
    .locals 1
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Lcom/instagram/creation/video/g/f/f;->a()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/l/a/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/instagram/creation/video/g/f/e;->a:Ljava/io/File;

    .line 58
    invoke-virtual {p1}, Lcom/instagram/creation/video/g/f/f;->b()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/l/a/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/instagram/creation/video/g/f/e;->b:Ljava/io/File;

    .line 59
    invoke-virtual {p1}, Lcom/instagram/creation/video/g/f/f;->c()Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/g/f/e;->c:Landroid/graphics/RectF;

    .line 60
    invoke-virtual {p1}, Lcom/instagram/creation/video/g/f/f;->d()I

    move-result v0

    iput v0, p0, Lcom/instagram/creation/video/g/f/e;->d:I

    .line 61
    invoke-virtual {p1}, Lcom/instagram/creation/video/g/f/f;->e()I

    move-result v0

    iput v0, p0, Lcom/instagram/creation/video/g/f/e;->e:I

    .line 62
    invoke-virtual {p1}, Lcom/instagram/creation/video/g/f/f;->f()Lcom/instagram/creation/video/g/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/g/f/e;->h:Lcom/instagram/creation/video/g/a/e;

    .line 63
    invoke-virtual {p1}, Lcom/instagram/creation/video/g/f/f;->g()Lcom/instagram/creation/b/a/b;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/l/a/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/a/b;

    iput-object v0, p0, Lcom/instagram/creation/video/g/f/e;->f:Lcom/instagram/creation/b/a/b;

    .line 64
    invoke-virtual {p1}, Lcom/instagram/creation/video/g/f/f;->h()Lcom/instagram/creation/video/e/c;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/l/a/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/e/c;

    iput-object v0, p0, Lcom/instagram/creation/video/g/f/e;->g:Lcom/instagram/creation/video/e/c;

    .line 65
    return-void
.end method

.method public static a()Lcom/instagram/creation/video/g/f/f;
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/instagram/creation/video/g/f/f;

    invoke-direct {v0}, Lcom/instagram/creation/video/g/f/f;-><init>()V

    return-object v0
.end method
