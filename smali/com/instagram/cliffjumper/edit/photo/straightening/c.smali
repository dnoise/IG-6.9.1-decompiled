.class final Lcom/instagram/cliffjumper/edit/photo/straightening/c;
.super Ljava/lang/Object;
.source "StraighteningController.java"

# interfaces
.implements Lcom/instagram/cliffjumper/edit/common/ui/sliderview/a;


# instance fields
.field final synthetic a:Lcom/instagram/cliffjumper/edit/photo/straightening/a;


# direct methods
.method constructor <init>(Lcom/instagram/cliffjumper/edit/photo/straightening/a;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/c;->a:Lcom/instagram/cliffjumper/edit/photo/straightening/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 154
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/c;->a:Lcom/instagram/cliffjumper/edit/photo/straightening/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->c(Lcom/instagram/cliffjumper/edit/photo/straightening/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/c;->a:Lcom/instagram/cliffjumper/edit/photo/straightening/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->d(Lcom/instagram/cliffjumper/edit/photo/straightening/a;)Lcom/instagram/filterkit/filter/IgFilterGroup;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 156
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/c;->a:Lcom/instagram/cliffjumper/edit/photo/straightening/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->d(Lcom/instagram/cliffjumper/edit/photo/straightening/a;)Lcom/instagram/filterkit/filter/IgFilterGroup;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 158
    :cond_0
    return-void
.end method

.method public final a(F)V
    .locals 1
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/c;->a:Lcom/instagram/cliffjumper/edit/photo/straightening/a;

    invoke-static {v0, p1}, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->a(Lcom/instagram/cliffjumper/edit/photo/straightening/a;F)F

    .line 148
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/c;->a:Lcom/instagram/cliffjumper/edit/photo/straightening/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->a(Lcom/instagram/cliffjumper/edit/photo/straightening/a;)Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->a(F)V

    .line 149
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/c;->a:Lcom/instagram/cliffjumper/edit/photo/straightening/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->b(Lcom/instagram/cliffjumper/edit/photo/straightening/a;)Lcom/instagram/cliffjumper/edit/common/ui/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/b;->a()V

    .line 150
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 162
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/c;->a:Lcom/instagram/cliffjumper/edit/photo/straightening/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->c(Lcom/instagram/cliffjumper/edit/photo/straightening/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/c;->a:Lcom/instagram/cliffjumper/edit/photo/straightening/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->d(Lcom/instagram/cliffjumper/edit/photo/straightening/a;)Lcom/instagram/filterkit/filter/IgFilterGroup;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 164
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/c;->a:Lcom/instagram/cliffjumper/edit/photo/straightening/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->d(Lcom/instagram/cliffjumper/edit/photo/straightening/a;)Lcom/instagram/filterkit/filter/IgFilterGroup;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    .line 165
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/c;->a:Lcom/instagram/cliffjumper/edit/photo/straightening/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->b(Lcom/instagram/cliffjumper/edit/photo/straightening/a;)Lcom/instagram/cliffjumper/edit/common/ui/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/b;->a()V

    .line 167
    :cond_0
    return-void
.end method
