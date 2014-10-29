.class final Lcom/instagram/cliffjumper/edit/photo/a/ad;
.super Ljava/lang/Object;
.source "PhotoFilterFragment.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field final synthetic a:Lcom/instagram/cliffjumper/edit/photo/a/a;


# direct methods
.method private constructor <init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 1083
    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/a/ad;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/cliffjumper/edit/photo/a/a;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1083
    invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/photo/a/ad;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V

    return-void
.end method


# virtual methods
.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .parameter
    .parameter
    .parameter "width"
    .parameter

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ad;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->o(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/filterkit/c/c;

    move-result-object v0

    invoke-static {p3}, Lcom/instagram/filterkit/e/d;->a(I)Lcom/instagram/filterkit/e/c;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/filterkit/c/c;->a(Lcom/instagram/filterkit/e/c;)V

    .line 1089
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ad;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->a(Lcom/instagram/cliffjumper/edit/photo/a/a;)V

    .line 1091
    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 5
    .parameter "holder"

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ad;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    new-instance v1, Lcom/instagram/filterkit/c/e;

    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/photo/a/ad;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v2}, Lcom/instagram/cliffjumper/edit/photo/a/a;->n()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/instagram/filterkit/a/c;

    invoke-direct {v3, p1}, Lcom/instagram/filterkit/a/c;-><init>(Landroid/view/SurfaceHolder;)V

    iget-object v4, p0, Lcom/instagram/cliffjumper/edit/photo/a/ad;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v4}, Lcom/instagram/cliffjumper/edit/photo/a/a;->p(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/cliffjumper/edit/photo/a/z;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/instagram/filterkit/c/e;-><init>(Landroid/content/Context;Lcom/instagram/filterkit/a/c;Lcom/instagram/filterkit/c/b;)V

    invoke-static {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->a(Lcom/instagram/cliffjumper/edit/photo/a/a;Lcom/instagram/filterkit/c/c;)Lcom/instagram/filterkit/c/c;

    .line 1097
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ad;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->o(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/filterkit/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/ad;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->f(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/filterkit/filter/IgFilterGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/filterkit/c/c;->a(Lcom/instagram/filterkit/filter/IgFilter;)V

    .line 1098
    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ad;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->v(Lcom/instagram/cliffjumper/edit/photo/a/a;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1103
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ad;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->v(Lcom/instagram/cliffjumper/edit/photo/a/a;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1105
    :cond_0
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ad;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->o(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/filterkit/c/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/filterkit/c/c;->b()V

    .line 1106
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ad;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->a(Lcom/instagram/cliffjumper/edit/photo/a/a;Lcom/instagram/filterkit/c/c;)Lcom/instagram/filterkit/c/c;

    .line 1107
    return-void
.end method
