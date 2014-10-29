.class public Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;
.super Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;
.source "TiltShiftBlurFilter.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/graphics/PointF;

.field private c:Ljava/nio/FloatBuffer;

.field private d:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/a;

    invoke-direct {v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/a;-><init>()V

    sput-object v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1
    .parameter "vx"
    .parameter "vy"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;-><init>()V

    .line 32
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;->a:Landroid/graphics/PointF;

    .line 34
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;->c:Ljava/nio/FloatBuffer;

    .line 35
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;->d:Ljava/nio/FloatBuffer;

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;->d(FF)V

    .line 44
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;-><init>(Landroid/os/Parcel;)V

    .line 32
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;->a:Landroid/graphics/PointF;

    .line 34
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;->c:Ljava/nio/FloatBuffer;

    .line 35
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;->d:Ljava/nio/FloatBuffer;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;->d(FF)V

    .line 40
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0
    .parameter "x0"
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private d(FF)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 47
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;->a:Landroid/graphics/PointF;

    invoke-static {p1, v2}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;->c(FF)F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 48
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;->a:Landroid/graphics/PointF;

    invoke-static {p2, v2}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;->c(FF)F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 49
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;->c:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 50
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;->c:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 51
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;->c:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 52
    return-void
.end method


# virtual methods
.method protected final a(Lcom/instagram/filterkit/b/b;Lcom/instagram/filterkit/e/c;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;->d:Ljava/nio/FloatBuffer;

    invoke-interface {p2}, Lcom/instagram/filterkit/e/c;->c()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 73
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;->d:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 75
    const-string v0, "blurVector"

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;->c:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    .line 76
    const-string v0, "dimension"

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;->d:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    .line 77
    return-void
.end method

.method protected final b(Lcom/instagram/filterkit/d/c;)Lcom/instagram/filterkit/b/b;
    .locals 2
    .parameter

    .prologue
    .line 56
    const-string v0, "BlurDynamic"

    invoke-static {v0}, Lcom/instagram/cliffjumper/bridge/ShaderBridge;->a(Ljava/lang/String;)I

    move-result v0

    .line 57
    if-nez v0, :cond_0

    .line 58
    const-string v0, "BlurDynamicFixedLoop"

    invoke-static {v0}, Lcom/instagram/cliffjumper/bridge/ShaderBridge;->a(Ljava/lang/String;)I

    move-result v0

    .line 59
    if-nez v0, :cond_0

    .line 60
    const/4 v0, 0x0

    .line 63
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/instagram/filterkit/b/b;

    invoke-direct {v1, v0}, Lcom/instagram/filterkit/b/b;-><init>(I)V

    move-object v0, v1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->writeToParcel(Landroid/os/Parcel;I)V

    .line 82
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;->a:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 83
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;->a:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 84
    return-void
.end method
