.class final Lcom/facebook/m;
.super Lcom/facebook/j;
.source "AuthorizationClient.java"


# instance fields
.field final synthetic b:Lcom/facebook/c;

.field private transient c:Lcom/facebook/ag;


# direct methods
.method constructor <init>(Lcom/facebook/c;)V
    .locals 0
    .parameter

    .prologue
    .line 521
    iput-object p1, p0, Lcom/facebook/m;->b:Lcom/facebook/c;

    invoke-direct {p0, p1}, Lcom/facebook/j;-><init>(Lcom/facebook/c;)V

    return-void
.end method


# virtual methods
.method final a(Lcom/facebook/k;Landroid/os/Bundle;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 553
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/m;->c:Lcom/facebook/ag;

    .line 555
    iget-object v0, p0, Lcom/facebook/m;->b:Lcom/facebook/c;

    invoke-static {v0}, Lcom/facebook/c;->a(Lcom/facebook/c;)V

    .line 557
    if-eqz p2, :cond_4

    .line 558
    const-string v0, "com.facebook.platform.extra.PERMISSIONS"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 559
    invoke-virtual {p1}, Lcom/facebook/k;->b()Ljava/util/List;

    move-result-object v0

    .line 560
    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 563
    :cond_0
    sget-object v0, Lcom/facebook/b;->d:Lcom/facebook/b;

    invoke-static {p2, v0}, Lcom/facebook/a;->a(Landroid/os/Bundle;Lcom/facebook/b;)Lcom/facebook/a;

    move-result-object v0

    .line 565
    invoke-static {v0}, Lcom/facebook/s;->a(Lcom/facebook/a;)Lcom/facebook/s;

    move-result-object v0

    .line 566
    iget-object v1, p0, Lcom/facebook/m;->b:Lcom/facebook/c;

    invoke-virtual {v1, v0}, Lcom/facebook/c;->a(Lcom/facebook/s;)V

    .line 582
    :goto_0
    return-void

    .line 572
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 573
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 574
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 575
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 578
    :cond_3
    invoke-virtual {p1, v2}, Lcom/facebook/k;->a(Ljava/util/List;)V

    .line 581
    :cond_4
    iget-object v0, p0, Lcom/facebook/m;->b:Lcom/facebook/c;

    invoke-virtual {v0}, Lcom/facebook/c;->b()V

    goto :goto_0
.end method

.method final a(Lcom/facebook/k;)Z
    .locals 3
    .parameter

    .prologue
    .line 534
    new-instance v0, Lcom/facebook/ag;

    iget-object v1, p0, Lcom/facebook/m;->b:Lcom/facebook/c;

    iget-object v1, v1, Lcom/facebook/c;->c:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/facebook/k;->f()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/ag;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/m;->c:Lcom/facebook/ag;

    .line 535
    iget-object v0, p0, Lcom/facebook/m;->c:Lcom/facebook/ag;

    invoke-virtual {v0}, Lcom/facebook/ag;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 536
    const/4 v0, 0x0

    .line 549
    :goto_0
    return v0

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/facebook/m;->b:Lcom/facebook/c;

    invoke-static {v0}, Lcom/facebook/c;->b(Lcom/facebook/c;)V

    .line 541
    new-instance v0, Lcom/facebook/n;

    invoke-direct {v0, p0, p1}, Lcom/facebook/n;-><init>(Lcom/facebook/m;Lcom/facebook/k;)V

    .line 548
    iget-object v1, p0, Lcom/facebook/m;->c:Lcom/facebook/ag;

    invoke-virtual {v1, v0}, Lcom/facebook/ag;->a(Lcom/facebook/ai;)V

    .line 549
    const/4 v0, 0x1

    goto :goto_0
.end method

.method final c()V
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/facebook/m;->c:Lcom/facebook/ag;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/facebook/m;->c:Lcom/facebook/ag;

    invoke-virtual {v0}, Lcom/facebook/ag;->b()V

    .line 529
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/m;->c:Lcom/facebook/ag;

    .line 531
    :cond_0
    return-void
.end method
