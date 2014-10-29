.class public abstract Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;
.super Lcom/instagram/filterkit/filter/BaseCachingFilter;
.source "BaseSimpleFilter.java"


# static fields
.field private static final a:Lcom/instagram/cliffjumper/util/a;


# instance fields
.field private c:Lcom/instagram/filterkit/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/instagram/cliffjumper/util/e;->a()Lcom/instagram/cliffjumper/util/a;

    move-result-object v0

    sput-object v0, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;->a:Lcom/instagram/cliffjumper/util/a;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/instagram/filterkit/filter/BaseCachingFilter;-><init>()V

    .line 26
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/instagram/filterkit/filter/BaseCachingFilter;-><init>(Landroid/os/Parcel;)V

    .line 30
    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/c;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 34
    invoke-virtual {p0, p1, p3}, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;->a(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/c;

    move-result-object v2

    .line 36
    invoke-virtual {p1, p0}, Lcom/instagram/filterkit/d/c;->a(Lcom/instagram/filterkit/d/e;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 37
    invoke-virtual {p0, p1}, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;->b(Lcom/instagram/filterkit/d/c;)Lcom/instagram/filterkit/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;->c:Lcom/instagram/filterkit/b/b;

    .line 38
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;->c:Lcom/instagram/filterkit/b/b;

    if-nez v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;->a()V

    move-object v0, v1

    .line 80
    :goto_0
    return-object v0

    .line 42
    :cond_0
    invoke-virtual {p1, p0}, Lcom/instagram/filterkit/d/c;->b(Lcom/instagram/filterkit/d/e;)V

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;->c:Lcom/instagram/filterkit/b/b;

    invoke-virtual {p0, v0, p2, v2}, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;->a(Lcom/instagram/filterkit/b/b;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)V

    .line 46
    const-string v0, "BaseSimpleFilter.render:setFilterParams"

    invoke-virtual {p1, v0}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    .line 48
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;->c:Lcom/instagram/filterkit/b/b;

    const-string v3, "position"

    sget-object v4, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;->a:Lcom/instagram/cliffjumper/util/a;

    iget-object v4, v4, Lcom/instagram/cliffjumper/util/a;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3, v4}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/Buffer;)Z

    .line 54
    iget-object v3, p0, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;->c:Lcom/instagram/filterkit/b/b;

    const-string v4, "transformedTextureCoordinate"

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;->z_()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;->a:Lcom/instagram/cliffjumper/util/a;

    iget-object v0, v0, Lcom/instagram/cliffjumper/util/a;->c:Ljava/nio/FloatBuffer;

    :goto_1
    invoke-virtual {v3, v4, v0}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/Buffer;)Z

    .line 60
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;->c:Lcom/instagram/filterkit/b/b;

    const-string v3, "staticTextureCoordinate"

    sget-object v4, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;->a:Lcom/instagram/cliffjumper/util/a;

    iget-object v4, v4, Lcom/instagram/cliffjumper/util/a;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3, v4}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/Buffer;)Z

    .line 65
    const-string v0, "BaseSimpleFilter.render:setCoordinates"

    invoke-virtual {p1, v0}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    .line 68
    invoke-interface {v2}, Lcom/instagram/filterkit/e/c;->c()I

    move-result v0

    invoke-interface {v2}, Lcom/instagram/filterkit/e/c;->d()I

    move-result v3

    invoke-static {v5, v5, v0, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 69
    const-string v0, "BaseSimpleFilter.render:glViewport"

    invoke-virtual {p1, v0}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    .line 70
    const v0, 0x8d40

    invoke-interface {v2}, Lcom/instagram/filterkit/e/c;->a()I

    move-result v3

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 71
    const-string v0, "BaseSimpleFilter.render:glBindFramebuffer"

    invoke-virtual {p1, v0}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    .line 72
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;->c:Lcom/instagram/filterkit/b/b;

    invoke-virtual {v0}, Lcom/instagram/filterkit/b/b;->b()V

    .line 73
    const-string v0, "BaseSimpleFilter.render:prepareToRender"

    invoke-virtual {p1, v0}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    .line 74
    const/4 v0, 0x5

    const/4 v3, 0x4

    invoke-static {v0, v5, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 75
    const-string v0, "BaseSimpleFilter.render:glDrawArrays"

    invoke-virtual {p1, v0}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    .line 77
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;->y_()V

    .line 79
    invoke-virtual {p1, p2, v1}, Lcom/instagram/filterkit/d/c;->a(Lcom/instagram/filterkit/e/g;Lcom/instagram/filterkit/d/e;)V

    move-object v0, v2

    .line 80
    goto :goto_0

    .line 54
    :cond_2
    sget-object v0, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;->a:Lcom/instagram/cliffjumper/util/a;

    iget-object v0, v0, Lcom/instagram/cliffjumper/util/a;->b:Ljava/nio/FloatBuffer;

    goto :goto_1
.end method

.method protected a()V
    .locals 3

    .prologue
    .line 84
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not create program for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract a(Lcom/instagram/filterkit/b/b;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)V
.end method

.method public a(Lcom/instagram/filterkit/d/c;)V
    .locals 1
    .parameter

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/instagram/filterkit/filter/BaseCachingFilter;->a(Lcom/instagram/filterkit/d/c;)V

    .line 90
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;->c:Lcom/instagram/filterkit/b/b;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p1}, Lcom/instagram/filterkit/d/c;->a()Lcom/instagram/filterkit/d/b;

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;->c:Lcom/instagram/filterkit/b/b;

    invoke-virtual {v0}, Lcom/instagram/filterkit/b/b;->a()I

    move-result v0

    invoke-static {v0}, Lcom/instagram/filterkit/d/b;->c(I)V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;->c:Lcom/instagram/filterkit/b/b;

    .line 94
    :cond_0
    return-void
.end method

.method protected abstract b(Lcom/instagram/filterkit/d/c;)Lcom/instagram/filterkit/b/b;
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 113
    invoke-super {p0, p1, p2}, Lcom/instagram/filterkit/filter/BaseCachingFilter;->writeToParcel(Landroid/os/Parcel;I)V

    .line 114
    return-void
.end method

.method protected y_()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method protected z_()Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method
