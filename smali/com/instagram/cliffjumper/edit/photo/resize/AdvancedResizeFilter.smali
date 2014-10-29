.class public Lcom/instagram/cliffjumper/edit/photo/resize/AdvancedResizeFilter;
.super Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;
.source "AdvancedResizeFilter.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/instagram/cliffjumper/edit/photo/resize/AdvancedResizeFilter;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Ljava/nio/FloatBuffer;

.field private final d:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/instagram/cliffjumper/edit/photo/resize/a;

    invoke-direct {v0}, Lcom/instagram/cliffjumper/edit/photo/resize/a;-><init>()V

    sput-object v0, Lcom/instagram/cliffjumper/edit/photo/resize/AdvancedResizeFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 36
    const-class v0, Lcom/instagram/cliffjumper/edit/photo/resize/AdvancedResizeFilter;

    sput-object v0, Lcom/instagram/cliffjumper/edit/photo/resize/AdvancedResizeFilter;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 41
    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;-><init>()V

    .line 38
    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/AdvancedResizeFilter;->c:Ljava/nio/FloatBuffer;

    .line 39
    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/AdvancedResizeFilter;->d:Ljava/nio/FloatBuffer;

    .line 42
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v1, 0x1

    .line 45
    invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;-><init>(Landroid/os/Parcel;)V

    .line 38
    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/AdvancedResizeFilter;->c:Ljava/nio/FloatBuffer;

    .line 39
    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/AdvancedResizeFilter;->d:Ljava/nio/FloatBuffer;

    .line 46
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0
    .parameter "x0"
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/photo/resize/AdvancedResizeFilter;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method protected final a(Lcom/instagram/filterkit/b/b;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 73
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/AdvancedResizeFilter;->c:Ljava/nio/FloatBuffer;

    invoke-interface {p2}, Lcom/instagram/filterkit/e/a;->c()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 74
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/AdvancedResizeFilter;->c:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 75
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/AdvancedResizeFilter;->d:Ljava/nio/FloatBuffer;

    invoke-interface {p3}, Lcom/instagram/filterkit/e/c;->c()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 76
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/resize/AdvancedResizeFilter;->d:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 77
    const-string v0, "image"

    invoke-interface {p2}, Lcom/instagram/filterkit/e/a;->b()I

    move-result v1

    sget-object v2, Lcom/instagram/filterkit/b/c;->a:Lcom/instagram/filterkit/b/c;

    invoke-virtual {p1, v0, v1, v2}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;ILcom/instagram/filterkit/b/c;)V

    .line 81
    const-string v0, "imageSize"

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/resize/AdvancedResizeFilter;->c:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    .line 82
    const-string v0, "outputSize"

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/resize/AdvancedResizeFilter;->d:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    .line 83
    return-void
.end method

.method protected final b(Lcom/instagram/filterkit/d/c;)Lcom/instagram/filterkit/b/b;
    .locals 2
    .parameter

    .prologue
    .line 48
    sget-object v0, Lcom/instagram/cliffjumper/edit/photo/resize/AdvancedResizeFilter;->a:Ljava/lang/Class;

    .line 49
    const-string v0, "BicubicResize"

    invoke-static {v0}, Lcom/instagram/cliffjumper/bridge/ShaderBridge;->a(Ljava/lang/String;)I

    move-result v1

    .line 50
    if-eqz v1, :cond_0

    .line 51
    new-instance v0, Lcom/instagram/filterkit/b/b;

    invoke-direct {v0, v1}, Lcom/instagram/filterkit/b/b;-><init>(I)V

    .line 61
    :goto_0
    return-object v0

    .line 53
    :cond_0
    sget-object v0, Lcom/instagram/cliffjumper/edit/photo/resize/AdvancedResizeFilter;->a:Ljava/lang/Class;

    .line 55
    const-string v0, "FixedResize"

    invoke-static {v0}, Lcom/instagram/cliffjumper/bridge/ShaderBridge;->a(Ljava/lang/String;)I

    move-result v1

    .line 56
    if-eqz v1, :cond_1

    .line 57
    new-instance v0, Lcom/instagram/filterkit/b/b;

    invoke-direct {v0, v1}, Lcom/instagram/filterkit/b/b;-><init>(I)V

    goto :goto_0

    .line 59
    :cond_1
    sget-object v0, Lcom/instagram/cliffjumper/edit/photo/resize/AdvancedResizeFilter;->a:Ljava/lang/Class;

    .line 61
    const/4 v0, 0x0

    goto :goto_0
.end method
