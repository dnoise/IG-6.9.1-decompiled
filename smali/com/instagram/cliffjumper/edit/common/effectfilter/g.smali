.class final Lcom/instagram/cliffjumper/edit/common/effectfilter/g;
.super Ljava/lang/Object;
.source "FilterStrengthController.java"

# interfaces
.implements Lcom/instagram/cliffjumper/ui/a;


# instance fields
.field final synthetic a:Lcom/instagram/cliffjumper/edit/common/effectfilter/f;


# direct methods
.method constructor <init>(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/g;->a:Lcom/instagram/cliffjumper/edit/common/effectfilter/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 131
    invoke-static {}, Lcom/instagram/cliffjumper/util/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/g;->a:Lcom/instagram/cliffjumper/edit/common/effectfilter/f;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->e(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/g;->a:Lcom/instagram/cliffjumper/edit/common/effectfilter/f;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->c(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;)Lcom/instagram/filterkit/filter/IgFilterGroup;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 133
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/g;->a:Lcom/instagram/cliffjumper/edit/common/effectfilter/f;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->c(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;)Lcom/instagram/filterkit/filter/IgFilterGroup;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 135
    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/g;->a:Lcom/instagram/cliffjumper/edit/common/effectfilter/f;

    invoke-static {v0, p1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->a(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;I)I

    .line 121
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/g;->a:Lcom/instagram/cliffjumper/edit/common/effectfilter/f;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->a(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/g;->a:Lcom/instagram/cliffjumper/edit/common/effectfilter/f;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->c(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;)Lcom/instagram/filterkit/filter/IgFilterGroup;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/i;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/g;->a:Lcom/instagram/cliffjumper/edit/common/effectfilter/f;

    invoke-static {v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->b(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->c(I)V

    .line 123
    invoke-static {}, Lcom/instagram/cliffjumper/util/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/g;->a:Lcom/instagram/cliffjumper/edit/common/effectfilter/f;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->d(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;)Lcom/instagram/cliffjumper/edit/common/ui/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/b;->a()V

    .line 127
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 139
    invoke-static {}, Lcom/instagram/cliffjumper/util/a/b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/g;->a:Lcom/instagram/cliffjumper/edit/common/effectfilter/f;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->d(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;)Lcom/instagram/cliffjumper/edit/common/ui/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/b;->a()V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/g;->a:Lcom/instagram/cliffjumper/edit/common/effectfilter/f;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->e(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/g;->a:Lcom/instagram/cliffjumper/edit/common/effectfilter/f;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->c(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;)Lcom/instagram/filterkit/filter/IgFilterGroup;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 143
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/g;->a:Lcom/instagram/cliffjumper/edit/common/effectfilter/f;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->c(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;)Lcom/instagram/filterkit/filter/IgFilterGroup;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 144
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/g;->a:Lcom/instagram/cliffjumper/edit/common/effectfilter/f;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->d(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;)Lcom/instagram/cliffjumper/edit/common/ui/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/b;->a()V

    goto :goto_0
.end method
