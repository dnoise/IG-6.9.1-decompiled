.class public Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;
.super Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;
.source "TiltShiftFogFilter.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:F

.field private c:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/j;

    invoke-direct {v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/j;-><init>()V

    sput-object v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;-><init>()V

    .line 32
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;->c:Ljava/nio/FloatBuffer;

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;->c(F)V

    .line 41
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;-><init>(Landroid/os/Parcel;)V

    .line 32
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;->c:Ljava/nio/FloatBuffer;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;->c(F)V

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0
    .parameter "x0"
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/instagram/filterkit/b/b;Lcom/instagram/filterkit/e/c;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 57
    const-string v0, "dimFactor"

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;->c:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    .line 58
    return-void
.end method

.method protected final b(Lcom/instagram/filterkit/d/c;)Lcom/instagram/filterkit/b/b;
    .locals 2
    .parameter

    .prologue
    .line 45
    const-string v0, "BlurComposite"

    invoke-static {v0}, Lcom/instagram/cliffjumper/bridge/ShaderBridge;->a(Ljava/lang/String;)I

    move-result v1

    .line 46
    if-nez v1, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 49
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/instagram/filterkit/b/b;

    invoke-direct {v0, v1}, Lcom/instagram/filterkit/b/b;-><init>(I)V

    goto :goto_0
.end method

.method public final c(F)V
    .locals 2
    .parameter

    .prologue
    .line 61
    iput p1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;->a:F

    .line 62
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;->c:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 63
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;->c:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 64
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;->n()V

    .line 65
    return-void
.end method

.method public final j()F
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;->a:F

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 73
    invoke-super {p0, p1, p2}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->writeToParcel(Landroid/os/Parcel;I)V

    .line 74
    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;->a:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 75
    return-void
.end method
