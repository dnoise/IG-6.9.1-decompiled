.class final Lcom/facebook/v;
.super Lcom/facebook/j;
.source "AuthorizationClient.java"


# instance fields
.field final synthetic b:Lcom/facebook/c;

.field private transient c:Lcom/facebook/widget/h;


# direct methods
.method constructor <init>(Lcom/facebook/c;)V
    .locals 0
    .parameter

    .prologue
    .line 420
    iput-object p1, p0, Lcom/facebook/v;->b:Lcom/facebook/c;

    invoke-direct {p0, p1}, Lcom/facebook/j;-><init>(Lcom/facebook/c;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 501
    iget-object v0, p0, Lcom/facebook/v;->b:Lcom/facebook/c;

    invoke-virtual {v0}, Lcom/facebook/c;->c()Lcom/facebook/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/u;->a()Landroid/app/Activity;

    move-result-object v0

    .line 502
    const-string v1, "com.facebook.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 505
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 506
    const-string v1, "TOKEN"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 507
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 508
    invoke-static {}, Lcom/facebook/g/t;->a()V

    .line 510
    :cond_0
    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 513
    iget-object v0, p0, Lcom/facebook/v;->b:Lcom/facebook/c;

    invoke-virtual {v0}, Lcom/facebook/c;->c()Lcom/facebook/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/u;->a()Landroid/app/Activity;

    move-result-object v0

    .line 514
    const-string v1, "com.facebook.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 517
    const-string v1, "TOKEN"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final a(Lcom/facebook/k;Landroid/os/Bundle;Lcom/facebook/z;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 479
    if-eqz p2, :cond_0

    .line 480
    invoke-virtual {p1}, Lcom/facebook/k;->b()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/facebook/b;->e:Lcom/facebook/b;

    invoke-static {v0, p2, v1}, Lcom/facebook/a;->a(Ljava/util/List;Landroid/os/Bundle;Lcom/facebook/b;)Lcom/facebook/a;

    move-result-object v1

    .line 482
    invoke-static {v1}, Lcom/facebook/s;->a(Lcom/facebook/a;)Lcom/facebook/s;

    move-result-object v0

    .line 487
    iget-object v2, p0, Lcom/facebook/v;->b:Lcom/facebook/c;

    iget-object v2, v2, Lcom/facebook/c;->c:Landroid/content/Context;

    invoke-static {v2}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v2

    .line 488
    invoke-virtual {v2}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 489
    invoke-virtual {v1}, Lcom/facebook/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/v;->a(Ljava/lang/String;)V

    .line 497
    :goto_0
    iget-object v1, p0, Lcom/facebook/v;->b:Lcom/facebook/c;

    invoke-virtual {v1, v0}, Lcom/facebook/c;->a(Lcom/facebook/s;)V

    .line 498
    return-void

    .line 491
    :cond_0
    instance-of v0, p3, Lcom/facebook/ab;

    if-eqz v0, :cond_1

    .line 492
    const-string v0, "User canceled log in."

    invoke-static {v0}, Lcom/facebook/s;->a(Ljava/lang/String;)Lcom/facebook/s;

    move-result-object v0

    goto :goto_0

    .line 494
    :cond_1
    invoke-virtual {p3}, Lcom/facebook/z;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/s;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/s;

    move-result-object v0

    goto :goto_0
.end method

.method final a()Z
    .locals 1

    .prologue
    .line 428
    const/4 v0, 0x1

    return v0
.end method

.method final a(Lcom/facebook/k;)Z
    .locals 5
    .parameter

    .prologue
    .line 446
    invoke-virtual {p1}, Lcom/facebook/k;->f()Ljava/lang/String;

    move-result-object v0

    .line 447
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 448
    invoke-virtual {p1}, Lcom/facebook/k;->b()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/g/t;->a(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 449
    const-string v2, "scope"

    const-string v3, ","

    invoke-virtual {p1}, Lcom/facebook/k;->b()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/k;->h()Ljava/lang/String;

    move-result-object v2

    .line 453
    invoke-static {v2}, Lcom/facebook/g/t;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/facebook/v;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 454
    const-string v3, "access_token"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    :goto_0
    new-instance v2, Lcom/facebook/w;

    invoke-direct {v2, p0, p1}, Lcom/facebook/w;-><init>(Lcom/facebook/v;Lcom/facebook/k;)V

    .line 467
    new-instance v3, Lcom/facebook/i;

    iget-object v4, p0, Lcom/facebook/v;->b:Lcom/facebook/c;

    invoke-virtual {v4}, Lcom/facebook/c;->c()Lcom/facebook/u;

    move-result-object v4

    invoke-interface {v4}, Lcom/facebook/u;->a()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v0, v1}, Lcom/facebook/i;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v3, v2}, Lcom/facebook/i;->a(Lcom/facebook/widget/o;)Lcom/facebook/widget/m;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/l;

    .line 470
    invoke-virtual {v0}, Lcom/facebook/widget/l;->a()Lcom/facebook/widget/h;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/v;->c:Lcom/facebook/widget/h;

    .line 471
    iget-object v0, p0, Lcom/facebook/v;->c:Lcom/facebook/widget/h;

    invoke-virtual {v0}, Lcom/facebook/widget/h;->show()V

    .line 473
    const/4 v0, 0x1

    return v0

    .line 457
    :cond_1
    iget-object v2, p0, Lcom/facebook/v;->b:Lcom/facebook/c;

    iget-object v2, v2, Lcom/facebook/c;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/facebook/g/t;->b(Landroid/content/Context;)V

    goto :goto_0
.end method

.method final b()Z
    .locals 1

    .prologue
    .line 433
    const/4 v0, 0x1

    return v0
.end method

.method final c()V
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/facebook/v;->c:Lcom/facebook/widget/h;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/facebook/v;->c:Lcom/facebook/widget/h;

    invoke-virtual {v0}, Lcom/facebook/widget/h;->dismiss()V

    .line 440
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/v;->c:Lcom/facebook/widget/h;

    .line 442
    :cond_0
    return-void
.end method
