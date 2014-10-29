.class public Lcom/instagram/creation/b/a/a;
.super Ljava/lang/Object;
.source "ClipInfo.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:I

.field private d:I

.field private e:F

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/instagram/creation/b/a/a;->b:J

    .line 11
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/instagram/creation/b/a/a;->e:F

    return-void
.end method


# virtual methods
.method public final a(F)Lcom/instagram/creation/b/a/a;
    .locals 0
    .parameter

    .prologue
    .line 60
    iput p1, p0, Lcom/instagram/creation/b/a/a;->e:F

    .line 61
    return-object p0
.end method

.method public final a(I)Lcom/instagram/creation/b/a/a;
    .locals 0
    .parameter

    .prologue
    .line 36
    iput p1, p0, Lcom/instagram/creation/b/a/a;->c:I

    .line 37
    return-object p0
.end method

.method public final a(J)Lcom/instagram/creation/b/a/a;
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-wide p1, p0, Lcom/instagram/creation/b/a/a;->b:J

    .line 95
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/instagram/creation/b/a/a;
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/instagram/creation/b/a/a;->a:Ljava/lang/String;

    .line 28
    return-object p0
.end method

.method public final a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 110
    iput p1, p0, Lcom/instagram/creation/b/a/a;->h:I

    .line 111
    iput p2, p0, Lcom/instagram/creation/b/a/a;->i:I

    .line 112
    int-to-float v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/instagram/creation/b/a/a;->j:F

    .line 113
    return-void
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 19
    iget v0, p0, Lcom/instagram/creation/b/a/a;->h:I

    iget v1, p0, Lcom/instagram/creation/b/a/a;->i:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(I)Lcom/instagram/creation/b/a/a;
    .locals 0
    .parameter

    .prologue
    .line 51
    iput p1, p0, Lcom/instagram/creation/b/a/a;->d:I

    .line 52
    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/instagram/creation/b/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 130
    iget v0, p0, Lcom/instagram/creation/b/a/a;->d:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/instagram/creation/b/a/a;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 131
    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/instagram/creation/b/a/a;->a(II)V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/instagram/creation/b/a/a;->a(II)V

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/instagram/creation/b/a/a;->c:I

    return v0
.end method

.method public final c(I)Lcom/instagram/creation/b/a/a;
    .locals 0
    .parameter

    .prologue
    .line 72
    iput p1, p0, Lcom/instagram/creation/b/a/a;->f:I

    .line 73
    return-object p0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/instagram/creation/b/a/a;->d:I

    return v0
.end method

.method public final d(I)Lcom/instagram/creation/b/a/a;
    .locals 0
    .parameter

    .prologue
    .line 84
    iput p1, p0, Lcom/instagram/creation/b/a/a;->g:I

    .line 85
    return-object p0
.end method

.method public final e()F
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/instagram/creation/b/a/a;->e:F

    return v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/instagram/creation/b/a/a;->f:I

    return v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/instagram/creation/b/a/a;->g:I

    return v0
.end method

.method public final h()J
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/instagram/creation/b/a/a;->b:J

    return-wide v0
.end method

.method public final i()I
    .locals 2

    .prologue
    .line 102
    iget v0, p0, Lcom/instagram/creation/b/a/a;->g:I

    iget v1, p0, Lcom/instagram/creation/b/a/a;->f:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final j()F
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/instagram/creation/b/a/a;->j:F

    return v0
.end method

.method public final k()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/instagram/creation/b/a/a;->h:I

    return v0
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/instagram/creation/b/a/a;->i:I

    return v0
.end method
