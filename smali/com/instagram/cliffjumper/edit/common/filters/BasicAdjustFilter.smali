.class public Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;
.super Lcom/instagram/filterkit/filter/BaseCachingFilter;
.source "BasicAdjustFilter.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lcom/instagram/cliffjumper/util/a;

.field private static final d:[F

.field private static final e:[F


# instance fields
.field private A:Lcom/instagram/filterkit/e/b;

.field private B:Lcom/instagram/filterkit/e/a;

.field private C:Z

.field private final f:Ljava/nio/FloatBuffer;

.field private final g:Ljava/nio/FloatBuffer;

.field private final h:Ljava/nio/FloatBuffer;

.field private final i:Ljava/nio/FloatBuffer;

.field private final j:Ljava/nio/FloatBuffer;

.field private final k:Ljava/nio/FloatBuffer;

.field private final l:Ljava/nio/FloatBuffer;

.field private final m:Ljava/nio/FloatBuffer;

.field private final n:Ljava/nio/FloatBuffer;

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:Lcom/instagram/filterkit/b/b;

.field private x:Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;

.field private y:Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;

.field private z:Lcom/instagram/filterkit/e/b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v1, 0xe

    .line 30
    new-instance v0, Lcom/instagram/cliffjumper/edit/common/filters/e;

    invoke-direct {v0}, Lcom/instagram/cliffjumper/edit/common/filters/e;-><init>()V

    sput-object v0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 41
    const-class v0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;

    sput-object v0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->a:Ljava/lang/Class;

    .line 43
    invoke-static {}, Lcom/instagram/cliffjumper/util/e;->a()Lcom/instagram/cliffjumper/util/a;

    move-result-object v0

    sput-object v0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->c:Lcom/instagram/cliffjumper/util/a;

    .line 50
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->d:[F

    .line 57
    new-array v0, v1, [F

    sput-object v0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->e:[F

    .line 60
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 61
    sget-object v1, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->e:[F

    mul-int/lit8 v2, v0, 0x2

    sget-object v3, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->d:[F

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    aput v3, v1, v2

    .line 62
    sget-object v1, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->e:[F

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->d:[F

    mul-int/lit8 v4, v0, 0x2

    aget v3, v3, v4

    aput v3, v1, v2

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_0
    return-void

    .line 50
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x6bt 0xe6t 0x7at 0x3dt
        0x1ct 0xd1t 0x3dt 0x3et
        0xcft 0xbdt 0x27t 0x3et
        0x56t 0x46t 0xbbt 0x3et
        0x37t 0x54t 0xa4t 0x3et
        0xcct 0xct 0x7t 0x3ft
        0x41t 0x63t 0xfet 0x3et
        0xc2t 0xc3t 0x28t 0x3ft
        0xdt 0xc1t 0x35t 0x3ft
        0x48t 0xc4t 0x4ct 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 93
    invoke-direct {p0}, Lcom/instagram/filterkit/filter/BaseCachingFilter;-><init>()V

    .line 66
    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->f:Ljava/nio/FloatBuffer;

    .line 67
    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->g:Ljava/nio/FloatBuffer;

    .line 68
    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->h:Ljava/nio/FloatBuffer;

    .line 69
    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->i:Ljava/nio/FloatBuffer;

    .line 70
    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->j:Ljava/nio/FloatBuffer;

    .line 71
    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->k:Ljava/nio/FloatBuffer;

    .line 72
    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->l:Ljava/nio/FloatBuffer;

    .line 73
    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->m:Ljava/nio/FloatBuffer;

    .line 74
    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->n:Ljava/nio/FloatBuffer;

    .line 86
    new-instance v0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;

    invoke-direct {v0}, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->x:Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;

    .line 87
    new-instance v0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;

    invoke-direct {v0}, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->y:Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;

    .line 94
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->n:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    const v2, 0x3c1374bc

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 95
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->x:Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;

    const v1, 0x3f4ccccd

    invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->a(F)V

    .line 96
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "in"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 99
    invoke-direct {p0, p1}, Lcom/instagram/filterkit/filter/BaseCachingFilter;-><init>(Landroid/os/Parcel;)V

    .line 66
    invoke-static {v0}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->f:Ljava/nio/FloatBuffer;

    .line 67
    invoke-static {v0}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->g:Ljava/nio/FloatBuffer;

    .line 68
    invoke-static {v0}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->h:Ljava/nio/FloatBuffer;

    .line 69
    invoke-static {v0}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->i:Ljava/nio/FloatBuffer;

    .line 70
    invoke-static {v0}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->j:Ljava/nio/FloatBuffer;

    .line 71
    invoke-static {v0}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->k:Ljava/nio/FloatBuffer;

    .line 72
    invoke-static {v0}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->l:Ljava/nio/FloatBuffer;

    .line 73
    invoke-static {v0}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->m:Ljava/nio/FloatBuffer;

    .line 74
    invoke-static {v0}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->n:Ljava/nio/FloatBuffer;

    .line 86
    new-instance v2, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;

    invoke-direct {v2}, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;-><init>()V

    iput-object v2, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->x:Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;

    .line 87
    new-instance v2, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;

    invoke-direct {v2}, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;-><init>()V

    iput-object v2, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->y:Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;

    .line 100
    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->n:Ljava/nio/FloatBuffer;

    const v3, 0x3c1374bc

    invoke-virtual {v2, v1, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 101
    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->x:Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;

    const v3, 0x3f4ccccd

    invoke-virtual {v2, v3}, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->a(F)V

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->b_(Z)V

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->a(I)V

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->b(I)V

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->c(I)V

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->d(I)V

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->e(I)V

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->f(I)V

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->g(I)V

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->h(I)V

    .line 112
    return-void

    :cond_0
    move v0, v1

    .line 102
    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0
    .parameter "x0"
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private a(Lcom/instagram/filterkit/b/b;Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v3, 0x3c1374bc

    .line 177
    const-string v0, "brightness"

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->f:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    .line 178
    const-string v0, "contrast"

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->g:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    .line 179
    const-string v0, "saturation"

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->h:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    .line 180
    const-string v0, "temperature"

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->i:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    .line 181
    const-string v0, "vignette"

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->j:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    .line 182
    const-string v0, "highlights"

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->k:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    .line 183
    const-string v0, "shadows"

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->l:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    .line 184
    const-string v0, "sharpen"

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->m:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    .line 185
    const-string v0, "TOOL_ON_EPSILON"

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->n:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    .line 187
    const-string v0, "image"

    invoke-interface {p3}, Lcom/instagram/filterkit/e/a;->b()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;I)V

    .line 190
    instance-of v0, p3, Lcom/instagram/filterkit/e/b;

    if-eqz v0, :cond_0

    move-object v0, p3

    .line 191
    check-cast v0, Lcom/instagram/filterkit/e/b;

    invoke-virtual {p2, v0, p0}, Lcom/instagram/filterkit/d/c;->a(Lcom/instagram/filterkit/e/b;Lcom/instagram/filterkit/d/e;)Z

    .line 197
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->b(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/b;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->z:Lcom/instagram/filterkit/e/b;

    .line 198
    const-string v0, "sharpenBlur"

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->z:Lcom/instagram/filterkit/e/b;

    invoke-interface {v1}, Lcom/instagram/filterkit/e/b;->b()I

    move-result v1

    sget-object v2, Lcom/instagram/filterkit/b/c;->a:Lcom/instagram/filterkit/b/c;

    invoke-virtual {p1, v0, v1, v2}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;ILcom/instagram/filterkit/b/c;)V

    .line 204
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->u:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->t:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    .line 205
    :cond_1
    invoke-direct {p0, p2, p3, p4}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->c(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/b;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->A:Lcom/instagram/filterkit/e/b;

    .line 206
    const-string v0, "shadowsBlur"

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->A:Lcom/instagram/filterkit/e/b;

    invoke-interface {v1}, Lcom/instagram/filterkit/e/b;->b()I

    move-result v1

    sget-object v2, Lcom/instagram/filterkit/b/c;->a:Lcom/instagram/filterkit/b/c;

    invoke-virtual {p1, v0, v1, v2}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;ILcom/instagram/filterkit/b/c;)V

    .line 210
    const-string v0, "splines"

    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->l()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;I)V

    .line 214
    :cond_2
    instance-of v0, p3, Lcom/instagram/filterkit/e/b;

    if-eqz v0, :cond_3

    .line 215
    check-cast p3, Lcom/instagram/filterkit/e/b;

    invoke-virtual {p2, p3, p0}, Lcom/instagram/filterkit/d/c;->b(Lcom/instagram/filterkit/e/b;Lcom/instagram/filterkit/d/e;)Z

    .line 217
    :cond_3
    return-void
.end method

.method private b(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/b;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 224
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->x:Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->c()Lcom/instagram/filterkit/e/b;

    move-result-object v0

    .line 227
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/instagram/filterkit/e/b;->c()I

    move-result v1

    invoke-interface {p3}, Lcom/instagram/filterkit/e/c;->c()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 228
    :cond_0
    invoke-interface {p3}, Lcom/instagram/filterkit/e/c;->c()I

    move-result v0

    invoke-static {v0}, Lcom/instagram/filterkit/e/d;->b(I)Lcom/instagram/filterkit/e/c;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->x:Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;

    invoke-virtual {v1, p1, p2, v0}, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->a(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/c;

    move-result-object v0

    check-cast v0, Lcom/instagram/filterkit/e/b;

    .line 232
    :cond_1
    return-object v0
.end method

.method private c(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/b;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 240
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->y:Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->c()Lcom/instagram/filterkit/e/b;

    move-result-object v0

    .line 244
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->y:Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;

    invoke-virtual {v1}, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->D_()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/instagram/filterkit/e/b;->c()I

    move-result v1

    invoke-interface {p3}, Lcom/instagram/filterkit/e/c;->c()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->y:Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;

    invoke-virtual {v0, p1}, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->a_(Lcom/instagram/filterkit/d/c;)V

    .line 247
    const/4 v0, 0x0

    .line 251
    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->y:Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;

    invoke-virtual {v1}, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->E_()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 252
    :cond_2
    invoke-interface {p3}, Lcom/instagram/filterkit/e/c;->c()I

    move-result v0

    invoke-static {v0}, Lcom/instagram/filterkit/e/d;->b(I)Lcom/instagram/filterkit/e/c;

    move-result-object v0

    .line 253
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->y:Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;

    const v2, 0x3f99999a

    invoke-interface {p3}, Lcom/instagram/filterkit/e/c;->c()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-static {}, Lcom/instagram/creation/a/a;->a()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->a(F)V

    .line 256
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->y:Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;

    invoke-virtual {v1, p1, p2, v0}, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->a(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/c;

    move-result-object v0

    check-cast v0, Lcom/instagram/filterkit/e/b;

    .line 259
    :cond_3
    return-object v0
.end method

.method private l()I
    .locals 3

    .prologue
    .line 263
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->B:Lcom/instagram/filterkit/e/a;

    if-nez v0, :cond_0

    .line 264
    const/16 v0, 0x200

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 266
    new-instance v1, Lcom/instagram/cliffjumper/edit/common/filters/i;

    sget-object v2, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->d:[F

    invoke-direct {v1, v2}, Lcom/instagram/cliffjumper/edit/common/filters/i;-><init>([F)V

    .line 267
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/instagram/cliffjumper/edit/common/filters/i;->a(Ljava/nio/ByteBuffer;I)V

    .line 268
    new-instance v1, Lcom/instagram/cliffjumper/edit/common/filters/i;

    sget-object v2, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->e:[F

    invoke-direct {v1, v2}, Lcom/instagram/cliffjumper/edit/common/filters/i;-><init>([F)V

    .line 269
    const/16 v2, 0x100

    invoke-virtual {v1, v0, v2}, Lcom/instagram/cliffjumper/edit/common/filters/i;->a(Ljava/nio/ByteBuffer;I)V

    .line 273
    new-instance v1, Lcom/instagram/filterkit/d/b;

    invoke-direct {v1}, Lcom/instagram/filterkit/d/b;-><init>()V

    invoke-static {v0}, Lcom/instagram/filterkit/d/b;->a(Ljava/nio/Buffer;)Lcom/instagram/filterkit/e/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->B:Lcom/instagram/filterkit/e/a;

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->B:Lcom/instagram/filterkit/e/a;

    invoke-interface {v0}, Lcom/instagram/filterkit/e/a;->b()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final B_()V
    .locals 1

    .prologue
    .line 375
    invoke-super {p0}, Lcom/instagram/filterkit/filter/BaseCachingFilter;->B_()V

    .line 376
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->x:Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->B_()V

    .line 377
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->y:Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->B_()V

    .line 378
    return-void
.end method

.method public final C_()I
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->q:I

    return v0
.end method

.method public final a()I
    .locals 1

    .prologue
    .line 331
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->o:I

    return v0
.end method

.method public final a(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/c;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 119
    invoke-virtual {p1, p0}, Lcom/instagram/filterkit/d/c;->a(Lcom/instagram/filterkit/d/e;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    const-string v0, "BasicAdjust"

    invoke-static {v0}, Lcom/instagram/cliffjumper/bridge/ShaderBridge;->a(Ljava/lang/String;)I

    move-result v0

    .line 121
    if-nez v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not compile Basic Adjust program."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    new-instance v1, Lcom/instagram/filterkit/b/b;

    invoke-direct {v1, v0}, Lcom/instagram/filterkit/b/b;-><init>(I)V

    iput-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->w:Lcom/instagram/filterkit/b/b;

    .line 125
    invoke-virtual {p1, p0}, Lcom/instagram/filterkit/d/c;->b(Lcom/instagram/filterkit/d/e;)V

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->w:Lcom/instagram/filterkit/b/b;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->a(Lcom/instagram/filterkit/b/b;Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)V

    .line 129
    const-string v0, "BasicAdjustFilter.render:setFilterParams"

    invoke-virtual {p1, v0}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    .line 131
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->w:Lcom/instagram/filterkit/b/b;

    const-string v1, "position"

    sget-object v2, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->c:Lcom/instagram/cliffjumper/util/a;

    iget-object v2, v2, Lcom/instagram/cliffjumper/util/a;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/Buffer;)Z

    .line 137
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->w:Lcom/instagram/filterkit/b/b;

    const-string v1, "transformedTextureCoordinate"

    sget-object v2, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->c:Lcom/instagram/cliffjumper/util/a;

    iget-object v2, v2, Lcom/instagram/cliffjumper/util/a;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/Buffer;)Z

    .line 143
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->w:Lcom/instagram/filterkit/b/b;

    const-string v1, "staticTextureCoordinate"

    sget-object v2, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->c:Lcom/instagram/cliffjumper/util/a;

    iget-object v2, v2, Lcom/instagram/cliffjumper/util/a;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/Buffer;)Z

    .line 148
    const-string v0, "BasicAdjustFilter.render:setCoordinates"

    invoke-virtual {p1, v0}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    .line 150
    invoke-virtual {p0, p1, p3}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->a(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/c;

    move-result-object v0

    .line 153
    invoke-interface {v0}, Lcom/instagram/filterkit/e/c;->c()I

    move-result v1

    invoke-interface {v0}, Lcom/instagram/filterkit/e/c;->d()I

    move-result v2

    invoke-static {v3, v3, v1, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 154
    const-string v1, "BasicAdjustFilter.render:glViewport"

    invoke-virtual {p1, v1}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    .line 155
    const v1, 0x8d40

    invoke-interface {v0}, Lcom/instagram/filterkit/e/c;->a()I

    move-result v2

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 156
    const-string v1, "BasicAdjustFilter.render:glBindFramebuffer"

    invoke-virtual {p1, v1}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    .line 157
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->w:Lcom/instagram/filterkit/b/b;

    invoke-virtual {v1}, Lcom/instagram/filterkit/b/b;->b()V

    .line 158
    const-string v1, "BasicAdjustFilter.render:prepareToRender"

    invoke-virtual {p1, v1}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    .line 159
    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 160
    const-string v1, "BasicAdjustFilter.render:glDrawArrays"

    invoke-virtual {p1, v1}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    .line 162
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->z:Lcom/instagram/filterkit/e/b;

    invoke-virtual {p1, v1, p0}, Lcom/instagram/filterkit/d/c;->a(Lcom/instagram/filterkit/e/g;Lcom/instagram/filterkit/d/e;)V

    .line 163
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->A:Lcom/instagram/filterkit/e/b;

    invoke-virtual {p1, v1, p0}, Lcom/instagram/filterkit/d/c;->a(Lcom/instagram/filterkit/e/g;Lcom/instagram/filterkit/d/e;)V

    .line 164
    iput-object v4, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->z:Lcom/instagram/filterkit/e/b;

    .line 165
    iput-object v4, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->A:Lcom/instagram/filterkit/e/b;

    .line 167
    invoke-virtual {p1, p2, v4}, Lcom/instagram/filterkit/d/c;->a(Lcom/instagram/filterkit/e/g;Lcom/instagram/filterkit/d/e;)V

    .line 168
    return-object v0
.end method

.method public final a(I)V
    .locals 4
    .parameter

    .prologue
    .line 283
    iput p1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->o:I

    .line 284
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->f:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    int-to-float v2, p1

    const/high16 v3, 0x42c8

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 285
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->n()V

    .line 286
    return-void
.end method

.method public final a(Lcom/instagram/filterkit/d/c;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 382
    invoke-super {p0, p1}, Lcom/instagram/filterkit/filter/BaseCachingFilter;->a(Lcom/instagram/filterkit/d/c;)V

    .line 383
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->w:Lcom/instagram/filterkit/b/b;

    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {p1}, Lcom/instagram/filterkit/d/c;->a()Lcom/instagram/filterkit/d/b;

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->w:Lcom/instagram/filterkit/b/b;

    invoke-virtual {v0}, Lcom/instagram/filterkit/b/b;->a()I

    move-result v0

    invoke-static {v0}, Lcom/instagram/filterkit/d/b;->c(I)V

    .line 385
    iput-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->w:Lcom/instagram/filterkit/b/b;

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->B:Lcom/instagram/filterkit/e/a;

    if-eqz v0, :cond_1

    .line 388
    new-instance v0, Lcom/instagram/filterkit/d/b;

    invoke-direct {v0}, Lcom/instagram/filterkit/d/b;-><init>()V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->B:Lcom/instagram/filterkit/e/a;

    invoke-interface {v0}, Lcom/instagram/filterkit/e/a;->b()I

    move-result v0

    invoke-static {v0}, Lcom/instagram/filterkit/d/b;->a(I)V

    .line 389
    iput-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->B:Lcom/instagram/filterkit/e/a;

    .line 391
    :cond_1
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->p:I

    return v0
.end method

.method public final b(I)V
    .locals 4
    .parameter

    .prologue
    .line 289
    iput p1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->p:I

    .line 290
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->g:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    int-to-float v2, p1

    const/high16 v3, 0x42c8

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 291
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->n()V

    .line 292
    return-void
.end method

.method public final b_(Z)V
    .locals 1
    .parameter

    .prologue
    .line 408
    iput-boolean p1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->C:Z

    .line 409
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->x:Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;

    invoke-virtual {v0, p1}, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->a(Z)V

    .line 410
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->y:Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;

    invoke-virtual {v0, p1}, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;->a(Z)V

    .line 411
    return-void
.end method

.method public final c(I)V
    .locals 4
    .parameter

    .prologue
    .line 295
    iput p1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->q:I

    .line 296
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->h:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    int-to-float v2, p1

    const/high16 v3, 0x42c8

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 297
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->n()V

    .line 298
    return-void
.end method

.method public final d(I)V
    .locals 4
    .parameter

    .prologue
    .line 301
    iput p1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->r:I

    .line 302
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->i:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    int-to-float v2, p1

    const/high16 v3, 0x42c8

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 303
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->n()V

    .line 304
    return-void
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->r:I

    return v0
.end method

.method public final e(I)V
    .locals 4
    .parameter

    .prologue
    .line 307
    iput p1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->s:I

    .line 308
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->j:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    int-to-float v2, p1

    const/high16 v3, 0x42c8

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 309
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->n()V

    .line 310
    return-void
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 347
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->s:I

    return v0
.end method

.method public final f(I)V
    .locals 4
    .parameter

    .prologue
    .line 313
    iput p1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->t:I

    .line 314
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->k:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    int-to-float v2, p1

    const/high16 v3, 0x42c8

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 315
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->n()V

    .line 316
    return-void
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 351
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->t:I

    return v0
.end method

.method public final g(I)V
    .locals 4
    .parameter

    .prologue
    .line 319
    iput p1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->u:I

    .line 320
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->l:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    int-to-float v2, p1

    const/high16 v3, 0x42c8

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 321
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->n()V

    .line 322
    return-void
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->u:I

    return v0
.end method

.method public final h(I)V
    .locals 4
    .parameter

    .prologue
    .line 325
    iput p1, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->v:I

    .line 326
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->m:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    int-to-float v2, p1

    const/high16 v3, 0x42c8

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 327
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->n()V

    .line 328
    return-void
.end method

.method public final i()I
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->v:I

    return v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 363
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->o:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->p:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->q:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->r:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->s:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->t:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->u:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->v:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 395
    invoke-super {p0, p1, p2}, Lcom/instagram/filterkit/filter/BaseCachingFilter;->writeToParcel(Landroid/os/Parcel;I)V

    .line 396
    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->C:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 397
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->o:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 398
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->p:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->q:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->r:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 401
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->s:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->t:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->u:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->v:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    return-void

    .line 396
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
