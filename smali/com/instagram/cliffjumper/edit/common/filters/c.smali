.class final Lcom/instagram/cliffjumper/edit/common/filters/c;
.super Ljava/lang/Object;
.source "BasicAdjustController.java"

# interfaces
.implements Lcom/instagram/cliffjumper/ui/a;


# instance fields
.field final synthetic a:Lcom/instagram/cliffjumper/edit/common/filters/b;


# direct methods
.method constructor <init>(Lcom/instagram/cliffjumper/edit/common/filters/b;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/common/filters/c;->a:Lcom/instagram/cliffjumper/edit/common/filters/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 124
    invoke-static {}, Lcom/instagram/cliffjumper/util/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/c;->a:Lcom/instagram/cliffjumper/edit/common/filters/b;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/filters/b;->d(Lcom/instagram/cliffjumper/edit/common/filters/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/c;->a:Lcom/instagram/cliffjumper/edit/common/filters/b;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/filters/b;->e(Lcom/instagram/cliffjumper/edit/common/filters/b;)Lcom/instagram/filterkit/filter/IgFilterGroup;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 126
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/c;->a:Lcom/instagram/cliffjumper/edit/common/filters/b;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/filters/b;->e(Lcom/instagram/cliffjumper/edit/common/filters/b;)Lcom/instagram/filterkit/filter/IgFilterGroup;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 128
    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/c;->a:Lcom/instagram/cliffjumper/edit/common/filters/b;

    invoke-static {v0, p1}, Lcom/instagram/cliffjumper/edit/common/filters/b;->a(Lcom/instagram/cliffjumper/edit/common/filters/b;I)I

    .line 114
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/c;->a:Lcom/instagram/cliffjumper/edit/common/filters/b;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/filters/b;->a(Lcom/instagram/cliffjumper/edit/common/filters/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/c;->a:Lcom/instagram/cliffjumper/edit/common/filters/b;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/c;->a:Lcom/instagram/cliffjumper/edit/common/filters/b;

    invoke-static {v1}, Lcom/instagram/cliffjumper/edit/common/filters/b;->b(Lcom/instagram/cliffjumper/edit/common/filters/b;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/instagram/cliffjumper/edit/common/filters/b;->b(Lcom/instagram/cliffjumper/edit/common/filters/b;I)V

    .line 116
    invoke-static {}, Lcom/instagram/cliffjumper/util/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/c;->a:Lcom/instagram/cliffjumper/edit/common/filters/b;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/filters/b;->c(Lcom/instagram/cliffjumper/edit/common/filters/b;)Lcom/instagram/cliffjumper/edit/common/ui/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/b;->a()V

    .line 120
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 132
    invoke-static {}, Lcom/instagram/cliffjumper/util/a/b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/c;->a:Lcom/instagram/cliffjumper/edit/common/filters/b;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/filters/b;->c(Lcom/instagram/cliffjumper/edit/common/filters/b;)Lcom/instagram/cliffjumper/edit/common/ui/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/b;->a()V

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/c;->a:Lcom/instagram/cliffjumper/edit/common/filters/b;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/filters/b;->d(Lcom/instagram/cliffjumper/edit/common/filters/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/c;->a:Lcom/instagram/cliffjumper/edit/common/filters/b;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/filters/b;->e(Lcom/instagram/cliffjumper/edit/common/filters/b;)Lcom/instagram/filterkit/filter/IgFilterGroup;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 136
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/c;->a:Lcom/instagram/cliffjumper/edit/common/filters/b;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/filters/b;->e(Lcom/instagram/cliffjumper/edit/common/filters/b;)Lcom/instagram/filterkit/filter/IgFilterGroup;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 137
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/c;->a:Lcom/instagram/cliffjumper/edit/common/filters/b;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/filters/b;->c(Lcom/instagram/cliffjumper/edit/common/filters/b;)Lcom/instagram/cliffjumper/edit/common/ui/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/b;->a()V

    goto :goto_0
.end method
