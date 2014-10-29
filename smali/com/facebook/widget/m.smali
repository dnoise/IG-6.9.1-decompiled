.class Lcom/facebook/widget/m;
.super Ljava/lang/Object;
.source "WebDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CONCRETE:",
        "Lcom/facebook/widget/m",
        "<*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/facebook/bo;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Lcom/facebook/widget/o;

.field private g:Landroid/os/Bundle;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    const v0, 0x1030010

    iput v0, p0, Lcom/facebook/widget/m;->e:I

    .line 402
    const-string v0, "applicationId"

    invoke-static {p2, v0}, Lcom/facebook/g/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iput-object p2, p0, Lcom/facebook/widget/m;->c:Ljava/lang/String;

    .line 405
    invoke-direct {p0, p1, p3, p4}, Lcom/facebook/widget/m;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 406
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 476
    iput-object p1, p0, Lcom/facebook/widget/m;->a:Landroid/content/Context;

    .line 477
    iput-object p2, p0, Lcom/facebook/widget/m;->d:Ljava/lang/String;

    .line 478
    if-eqz p3, :cond_0

    .line 479
    iput-object p3, p0, Lcom/facebook/widget/m;->g:Landroid/os/Bundle;

    .line 483
    :goto_0
    return-void

    .line 481
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/m;->g:Landroid/os/Bundle;

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/facebook/widget/h;
    .locals 6

    .prologue
    .line 441
    iget-object v0, p0, Lcom/facebook/widget/m;->b:Lcom/facebook/bo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/widget/m;->b:Lcom/facebook/bo;

    invoke-virtual {v0}, Lcom/facebook/bo;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 442
    iget-object v0, p0, Lcom/facebook/widget/m;->g:Landroid/os/Bundle;

    const-string v1, "app_id"

    iget-object v2, p0, Lcom/facebook/widget/m;->b:Lcom/facebook/bo;

    invoke-virtual {v2}, Lcom/facebook/bo;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lcom/facebook/widget/m;->g:Landroid/os/Bundle;

    const-string v1, "access_token"

    iget-object v2, p0, Lcom/facebook/widget/m;->b:Lcom/facebook/bo;

    invoke-virtual {v2}, Lcom/facebook/bo;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    :goto_0
    iget-object v0, p0, Lcom/facebook/widget/m;->g:Landroid/os/Bundle;

    const-string v1, "redirect_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/facebook/widget/m;->g:Landroid/os/Bundle;

    const-string v1, "redirect_uri"

    const-string v2, "fbconnect://success"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    :cond_0
    new-instance v0, Lcom/facebook/widget/h;

    iget-object v1, p0, Lcom/facebook/widget/m;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/widget/m;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/widget/m;->g:Landroid/os/Bundle;

    iget v4, p0, Lcom/facebook/widget/m;->e:I

    iget-object v5, p0, Lcom/facebook/widget/m;->f:Lcom/facebook/widget/o;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/widget/h;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/widget/o;)V

    return-object v0

    .line 445
    :cond_1
    iget-object v0, p0, Lcom/facebook/widget/m;->g:Landroid/os/Bundle;

    const-string v1, "app_id"

    iget-object v2, p0, Lcom/facebook/widget/m;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/facebook/widget/o;)Lcom/facebook/widget/m;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/widget/o;",
            ")TCONCRETE;"
        }
    .end annotation

    .prologue
    .line 428
    iput-object p1, p0, Lcom/facebook/widget/m;->f:Lcom/facebook/widget/o;

    .line 431
    return-object p0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/facebook/widget/m;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected final c()Landroid/content/Context;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/facebook/widget/m;->a:Landroid/content/Context;

    return-object v0
.end method

.method protected final d()I
    .locals 1

    .prologue
    .line 464
    iget v0, p0, Lcom/facebook/widget/m;->e:I

    return v0
.end method

.method protected final e()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/facebook/widget/m;->g:Landroid/os/Bundle;

    return-object v0
.end method

.method protected final f()Lcom/facebook/widget/o;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/facebook/widget/m;->f:Lcom/facebook/widget/o;

    return-object v0
.end method
