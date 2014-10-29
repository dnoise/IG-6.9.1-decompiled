.class public abstract Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;
.super Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;
.source "BaseTiltShiftFilter.java"


# instance fields
.field private a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

.field private c:Landroid/graphics/PointF;

.field private d:F

.field private e:Landroid/graphics/PointF;

.field private f:F

.field private g:F

.field private h:Ljava/nio/IntBuffer;

.field private i:Ljava/nio/FloatBuffer;

.field private j:Ljava/nio/FloatBuffer;

.field private k:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/high16 v1, 0x3f00

    .line 43
    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;-><init>()V

    .line 20
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->c:Landroid/graphics/PointF;

    .line 22
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->e:Landroid/graphics/PointF;

    .line 26
    invoke-static {v2}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->h:Ljava/nio/IntBuffer;

    .line 27
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->i:Ljava/nio/FloatBuffer;

    .line 28
    invoke-static {v2}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->j:Ljava/nio/FloatBuffer;

    .line 29
    invoke-static {v2}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->k:Ljava/nio/FloatBuffer;

    .line 44
    sget-object v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a(Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;)V

    .line 45
    invoke-virtual {p0, v1, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a(FF)V

    .line 46
    invoke-direct {p0, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->d(F)V

    .line 48
    sget-object v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a(Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;)V

    .line 49
    invoke-virtual {p0, v1, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a(FF)V

    .line 50
    invoke-direct {p0, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->d(F)V

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->c(F)V

    .line 53
    sget-object v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a(Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;)V

    .line 54
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v1, 0x1

    .line 32
    invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;-><init>(Landroid/os/Parcel;)V

    .line 20
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->c:Landroid/graphics/PointF;

    .line 22
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->e:Landroid/graphics/PointF;

    .line 26
    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->h:Ljava/nio/IntBuffer;

    .line 27
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->i:Ljava/nio/FloatBuffer;

    .line 28
    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->j:Ljava/nio/FloatBuffer;

    .line 29
    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->k:Ljava/nio/FloatBuffer;

    .line 33
    sget-object v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a(Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;)V

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a(FF)V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->d(F)V

    .line 36
    sget-object v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a(Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;)V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a(FF)V

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->d(F)V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->c(F)V

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->a(I)Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a(Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;)V

    .line 41
    return-void
.end method

.method protected static c(FF)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 195
    const/high16 v0, 0x3f80

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private c(F)V
    .locals 2
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget-object v1, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-ne v0, v1, :cond_0

    .line 109
    iput p1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->f:F

    .line 110
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->k:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 111
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->k:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 112
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->n()V

    .line 114
    :cond_0
    return-void
.end method

.method private d(F)V
    .locals 3
    .parameter

    .prologue
    .line 128
    const v0, 0x3dcccccd

    invoke-static {p1, v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->c(FF)F

    move-result v0

    .line 129
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget-object v2, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-ne v1, v2, :cond_1

    .line 130
    iput v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->d:F

    .line 136
    :goto_0
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->j:Ljava/nio/FloatBuffer;

    const/high16 v2, 0x3fc0

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 137
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->j:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 138
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->n()V

    .line 139
    :cond_0
    return-void

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget-object v2, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-ne v1, v2, :cond_0

    .line 132
    iput v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->g:F

    goto :goto_0
.end method


# virtual methods
.method public final a(F)V
    .locals 1
    .parameter

    .prologue
    .line 124
    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->f:F

    add-float/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->c(F)V

    .line 125
    return-void
.end method

.method public final a(FF)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 75
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget-object v1, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-ne v0, v1, :cond_1

    .line 76
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->c:Landroid/graphics/PointF;

    invoke-static {p1, v2}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->c(FF)F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 77
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->c:Landroid/graphics/PointF;

    invoke-static {p2, v2}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->c(FF)F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 84
    :goto_0
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->i:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 85
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->i:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 86
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->i:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 87
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->n()V

    .line 88
    :cond_0
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget-object v1, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-ne v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->e:Landroid/graphics/PointF;

    invoke-static {p1, v2}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->c(FF)F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 80
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->e:Landroid/graphics/PointF;

    invoke-static {p2, v2}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->c(FF)F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0
.end method

.method public final a(Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;)V
    .locals 2
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    .line 62
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->h:Ljava/nio/IntBuffer;

    invoke-virtual {p1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 63
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->h:Ljava/nio/IntBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 64
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget-object v1, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-ne v0, v1, :cond_1

    .line 65
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->c:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->c:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a(FF)V

    .line 66
    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->d:F

    invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->d(F)V

    .line 71
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->n()V

    .line 72
    return-void

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget-object v1, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-ne v0, v1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->e:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->e:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a(FF)V

    .line 69
    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->g:F

    invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->d(F)V

    goto :goto_0
.end method

.method protected final a(Lcom/instagram/filterkit/b/b;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 157
    const-string v0, "image"

    invoke-interface {p2}, Lcom/instagram/filterkit/e/a;->b()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;I)V

    .line 159
    const-string v0, "blurMode"

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->h:Ljava/nio/IntBuffer;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/IntBuffer;)V

    .line 160
    const-string v0, "origin"

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->i:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    .line 161
    const-string v0, "outerRadius"

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->j:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    .line 162
    const-string v0, "theta"

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->k:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    .line 164
    invoke-virtual {p0, p1, p3}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a(Lcom/instagram/filterkit/b/b;Lcom/instagram/filterkit/e/c;)V

    .line 165
    return-void
.end method

.method protected abstract a(Lcom/instagram/filterkit/b/b;Lcom/instagram/filterkit/e/c;)V
.end method

.method protected abstract b(Lcom/instagram/filterkit/d/c;)Lcom/instagram/filterkit/b/b;
.end method

.method public final b(F)V
    .locals 2
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget-object v1, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->d:F

    :goto_0
    mul-float/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->d(F)V

    .line 152
    return-void

    .line 151
    :cond_0
    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->g:F

    goto :goto_0
.end method

.method public final b(FF)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget-object v1, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-ne v0, v1, :cond_1

    .line 101
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->c:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, p1

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->c:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a(FF)V

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget-object v1, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-ne v0, v1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->e:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, p1

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->e:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a(FF)V

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public final f()Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    return-object v0
.end method

.method public final g()Landroid/graphics/PointF;
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget-object v1, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-ne v0, v1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->c:Landroid/graphics/PointF;

    .line 96
    :goto_0
    return-object v0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget-object v1, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-ne v0, v1, :cond_1

    .line 94
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->e:Landroid/graphics/PointF;

    goto :goto_0

    .line 96
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()F
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget-object v1, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-ne v0, v1, :cond_0

    .line 118
    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->f:F

    .line 120
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x4080

    goto :goto_0
.end method

.method public final i()F
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget-object v1, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-ne v0, v1, :cond_0

    .line 143
    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->d:F

    .line 147
    :goto_0
    return v0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget-object v1, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-ne v0, v1, :cond_1

    .line 145
    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->g:F

    goto :goto_0

    .line 147
    :cond_1
    const/high16 v0, -0x4080

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 183
    invoke-super {p0, p1, p2}, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;->writeToParcel(Landroid/os/Parcel;I)V

    .line 184
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->c:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 185
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->c:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 186
    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->d:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 187
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->e:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 188
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->e:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 189
    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->g:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 190
    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->f:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 191
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    return-void
.end method
