.class public final Lcom/instagram/cliffjumper/util/c;
.super Ljava/lang/Object;
.source "MatrixUtil.java"


# direct methods
.method public static a(FLcom/instagram/cliffjumper/util/Matrix3;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x3f00

    const/high16 v4, -0x4100

    .line 17
    const v0, 0x3c8efa35

    mul-float/2addr v0, p0

    .line 18
    const/high16 v1, 0x3f80

    const/high16 v2, 0x4000

    mul-float/2addr v2, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    const v3, 0x3ed413cd

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v1, v2

    .line 20
    invoke-virtual {p1}, Lcom/instagram/cliffjumper/util/Matrix3;->a()V

    .line 21
    invoke-virtual {p1, v5, v5}, Lcom/instagram/cliffjumper/util/Matrix3;->b(FF)V

    .line 22
    invoke-virtual {p1, v0}, Lcom/instagram/cliffjumper/util/Matrix3;->a(F)V

    .line 23
    invoke-virtual {p1, v1, v1}, Lcom/instagram/cliffjumper/util/Matrix3;->a(FF)V

    .line 24
    invoke-virtual {p1, v4, v4}, Lcom/instagram/cliffjumper/util/Matrix3;->b(FF)V

    .line 25
    return-void
.end method
