.class final Lcom/instagram/cliffjumper/edit/photo/lux/e;
.super Ljava/lang/Object;
.source "LuxAdjustmentController.java"

# interfaces
.implements Lcom/instagram/cliffjumper/ui/a;


# instance fields
.field final synthetic a:Lcom/instagram/cliffjumper/edit/photo/lux/d;


# direct methods
.method constructor <init>(Lcom/instagram/cliffjumper/edit/photo/lux/d;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/e;->a:Lcom/instagram/cliffjumper/edit/photo/lux/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 105
    invoke-static {}, Lcom/instagram/cliffjumper/util/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/e;->a:Lcom/instagram/cliffjumper/edit/photo/lux/d;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/lux/d;->d(Lcom/instagram/cliffjumper/edit/photo/lux/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/e;->a:Lcom/instagram/cliffjumper/edit/photo/lux/d;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/lux/d;->e(Lcom/instagram/cliffjumper/edit/photo/lux/d;)Lcom/instagram/filterkit/filter/IgFilterGroup;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 107
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/e;->a:Lcom/instagram/cliffjumper/edit/photo/lux/d;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/lux/d;->e(Lcom/instagram/cliffjumper/edit/photo/lux/d;)Lcom/instagram/filterkit/filter/IgFilterGroup;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 109
    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/e;->a:Lcom/instagram/cliffjumper/edit/photo/lux/d;

    invoke-static {v0, p1}, Lcom/instagram/cliffjumper/edit/photo/lux/d;->a(Lcom/instagram/cliffjumper/edit/photo/lux/d;I)I

    .line 95
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/e;->a:Lcom/instagram/cliffjumper/edit/photo/lux/d;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/e;->a:Lcom/instagram/cliffjumper/edit/photo/lux/d;

    invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/lux/d;->a(Lcom/instagram/cliffjumper/edit/photo/lux/d;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/lux/d;->b(Lcom/instagram/cliffjumper/edit/photo/lux/d;I)V

    .line 96
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/e;->a:Lcom/instagram/cliffjumper/edit/photo/lux/d;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/lux/d;->b(Lcom/instagram/cliffjumper/edit/photo/lux/d;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    invoke-static {}, Lcom/instagram/cliffjumper/util/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/e;->a:Lcom/instagram/cliffjumper/edit/photo/lux/d;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/lux/d;->c(Lcom/instagram/cliffjumper/edit/photo/lux/d;)Lcom/instagram/cliffjumper/edit/common/ui/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/b;->a()V

    .line 101
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 113
    invoke-static {}, Lcom/instagram/cliffjumper/util/a/b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/e;->a:Lcom/instagram/cliffjumper/edit/photo/lux/d;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/lux/d;->c(Lcom/instagram/cliffjumper/edit/photo/lux/d;)Lcom/instagram/cliffjumper/edit/common/ui/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/b;->a()V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/e;->a:Lcom/instagram/cliffjumper/edit/photo/lux/d;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/lux/d;->d(Lcom/instagram/cliffjumper/edit/photo/lux/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/e;->a:Lcom/instagram/cliffjumper/edit/photo/lux/d;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/lux/d;->e(Lcom/instagram/cliffjumper/edit/photo/lux/d;)Lcom/instagram/filterkit/filter/IgFilterGroup;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 117
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/e;->a:Lcom/instagram/cliffjumper/edit/photo/lux/d;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/lux/d;->e(Lcom/instagram/cliffjumper/edit/photo/lux/d;)Lcom/instagram/filterkit/filter/IgFilterGroup;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 118
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/e;->a:Lcom/instagram/cliffjumper/edit/photo/lux/d;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/lux/d;->c(Lcom/instagram/cliffjumper/edit/photo/lux/d;)Lcom/instagram/cliffjumper/edit/common/ui/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/b;->a()V

    goto :goto_0
.end method
