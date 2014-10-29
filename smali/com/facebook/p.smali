.class final Lcom/facebook/p;
.super Lcom/facebook/o;
.source "AuthorizationClient.java"


# instance fields
.field final synthetic c:Lcom/facebook/c;


# direct methods
.method constructor <init>(Lcom/facebook/c;)V
    .locals 0
    .parameter

    .prologue
    .line 603
    iput-object p1, p0, Lcom/facebook/p;->c:Lcom/facebook/c;

    invoke-direct {p0, p1}, Lcom/facebook/o;-><init>(Lcom/facebook/c;)V

    return-void
.end method

.method private static a(Landroid/content/Intent;)Lcom/facebook/s;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 643
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 644
    const-string v2, "com.facebook.platform.status.ERROR_TYPE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 645
    if-nez v2, :cond_1

    .line 646
    sget-object v0, Lcom/facebook/b;->c:Lcom/facebook/b;

    invoke-static {v1, v0}, Lcom/facebook/a;->a(Landroid/os/Bundle;Lcom/facebook/b;)Lcom/facebook/a;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/s;->a(Lcom/facebook/a;)Lcom/facebook/s;

    move-result-object v0

    .line 653
    :cond_0
    :goto_0
    return-object v0

    .line 648
    :cond_1
    const-string v3, "ServiceDisabled"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 650
    const-string v3, "UserCanceled"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 651
    invoke-static {v0}, Lcom/facebook/s;->a(Ljava/lang/String;)Lcom/facebook/s;

    move-result-object v0

    goto :goto_0

    .line 653
    :cond_2
    const-string v0, "error_description"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/s;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/s;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method final a(ILandroid/content/Intent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 619
    if-nez p2, :cond_1

    .line 621
    const-string v0, "Operation canceled"

    invoke-static {v0}, Lcom/facebook/s;->a(Ljava/lang/String;)Lcom/facebook/s;

    move-result-object v0

    .line 633
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    .line 634
    iget-object v1, p0, Lcom/facebook/p;->c:Lcom/facebook/c;

    invoke-virtual {v1, v0}, Lcom/facebook/c;->a(Lcom/facebook/s;)V

    .line 639
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 622
    :cond_1
    invoke-static {p2}, Lcom/facebook/ao;->a(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 624
    if-nez p1, :cond_2

    .line 625
    const-string v0, "com.facebook.platform.status.ERROR_DESCRIPTION"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/s;->a(Ljava/lang/String;)Lcom/facebook/s;

    move-result-object v0

    goto :goto_0

    .line 627
    :cond_2
    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    .line 628
    const-string v1, "Unexpected resultCode from authorization."

    invoke-static {v1, v0}, Lcom/facebook/s;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/s;

    move-result-object v0

    goto :goto_0

    .line 630
    :cond_3
    invoke-static {p2}, Lcom/facebook/p;->a(Landroid/content/Intent;)Lcom/facebook/s;

    move-result-object v0

    goto :goto_0

    .line 636
    :cond_4
    iget-object v0, p0, Lcom/facebook/p;->c:Lcom/facebook/c;

    invoke-virtual {v0}, Lcom/facebook/c;->b()V

    goto :goto_1
.end method

.method final a(Lcom/facebook/k;)Z
    .locals 4
    .parameter

    .prologue
    .line 608
    iget-object v0, p0, Lcom/facebook/p;->c:Lcom/facebook/c;

    iget-object v0, v0, Lcom/facebook/c;->c:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/facebook/k;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/facebook/k;->b()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Lcom/facebook/k;->e()Lcom/facebook/cf;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/cf;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/ao;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 612
    invoke-virtual {p1}, Lcom/facebook/k;->d()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/p;->a(Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method
