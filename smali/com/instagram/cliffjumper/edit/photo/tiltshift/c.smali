.class final Lcom/instagram/cliffjumper/edit/photo/tiltshift/c;
.super Ljava/lang/Object;
.source "TiltShiftController.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;


# direct methods
.method constructor <init>(Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/c;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .parameter "group"
    .parameter

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/cliffjumper/edit/common/ui/g;

    .line 88
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/c;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->getTileInfo()Lcom/instagram/cliffjumper/edit/common/ui/c;

    move-result-object v0

    check-cast v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/d;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/d;->a()Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->a(Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    .line 89
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/c;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->a(Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;)Lcom/instagram/filterkit/filter/IgFilterGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/c;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;

    invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->b(Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;)V

    .line 90
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/c;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->a(Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;)Lcom/instagram/filterkit/filter/IgFilterGroup;

    move-result-object v1

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/c;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->b(Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    move-result-object v0

    sget-object v2, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;Z)V

    .line 91
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/c;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->b(Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    move-result-object v0

    sget-object v1, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-eq v0, v1, :cond_1

    .line 92
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/c;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->d(Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/c;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;

    invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->c(Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;)Lcom/instagram/cliffjumper/edit/common/ui/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->c(Lcom/instagram/cliffjumper/edit/common/ui/b;)V

    .line 97
    :goto_1
    return-void

    .line 90
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/c;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->d(Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->a()V

    .line 95
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/c;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->c(Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;)Lcom/instagram/cliffjumper/edit/common/ui/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/b;->a()V

    goto :goto_1
.end method
