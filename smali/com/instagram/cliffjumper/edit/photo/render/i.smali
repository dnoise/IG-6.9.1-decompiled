.class public final Lcom/instagram/cliffjumper/edit/photo/render/i;
.super Ljava/lang/Object;
.source "RenderConfigUtil.java"


# direct methods
.method public static a(Lcom/instagram/cliffjumper/edit/photo/render/a;)Lcom/instagram/cliffjumper/edit/photo/render/j;
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-static {}, Lcom/instagram/creation/a/a;->a()I

    move-result v0

    invoke-static {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/render/i;->a(Lcom/instagram/cliffjumper/edit/photo/render/a;I)Lcom/instagram/cliffjumper/edit/photo/render/j;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/instagram/cliffjumper/edit/photo/render/a;I)Lcom/instagram/cliffjumper/edit/photo/render/j;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/render/a;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/cliffjumper/edit/photo/render/j;

    .line 43
    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/render/j;->a()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 47
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/instagram/cliffjumper/edit/photo/render/h;)Z
    .locals 2
    .parameter

    .prologue
    .line 51
    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/render/h;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)[Lcom/instagram/cliffjumper/edit/photo/render/h;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/instagram/cliffjumper/edit/photo/render/h;

    new-instance v1, Lcom/instagram/cliffjumper/edit/photo/render/h;

    invoke-static {p0}, Lcom/instagram/creation/photo/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/instagram/creation/a/a;->a()I

    move-result v3

    invoke-direct {v1, v2, v3, v4}, Lcom/instagram/cliffjumper/edit/photo/render/h;-><init>(Ljava/lang/String;IZ)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/instagram/cliffjumper/edit/photo/render/h;

    invoke-static {}, Lcom/instagram/creation/photo/a/a;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3, v5}, Lcom/instagram/cliffjumper/edit/photo/render/h;-><init>(Ljava/lang/String;IZ)V

    aput-object v1, v0, v5

    .line 30
    return-object v0
.end method

.method public static b(Lcom/instagram/cliffjumper/edit/photo/render/a;)Lcom/instagram/cliffjumper/edit/photo/render/j;
    .locals 1
    .parameter

    .prologue
    .line 38
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/render/i;->a(Lcom/instagram/cliffjumper/edit/photo/render/a;I)Lcom/instagram/cliffjumper/edit/photo/render/j;

    move-result-object v0

    return-object v0
.end method
