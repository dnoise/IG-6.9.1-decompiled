.class final Lcom/facebook/q;
.super Lcom/facebook/o;
.source "AuthorizationClient.java"


# instance fields
.field final synthetic c:Lcom/facebook/c;


# direct methods
.method constructor <init>(Lcom/facebook/c;)V
    .locals 0
    .parameter

    .prologue
    .line 658
    iput-object p1, p0, Lcom/facebook/q;->c:Lcom/facebook/c;

    invoke-direct {p0, p1}, Lcom/facebook/o;-><init>(Lcom/facebook/c;)V

    return-void
.end method

.method private a(Landroid/content/Intent;)Lcom/facebook/s;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 694
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 695
    const-string v1, "error"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 696
    if-nez v1, :cond_0

    .line 697
    const-string v1, "error_type"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 700
    :cond_0
    if-nez v1, :cond_2

    .line 701
    iget-object v0, p0, Lcom/facebook/q;->c:Lcom/facebook/c;

    iget-object v0, v0, Lcom/facebook/c;->h:Lcom/facebook/k;

    invoke-virtual {v0}, Lcom/facebook/k;->b()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/facebook/b;->b:Lcom/facebook/b;

    invoke-static {v0, v2, v1}, Lcom/facebook/a;->a(Ljava/util/List;Landroid/os/Bundle;Lcom/facebook/b;)Lcom/facebook/a;

    move-result-object v0

    .line 703
    invoke-static {v0}, Lcom/facebook/s;->a(Lcom/facebook/a;)Lcom/facebook/s;

    move-result-object v0

    .line 709
    :cond_1
    :goto_0
    return-object v0

    .line 704
    :cond_2
    sget-object v3, Lcom/facebook/g/o;->a:Ljava/util/Collection;

    invoke-interface {v3, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 706
    sget-object v3, Lcom/facebook/g/o;->b:Ljava/util/Collection;

    invoke-interface {v3, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 707
    invoke-static {v0}, Lcom/facebook/s;->a(Ljava/lang/String;)Lcom/facebook/s;

    move-result-object v0

    goto :goto_0

    .line 709
    :cond_3
    const-string v0, "error_description"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/s;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/s;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method final a(ILandroid/content/Intent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 674
    if-nez p2, :cond_0

    .line 676
    const-string v0, "Operation canceled"

    invoke-static {v0}, Lcom/facebook/s;->a(Ljava/lang/String;)Lcom/facebook/s;

    move-result-object v0

    .line 685
    :goto_0
    if-eqz v0, :cond_3

    .line 686
    iget-object v1, p0, Lcom/facebook/q;->c:Lcom/facebook/c;

    invoke-virtual {v1, v0}, Lcom/facebook/c;->a(Lcom/facebook/s;)V

    .line 690
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 677
    :cond_0
    if-nez p1, :cond_1

    .line 678
    const-string v0, "error"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/s;->a(Ljava/lang/String;)Lcom/facebook/s;

    move-result-object v0

    goto :goto_0

    .line 679
    :cond_1
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 680
    const-string v0, "Unexpected resultCode from authorization."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/s;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/s;

    move-result-object v0

    goto :goto_0

    .line 682
    :cond_2
    invoke-direct {p0, p2}, Lcom/facebook/q;->a(Landroid/content/Intent;)Lcom/facebook/s;

    move-result-object v0

    goto :goto_0

    .line 688
    :cond_3
    iget-object v0, p0, Lcom/facebook/q;->c:Lcom/facebook/c;

    invoke-virtual {v0}, Lcom/facebook/c;->b()V

    goto :goto_1
.end method

.method final a(Lcom/facebook/k;)Z
    .locals 3
    .parameter

    .prologue
    .line 663
    iget-object v0, p0, Lcom/facebook/q;->c:Lcom/facebook/c;

    iget-object v0, v0, Lcom/facebook/c;->c:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/facebook/k;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/k;->b()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/ao;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v0

    .line 666
    invoke-virtual {p1}, Lcom/facebook/k;->d()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/q;->a(Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method
