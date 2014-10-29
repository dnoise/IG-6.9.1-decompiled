.class public final Lcom/instagram/filterkit/e/d;
.super Ljava/lang/Object;
.source "OutputSurfaceUtil.java"


# direct methods
.method public static a(I)Lcom/instagram/filterkit/e/c;
    .locals 1
    .parameter

    .prologue
    .line 11
    new-instance v0, Lcom/instagram/filterkit/e/e;

    invoke-direct {v0, p0}, Lcom/instagram/filterkit/e/e;-><init>(I)V

    return-object v0
.end method

.method public static a(Lcom/instagram/filterkit/e/c;)Z
    .locals 2
    .parameter

    .prologue
    .line 58
    invoke-interface {p0}, Lcom/instagram/filterkit/e/c;->a()I

    move-result v0

    const/16 v1, -0x4d2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(I)Lcom/instagram/filterkit/e/c;
    .locals 1
    .parameter

    .prologue
    .line 34
    new-instance v0, Lcom/instagram/filterkit/e/f;

    invoke-direct {v0, p0}, Lcom/instagram/filterkit/e/f;-><init>(I)V

    return-object v0
.end method
