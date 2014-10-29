.class public Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;
.super Ljava/lang/Object;
.source "NativeImage.java"


# instance fields
.field private mBufferId:I

.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .parameter "id"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;->mBufferId:I

    .line 18
    iput p2, p0, Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;->mWidth:I

    .line 19
    iput p3, p0, Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;->mHeight:I

    .line 20
    return-void
.end method


# virtual methods
.method public assertDimensions(II)V
    .locals 3
    .parameter "expectedWidth"
    .parameter "expectedHeight"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 38
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/instagram/common/l/a/f;->a(Z)V

    .line 39
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;->getHeight()I

    move-result v0

    if-ne v0, p2, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/instagram/common/l/a/f;->a(Z)V

    .line 40
    return-void

    :cond_0
    move v0, v2

    .line 38
    goto :goto_0

    :cond_1
    move v1, v2

    .line 39
    goto :goto_1
.end method

.method public getBufferId()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;->mBufferId:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;->mWidth:I

    return v0
.end method
