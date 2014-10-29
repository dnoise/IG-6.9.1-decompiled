.class final Lcom/instagram/creation/video/gl/ad;
.super Ljava/lang/Object;
.source "UploadedTexture.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:Z

.field public b:Landroid/graphics/Bitmap$Config;

.field public c:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/instagram/creation/video/gl/ad;-><init>()V

    return-void
.end method

.method private a()Lcom/instagram/creation/video/gl/ad;
    .locals 2

    .prologue
    .line 111
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/gl/ad;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/instagram/creation/video/gl/ad;->a()Lcom/instagram/creation/video/gl/ad;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "object"

    .prologue
    const/4 v0, 0x0

    .line 102
    instance-of v1, p1, Lcom/instagram/creation/video/gl/ad;

    if-nez v1, :cond_1

    .line 104
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 103
    .restart local p1
    :cond_1
    check-cast p1, Lcom/instagram/creation/video/gl/ad;

    .line 104
    .end local p1
    iget-boolean v1, p0, Lcom/instagram/creation/video/gl/ad;->a:Z

    iget-boolean v2, p1, Lcom/instagram/creation/video/gl/ad;->a:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/instagram/creation/video/gl/ad;->b:Landroid/graphics/Bitmap$Config;

    iget-object v2, p1, Lcom/instagram/creation/video/gl/ad;->b:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/instagram/creation/video/gl/ad;->c:I

    iget v2, p1, Lcom/instagram/creation/video/gl/ad;->c:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/instagram/creation/video/gl/ad;->b:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/instagram/creation/video/gl/ad;->c:I

    xor-int/2addr v0, v1

    .line 97
    iget-boolean v1, p0, Lcom/instagram/creation/video/gl/ad;->a:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    neg-int v0, v0

    goto :goto_0
.end method
