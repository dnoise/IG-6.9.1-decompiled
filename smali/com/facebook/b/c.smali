.class final Lcom/facebook/b/c;
.super Ljava/lang/Object;
.source "Facebook.java"

# interfaces
.implements Lcom/facebook/b/e;


# instance fields
.field final synthetic a:Lcom/facebook/b/b;


# direct methods
.method constructor <init>(Lcom/facebook/b/b;)V
    .locals 0
    .parameter

    .prologue
    .line 385
    iput-object p1, p0, Lcom/facebook/b/c;->a:Lcom/facebook/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 414
    invoke-static {}, Lcom/facebook/b/m;->a()V

    .line 415
    iget-object v0, p0, Lcom/facebook/b/c;->a:Lcom/facebook/b/b;

    invoke-static {v0}, Lcom/facebook/b/b;->a(Lcom/facebook/b/b;)Lcom/facebook/b/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/b/e;->a()V

    .line 416
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 389
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 390
    iget-object v0, p0, Lcom/facebook/b/c;->a:Lcom/facebook/b/b;

    const-string v1, "access_token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/b/b;->a(Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/facebook/b/c;->a:Lcom/facebook/b/b;

    const-string v1, "expires_in"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/b/b;->b(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/facebook/b/c;->a:Lcom/facebook/b/b;

    invoke-virtual {v0}, Lcom/facebook/b/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Login Success! access_token="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/b/c;->a:Lcom/facebook/b/b;

    invoke-virtual {v1}, Lcom/facebook/b/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " expires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/b/c;->a:Lcom/facebook/b/b;

    invoke-virtual {v1}, Lcom/facebook/b/b;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/facebook/b/m;->a()V

    .line 396
    iget-object v0, p0, Lcom/facebook/b/c;->a:Lcom/facebook/b/b;

    invoke-static {v0}, Lcom/facebook/b/b;->a(Lcom/facebook/b/b;)Lcom/facebook/b/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/b/e;->a(Landroid/os/Bundle;)V

    .line 401
    :goto_0
    return-void

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/facebook/b/c;->a:Lcom/facebook/b/b;

    invoke-static {v0}, Lcom/facebook/b/b;->a(Lcom/facebook/b/b;)Lcom/facebook/b/e;

    move-result-object v0

    new-instance v1, Lcom/facebook/b/i;

    const-string v2, "Failed to receive access token."

    invoke-direct {v1, v2}, Lcom/facebook/b/i;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/facebook/b/e;->a(Lcom/facebook/b/i;)V

    goto :goto_0
.end method

.method public final a(Lcom/facebook/b/a;)V
    .locals 2
    .parameter

    .prologue
    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Login failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/facebook/b/m;->a()V

    .line 405
    iget-object v0, p0, Lcom/facebook/b/c;->a:Lcom/facebook/b/b;

    invoke-static {v0}, Lcom/facebook/b/b;->a(Lcom/facebook/b/b;)Lcom/facebook/b/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/b/e;->a(Lcom/facebook/b/a;)V

    .line 406
    return-void
.end method

.method public final a(Lcom/facebook/b/i;)V
    .locals 2
    .parameter

    .prologue
    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Login failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/facebook/b/m;->a()V

    .line 410
    iget-object v0, p0, Lcom/facebook/b/c;->a:Lcom/facebook/b/b;

    invoke-static {v0}, Lcom/facebook/b/b;->a(Lcom/facebook/b/b;)Lcom/facebook/b/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/b/e;->a(Lcom/facebook/b/i;)V

    .line 411
    return-void
.end method
