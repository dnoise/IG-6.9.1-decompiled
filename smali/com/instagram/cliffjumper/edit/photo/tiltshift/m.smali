.class public final Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;
.super Ljava/lang/Object;
.source "TiltShiftUtil.java"


# direct methods
.method public static a(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;
    .locals 1
    .parameter

    .prologue
    .line 11
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;

    move-result-object v0

    check-cast v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;

    return-object v0
.end method

.method public static a(Lcom/instagram/filterkit/filter/IgFilterGroup;Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 23
    invoke-static {p0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;->a(Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;)V

    .line 24
    invoke-static {p0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->b(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;->a(Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;)V

    .line 25
    invoke-static {p0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->c(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;->a(Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;)V

    .line 26
    const/16 v3, 0xb

    sget-object v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-eq p1, v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 27
    const/16 v3, 0xc

    sget-object v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-eq p1, v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p0, v3, v0}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 28
    const/16 v0, 0xf

    sget-object v3, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-eq p1, v3, :cond_3

    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 29
    sget-object v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-ne p1, v0, :cond_0

    .line 30
    invoke-static {p0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->c(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;->c(F)V

    .line 32
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 26
    goto :goto_0

    :cond_2
    move v0, v2

    .line 27
    goto :goto_1

    :cond_3
    move v1, v2

    .line 28
    goto :goto_2
.end method

.method public static a(Lcom/instagram/filterkit/filter/IgFilterGroup;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 36
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 37
    return-void
.end method

.method public static b(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;
    .locals 1
    .parameter

    .prologue
    .line 15
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;

    move-result-object v0

    check-cast v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;

    return-object v0
.end method

.method public static c(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;
    .locals 1
    .parameter

    .prologue
    .line 19
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;

    move-result-object v0

    check-cast v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;

    return-object v0
.end method
