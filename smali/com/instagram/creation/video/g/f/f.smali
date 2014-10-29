.class public final Lcom/instagram/creation/video/g/f/f;
.super Ljava/lang/Object;
.source "VideoResizerParamsBuilder.java"


# instance fields
.field public a:Ljava/io/File;

.field public b:Ljava/io/File;

.field private c:Landroid/graphics/RectF;

.field private d:I

.field private e:I

.field private f:Lcom/instagram/creation/video/g/a/e;

.field private g:Lcom/instagram/creation/b/a/b;

.field private h:Lcom/instagram/creation/video/e/c;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/instagram/creation/video/g/f/f;->c:Landroid/graphics/RectF;

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/creation/video/g/f/f;->d:I

    .line 22
    const/4 v0, -0x2

    iput v0, p0, Lcom/instagram/creation/video/g/f/f;->e:I

    .line 28
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/instagram/creation/video/g/f/f;
    .locals 0
    .parameter

    .prologue
    .line 108
    iput p1, p0, Lcom/instagram/creation/video/g/f/f;->d:I

    .line 109
    return-object p0
.end method

.method public final a(Lcom/instagram/creation/b/a/b;)Lcom/instagram/creation/video/g/f/f;
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/instagram/creation/video/g/f/f;->g:Lcom/instagram/creation/b/a/b;

    .line 160
    return-object p0
.end method

.method public final a(Lcom/instagram/creation/video/e/c;)Lcom/instagram/creation/video/g/f/f;
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/instagram/creation/video/g/f/f;->h:Lcom/instagram/creation/video/e/c;

    .line 169
    return-object p0
.end method

.method public final a(Lcom/instagram/creation/video/g/a/e;)Lcom/instagram/creation/video/g/f/f;
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/instagram/creation/video/g/f/f;->f:Lcom/instagram/creation/video/g/a/e;

    .line 151
    return-object p0
.end method

.method public final a(Ljava/io/File;)Lcom/instagram/creation/video/g/f/f;
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/instagram/creation/video/g/f/f;->a:Ljava/io/File;

    .line 47
    return-object p0
.end method

.method public final a()Ljava/io/File;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/instagram/creation/video/g/f/f;->a:Ljava/io/File;

    return-object v0
.end method

.method public final b(I)Lcom/instagram/creation/video/g/f/f;
    .locals 0
    .parameter

    .prologue
    .line 130
    iput p1, p0, Lcom/instagram/creation/video/g/f/f;->e:I

    .line 131
    return-object p0
.end method

.method public final b(Ljava/io/File;)Lcom/instagram/creation/video/g/f/f;
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/instagram/creation/video/g/f/f;->b:Ljava/io/File;

    .line 67
    return-object p0
.end method

.method public final b()Ljava/io/File;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/instagram/creation/video/g/f/f;->b:Ljava/io/File;

    return-object v0
.end method

.method public final c()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/instagram/creation/video/g/f/f;->c:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/instagram/creation/video/g/f/f;->d:I

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/instagram/creation/video/g/f/f;->e:I

    return v0
.end method

.method public final f()Lcom/instagram/creation/video/g/a/e;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/instagram/creation/video/g/f/f;->f:Lcom/instagram/creation/video/g/a/e;

    return-object v0
.end method

.method public final g()Lcom/instagram/creation/b/a/b;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/instagram/creation/video/g/f/f;->g:Lcom/instagram/creation/b/a/b;

    return-object v0
.end method

.method public final h()Lcom/instagram/creation/video/e/c;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/instagram/creation/video/g/f/f;->h:Lcom/instagram/creation/video/e/c;

    return-object v0
.end method

.method public final i()Lcom/instagram/creation/video/g/f/e;
    .locals 1

    .prologue
    .line 178
    new-instance v0, Lcom/instagram/creation/video/g/f/e;

    invoke-direct {v0, p0}, Lcom/instagram/creation/video/g/f/e;-><init>(Lcom/instagram/creation/video/g/f/f;)V

    return-object v0
.end method
