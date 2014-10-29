.class public Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;
.super Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;
.source "LuxFilter.java"

# interfaces
.implements Lcom/instagram/cliffjumper/edit/photo/lux/c;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/nio/FloatBuffer;

.field private c:I

.field private d:Lcom/instagram/cliffjumper/edit/photo/lux/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/instagram/cliffjumper/edit/photo/lux/f;

    invoke-direct {v0}, Lcom/instagram/cliffjumper/edit/photo/lux/f;-><init>()V

    sput-object v0, Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;-><init>()V

    .line 36
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;->a:Ljava/nio/FloatBuffer;

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;->c:I

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;-><init>(Landroid/os/Parcel;)V

    .line 36
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;->a:Ljava/nio/FloatBuffer;

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;->c:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;->a(I)V

    .line 46
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4
    .parameter

    .prologue
    .line 79
    iput p1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;->c:I

    .line 80
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;->a:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    int-to-float v2, p1

    const/high16 v3, 0x42c8

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 81
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;->n()V

    .line 82
    return-void
.end method

.method public final a(Lcom/instagram/cliffjumper/edit/photo/lux/a;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;->d:Lcom/instagram/cliffjumper/edit/photo/lux/a;

    .line 50
    return-void
.end method

.method protected final a(Lcom/instagram/filterkit/b/b;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    const-string v0, "u_strength"

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    .line 68
    const-string v0, "cdf"

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;->d:Lcom/instagram/cliffjumper/edit/photo/lux/a;

    invoke-virtual {v1, p0}, Lcom/instagram/cliffjumper/edit/photo/lux/a;->b(Lcom/instagram/cliffjumper/edit/photo/lux/c;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;I)V

    .line 69
    const-string v0, "image"

    invoke-interface {p2}, Lcom/instagram/filterkit/e/a;->b()I

    move-result v1

    sget-object v2, Lcom/instagram/filterkit/b/c;->a:Lcom/instagram/filterkit/b/c;

    invoke-virtual {p1, v0, v1, v2}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;ILcom/instagram/filterkit/b/c;)V

    .line 70
    return-void
.end method

.method public final a(Lcom/instagram/filterkit/d/c;)V
    .locals 1
    .parameter

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;->a(Lcom/instagram/filterkit/d/c;)V

    .line 75
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;->d:Lcom/instagram/cliffjumper/edit/photo/lux/a;

    invoke-virtual {p1}, Lcom/instagram/filterkit/d/c;->a()Lcom/instagram/filterkit/d/b;

    invoke-virtual {v0, p0}, Lcom/instagram/cliffjumper/edit/photo/lux/a;->a(Lcom/instagram/cliffjumper/edit/photo/lux/c;)V

    .line 76
    return-void
.end method

.method protected final b(Lcom/instagram/filterkit/d/c;)Lcom/instagram/filterkit/b/b;
    .locals 2
    .parameter

    .prologue
    .line 54
    const-string v0, "StarLight"

    invoke-static {v0}, Lcom/instagram/cliffjumper/bridge/ShaderBridge;->a(Ljava/lang/String;)I

    move-result v1

    .line 55
    if-nez v1, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 58
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/instagram/filterkit/b/b;

    invoke-direct {v0, v1}, Lcom/instagram/filterkit/b/b;-><init>(I)V

    goto :goto_0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;->c:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 90
    invoke-super {p0, p1, p2}, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;->writeToParcel(Landroid/os/Parcel;I)V

    .line 91
    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    return-void
.end method
