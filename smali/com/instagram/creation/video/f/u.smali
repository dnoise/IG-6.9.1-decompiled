.class final Lcom/instagram/creation/video/f/u;
.super Lcom/instagram/common/c/a;
.source "CamcorderFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/common/c/a",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/creation/video/f/a;


# direct methods
.method private constructor <init>(Lcom/instagram/creation/video/f/a;)V
    .locals 0
    .parameter

    .prologue
    .line 604
    iput-object p1, p0, Lcom/instagram/creation/video/f/u;->a:Lcom/instagram/creation/video/f/a;

    invoke-direct {p0}, Lcom/instagram/common/c/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/creation/video/f/a;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 604
    invoke-direct {p0, p1}, Lcom/instagram/creation/video/f/u;-><init>(Lcom/instagram/creation/video/f/a;)V

    return-void
.end method

.method private a(Ljava/lang/Boolean;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 630
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/instagram/creation/video/f/u;->a:Lcom/instagram/creation/video/f/a;

    invoke-static {v0}, Lcom/instagram/creation/video/f/a;->r(Lcom/instagram/creation/video/f/a;)V

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/instagram/creation/video/f/u;->a:Lcom/instagram/creation/video/f/a;

    invoke-static {v0}, Lcom/instagram/creation/video/f/a;->s(Lcom/instagram/creation/video/f/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 635
    iget-object v0, p0, Lcom/instagram/creation/video/f/u;->a:Lcom/instagram/creation/video/f/a;

    invoke-static {v0}, Lcom/instagram/creation/video/f/a;->t(Lcom/instagram/creation/video/f/a;)Z

    .line 638
    iget-object v0, p0, Lcom/instagram/creation/video/f/u;->a:Lcom/instagram/creation/video/f/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/f/a;->p()Landroid/support/v4/app/s;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/video/f/u;->a:Lcom/instagram/creation/video/f/a;

    invoke-static {v1}, Lcom/instagram/creation/video/f/a;->q(Lcom/instagram/creation/video/f/a;)Lcom/instagram/creation/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/creation/video/f/u;->a:Lcom/instagram/creation/video/f/a;

    invoke-static {v2}, Lcom/instagram/creation/video/f/a;->u(Lcom/instagram/creation/video/f/a;)Lcom/instagram/creation/video/i/a;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/creation/video/f/u;->a:Lcom/instagram/creation/video/f/a;

    invoke-static {v3}, Lcom/instagram/creation/video/f/a;->v(Lcom/instagram/creation/video/f/a;)Z

    move-result v3

    invoke-static {v0, v1, v2, v4, v3}, Lcom/instagram/creation/video/l/g;->a(Landroid/support/v4/app/s;Ljava/lang/String;Lcom/instagram/creation/video/i/a;ZZ)V

    .line 649
    :cond_1
    iget-object v0, p0, Lcom/instagram/creation/video/f/u;->a:Lcom/instagram/creation/video/f/a;

    invoke-static {v0}, Lcom/instagram/creation/video/f/a;->w(Lcom/instagram/creation/video/f/a;)Lcom/instagram/creation/video/ui/VideoShutterButton;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/instagram/creation/video/f/u;->a:Lcom/instagram/creation/video/f/a;

    invoke-static {v0}, Lcom/instagram/creation/video/f/a;->b(Lcom/instagram/creation/video/f/a;)Lcom/instagram/creation/video/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/a;->m()Z

    move-result v0

    if-nez v0, :cond_2

    .line 650
    iget-object v0, p0, Lcom/instagram/creation/video/f/u;->a:Lcom/instagram/creation/video/f/a;

    invoke-static {v0}, Lcom/instagram/creation/video/f/a;->w(Lcom/instagram/creation/video/f/a;)Lcom/instagram/creation/video/ui/VideoShutterButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/instagram/creation/video/ui/VideoShutterButton;->setEnabled(Z)V

    .line 652
    :cond_2
    return-void
.end method

.method private varargs c()Ljava/lang/Boolean;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 608
    iget-object v0, p0, Lcom/instagram/creation/video/f/u;->a:Lcom/instagram/creation/video/f/a;

    invoke-static {v0}, Lcom/instagram/creation/video/f/a;->b(Lcom/instagram/creation/video/f/a;)Lcom/instagram/creation/video/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 609
    invoke-static {}, Lcom/instagram/creation/b/d/a;->a()Lcom/instagram/creation/b/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/b/d/a;->c()Lcom/instagram/creation/b/a/b;

    move-result-object v0

    .line 611
    iget-object v1, p0, Lcom/instagram/creation/video/f/u;->a:Lcom/instagram/creation/video/f/a;

    invoke-virtual {v1}, Lcom/instagram/creation/video/f/a;->n()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/creation/video/c/b;->a(Lcom/instagram/creation/b/a/b;Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 612
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 613
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " clips available. Trying to recover."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    :try_start_0
    iget-object v2, p0, Lcom/instagram/creation/video/f/u;->a:Lcom/instagram/creation/video/f/a;

    invoke-virtual {v2, v1}, Lcom/instagram/creation/video/f/a;->a(Ljava/util/List;)V

    .line 616
    iget-object v1, p0, Lcom/instagram/creation/video/f/u;->a:Lcom/instagram/creation/video/f/a;

    invoke-static {v1, v0}, Lcom/instagram/creation/video/f/a;->a(Lcom/instagram/creation/video/f/a;Lcom/instagram/creation/b/a/b;)Lcom/instagram/creation/b/a/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    .line 617
    :catch_0
    move-exception v0

    .line 618
    const-string v1, "CamcorderFragment"

    const-string v2, "Failed to recover clips :("

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 619
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 622
    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 604
    invoke-direct {p0}, Lcom/instagram/creation/video/f/u;->c()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 604
    check-cast p1, Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Lcom/instagram/creation/video/f/u;->a(Ljava/lang/Boolean;)V

    return-void
.end method
