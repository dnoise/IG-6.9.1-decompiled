.class public final Lcom/instagram/cliffjumper/edit/common/filters/g;
.super Ljava/lang/Object;
.source "BasicAdjustUtil.java"


# direct methods
.method public static a(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;
    .locals 1
    .parameter

    .prologue
    .line 10
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;

    move-result-object v0

    check-cast v0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;

    return-object v0
.end method
