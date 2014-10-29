.class public Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;
.super Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;
.source "CjFilter.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Z

.field private final d:Ljava/nio/IntBuffer;

.field private final e:Ljava/nio/IntBuffer;

.field private final f:Ljava/nio/IntBuffer;

.field private final g:Ljava/nio/FloatBuffer;

.field private final h:I

.field private final i:Ljava/lang/String;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/cliffjumper/edit/common/effectfilter/TextureInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/instagram/cliffjumper/util/Matrix3;

.field private l:Z

.field private m:I

.field private n:I

.field private o:F

.field private p:I

.field private q:Lcom/instagram/cliffjumper/edit/photo/lux/a;

.field private r:Ljava/nio/FloatBuffer;

.field private s:Ljava/nio/FloatBuffer;

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/instagram/cliffjumper/edit/common/effectfilter/b;

    invoke-direct {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/b;-><init>()V

    sput-object v0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 39
    const-class v0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    sput-object v0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->c:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/util/List;)V
    .locals 3
    .parameter "id"
    .parameter "shaderName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/cliffjumper/edit/common/effectfilter/TextureInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, textures:Ljava/util/List;,"Ljava/util/List<Lcom/instagram/cliffjumper/edit/common/effectfilter/TextureInfo;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 82
    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;-><init>()V

    .line 41
    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->d:Ljava/nio/IntBuffer;

    .line 42
    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->e:Ljava/nio/IntBuffer;

    .line 43
    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->f:Ljava/nio/IntBuffer;

    .line 44
    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->g:Ljava/nio/FloatBuffer;

    .line 49
    new-instance v0, Lcom/instagram/cliffjumper/util/Matrix3;

    invoke-direct {v0}, Lcom/instagram/cliffjumper/util/Matrix3;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->k:Lcom/instagram/cliffjumper/util/Matrix3;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->q:Lcom/instagram/cliffjumper/edit/photo/lux/a;

    .line 59
    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->r:Ljava/nio/FloatBuffer;

    .line 60
    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->s:Ljava/nio/FloatBuffer;

    .line 63
    iput-boolean v2, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->t:Z

    .line 83
    iput p1, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->h:I

    .line 84
    iput-object p3, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->j:Ljava/util/List;

    .line 85
    iput-object p2, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->i:Ljava/lang/String;

    .line 86
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->c(I)V

    .line 87
    invoke-virtual {p0, v2}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->b(Z)V

    .line 89
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->d:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v2, v1}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 90
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 67
    invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;-><init>(Landroid/os/Parcel;)V

    .line 41
    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->d:Ljava/nio/IntBuffer;

    .line 42
    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->e:Ljava/nio/IntBuffer;

    .line 43
    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->f:Ljava/nio/IntBuffer;

    .line 44
    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->g:Ljava/nio/FloatBuffer;

    .line 49
    new-instance v0, Lcom/instagram/cliffjumper/util/Matrix3;

    invoke-direct {v0}, Lcom/instagram/cliffjumper/util/Matrix3;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->k:Lcom/instagram/cliffjumper/util/Matrix3;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->q:Lcom/instagram/cliffjumper/edit/photo/lux/a;

    .line 59
    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->r:Ljava/nio/FloatBuffer;

    .line 60
    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->s:Ljava/nio/FloatBuffer;

    .line 63
    iput-boolean v2, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->t:Z

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->h:I

    .line 69
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->j:Ljava/util/List;

    .line 70
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->j:Ljava/util/List;

    sget-object v3, Lcom/instagram/cliffjumper/edit/common/effectfilter/TextureInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->i:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->c(I)V

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->a(I)V

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->b(I)V

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->a(F)V

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->b(Z)V

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->a_(Z)V

    .line 79
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->d:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v2, v1}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 80
    return-void

    :cond_0
    move v0, v2

    .line 76
    goto :goto_0

    :cond_1
    move v0, v2

    .line 77
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0
    .parameter "x0"
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final A_()V
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->n:I

    add-int/lit8 v0, v0, -0x5a

    rem-int/lit16 v0, v0, 0x168

    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->b(I)V

    .line 201
    return-void
.end method

.method public final a(F)V
    .locals 1
    .parameter

    .prologue
    .line 190
    iput p1, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->o:F

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->l:Z

    .line 192
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->n()V

    .line 193
    return-void
.end method

.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 177
    iput p1, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->m:I

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->l:Z

    .line 179
    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->a:Z

    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->b(Z)V

    .line 180
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->n()V

    .line 181
    return-void
.end method

.method public final a(Lcom/instagram/cliffjumper/edit/photo/lux/a;)V
    .locals 0
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->q:Lcom/instagram/cliffjumper/edit/photo/lux/a;

    .line 272
    return-void
.end method

.method protected final a(Lcom/instagram/filterkit/b/b;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/high16 v6, -0x4080

    const/4 v5, 0x0

    const/high16 v3, 0x3f80

    .line 123
    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->l:Z

    if-eqz v0, :cond_0

    .line 124
    iput-boolean v5, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->l:Z

    .line 125
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->m:I

    iget v2, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->n:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->o:F

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->k:Lcom/instagram/cliffjumper/util/Matrix3;

    invoke-static {v0, v2}, Lcom/instagram/cliffjumper/util/c;->a(FLcom/instagram/cliffjumper/util/Matrix3;)V

    .line 127
    :cond_0
    const-string v0, "u_enableTextureTransform"

    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->d:Ljava/nio/IntBuffer;

    invoke-virtual {p1, v0, v2}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/IntBuffer;)V

    .line 128
    const-string v0, "u_textureTransform"

    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->k:Lcom/instagram/cliffjumper/util/Matrix3;

    invoke-virtual {v2}, Lcom/instagram/cliffjumper/util/Matrix3;->b()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    .line 129
    const-string v0, "u_filterStrength"

    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->g:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0, v2}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    .line 130
    const-string v0, "u_mirrored"

    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->e:Ljava/nio/IntBuffer;

    invoke-virtual {p1, v0, v2}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/IntBuffer;)V

    .line 131
    const-string v0, "u_flipped"

    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->f:Ljava/nio/IntBuffer;

    invoke-virtual {p1, v0, v2}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/IntBuffer;)V

    .line 133
    const-string v0, "image"

    invoke-interface {p2}, Lcom/instagram/filterkit/e/a;->b()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;I)V

    .line 136
    invoke-static {}, Lcom/instagram/cliffjumper/util/a/c;->a()Lcom/instagram/cliffjumper/util/a/d;

    move-result-object v0

    iget-boolean v0, v0, Lcom/instagram/cliffjumper/util/a/d;->d:Z

    if-eqz v0, :cond_1

    .line 169
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->t:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->q:Lcom/instagram/cliffjumper/edit/photo/lux/a;

    if-eqz v0, :cond_4

    .line 144
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->q:Lcom/instagram/cliffjumper/edit/photo/lux/a;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/lux/a;->a()F

    move-result v2

    .line 145
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->q:Lcom/instagram/cliffjumper/edit/photo/lux/a;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/lux/a;->b()F

    move-result v0

    .line 148
    cmpl-float v4, v2, v6

    if-eqz v4, :cond_2

    cmpl-float v4, v0, v6

    if-nez v4, :cond_3

    :cond_2
    move v0, v1

    move v1, v3

    .line 155
    :goto_1
    sub-float v2, v1, v0

    div-float v2, v3, v2

    const/high16 v4, 0x4040

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 156
    iget-object v4, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->r:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v5, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 161
    mul-float v4, v1, v2

    sub-float/2addr v3, v4

    .line 162
    iget-object v4, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->s:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v5, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 163
    sget-object v4, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->c:Ljava/lang/Class;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 164
    sget-object v2, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->c:Ljava/lang/Class;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 165
    sget-object v2, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->c:Ljava/lang/Class;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 166
    sget-object v1, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->c:Ljava/lang/Class;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 167
    const-string v0, "brightness_correction_mult"

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->r:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    .line 168
    const-string v0, "brightness_correction_add"

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->s:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    move v0, v1

    move v1, v3

    goto :goto_1
.end method

.method public final a_(Z)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->t:Z

    .line 197
    return-void
.end method

.method protected final b(Lcom/instagram/filterkit/d/c;)Lcom/instagram/filterkit/b/b;
    .locals 4
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/instagram/cliffjumper/bridge/ShaderBridge;->a(Ljava/lang/String;)I

    move-result v0

    .line 95
    if-nez v0, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 108
    :goto_0
    return-object v0

    .line 98
    :cond_0
    new-instance v1, Lcom/instagram/filterkit/b/b;

    invoke-direct {v1, v0}, Lcom/instagram/filterkit/b/b;-><init>(I)V

    .line 101
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/cliffjumper/edit/common/effectfilter/TextureInfo;

    .line 102
    iget-object v3, v0, Lcom/instagram/cliffjumper/edit/common/effectfilter/TextureInfo;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/instagram/cliffjumper/edit/common/effectfilter/TextureInfo;->b:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/instagram/filterkit/d/c;->a(Lcom/instagram/filterkit/d/e;Ljava/lang/String;)Lcom/instagram/filterkit/e/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/filterkit/e/a;->b()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;I)V

    goto :goto_1

    .line 105
    :cond_1
    const-string v0, "noop"

    const-string v2, "shared/noop.png"

    invoke-virtual {p1, p0, v2}, Lcom/instagram/filterkit/d/c;->a(Lcom/instagram/filterkit/d/e;Ljava/lang/String;)Lcom/instagram/filterkit/e/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/instagram/filterkit/e/a;->b()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;I)V

    move-object v0, v1

    .line 108
    goto :goto_0
.end method

.method public final b(I)V
    .locals 1
    .parameter

    .prologue
    .line 184
    iput p1, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->n:I

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->l:Z

    .line 186
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->n()V

    .line 187
    return-void
.end method

.method public final b(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 220
    iput-boolean p1, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->a:Z

    .line 223
    iget-boolean v2, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->a:Z

    if-eqz v2, :cond_2

    .line 224
    iget v2, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->m:I

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->m:I

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_1

    :cond_0
    move v2, v1

    .line 230
    :goto_0
    iget-object v3, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v3, v1, v2}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 231
    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->f:Ljava/nio/IntBuffer;

    invoke-virtual {v2, v1, v0}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 232
    return-void

    :cond_1
    move v2, v0

    move v0, v1

    .line 227
    goto :goto_0

    :cond_2
    move v0, v1

    move v2, v1

    goto :goto_0
.end method

.method public final c(I)V
    .locals 4
    .parameter

    .prologue
    .line 239
    iput p1, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->p:I

    .line 240
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->g:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    int-to-float v2, p1

    const/high16 v3, 0x42c8

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 241
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->n()V

    .line 242
    return-void
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->m:I

    return v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->n:I

    return v0
.end method

.method public final h()F
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->o:F

    return v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->t:Z

    return v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->a:Z

    return v0
.end method

.method public final k()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->p:I

    return v0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 249
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->p:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->p:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->h:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 258
    invoke-super {p0, p1, p2}, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;->writeToParcel(Landroid/os/Parcel;I)V

    .line 259
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->j:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 261
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 262
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->p:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->m:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->n:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->o:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 266
    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->a:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->t:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    return-void

    :cond_0
    move v0, v2

    .line 266
    goto :goto_0

    :cond_1
    move v1, v2

    .line 267
    goto :goto_1
.end method

.method protected final z_()Z
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x1

    return v0
.end method
