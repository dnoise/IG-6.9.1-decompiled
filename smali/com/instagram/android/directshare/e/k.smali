.class final Lcom/instagram/android/directshare/e/k;
.super Lcom/instagram/api/j/a;
.source "RequestedDirectSharesFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/a",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/directshare/e/b;

.field private final b:Lcom/instagram/f/c/a;

.field private final c:Lcom/instagram/android/directshare/e/l;


# direct methods
.method public constructor <init>(Lcom/instagram/android/directshare/e/b;Lcom/instagram/f/c/a;Lcom/instagram/android/directshare/e/l;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 337
    iput-object p1, p0, Lcom/instagram/android/directshare/e/k;->a:Lcom/instagram/android/directshare/e/b;

    invoke-direct {p0}, Lcom/instagram/api/j/a;-><init>()V

    .line 338
    iput-object p2, p0, Lcom/instagram/android/directshare/e/k;->b:Lcom/instagram/f/c/a;

    .line 339
    iput-object p3, p0, Lcom/instagram/android/directshare/e/k;->c:Lcom/instagram/android/directshare/e/l;

    .line 340
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/instagram/android/directshare/e/k;->b:Lcom/instagram/f/c/a;

    invoke-static {v0}, Lcom/instagram/android/directshare/c/x;->a(Lcom/instagram/f/c/a;)V

    .line 356
    iget-object v0, p0, Lcom/instagram/android/directshare/e/k;->c:Lcom/instagram/android/directshare/e/l;

    sget-object v1, Lcom/instagram/android/directshare/e/l;->c:Lcom/instagram/android/directshare/e/l;

    if-ne v0, v1, :cond_1

    .line 357
    iget-object v0, p0, Lcom/instagram/android/directshare/e/k;->a:Lcom/instagram/android/directshare/e/b;

    invoke-static {v0}, Lcom/instagram/android/directshare/e/b;->e(Lcom/instagram/android/directshare/e/b;)Lcom/instagram/android/directshare/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/directshare/e/a;->a()V

    .line 370
    :goto_0
    iget-object v0, p0, Lcom/instagram/android/directshare/e/k;->c:Lcom/instagram/android/directshare/e/l;

    sget-object v1, Lcom/instagram/android/directshare/e/l;->b:Lcom/instagram/android/directshare/e/l;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/instagram/l/b/a;->a()Lcom/instagram/l/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/l/b/a;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/instagram/android/directshare/e/k;->a:Lcom/instagram/android/directshare/e/b;

    invoke-virtual {v0}, Lcom/instagram/android/directshare/e/b;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/directshare/b/a;->a(Landroid/content/Context;)V

    .line 373
    invoke-static {}, Lcom/instagram/l/b/a;->a()Lcom/instagram/l/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/l/b/a;->k()Z

    .line 375
    :cond_0
    return-void

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/directshare/e/k;->c:Lcom/instagram/android/directshare/e/l;

    sget-object v1, Lcom/instagram/android/directshare/e/l;->b:Lcom/instagram/android/directshare/e/l;

    if-ne v0, v1, :cond_2

    .line 361
    const-string v0, "INTENT_ACTION_PENDING_REQUEST_ACCEPTED"

    invoke-static {v0}, Lcom/instagram/common/y/d;->a(Ljava/lang/String;)Z

    .line 365
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/directshare/e/k;->a:Lcom/instagram/android/directshare/e/b;

    invoke-static {v0}, Lcom/instagram/android/directshare/e/b;->f(Lcom/instagram/android/directshare/e/b;)V

    .line 366
    iget-object v0, p0, Lcom/instagram/android/directshare/e/k;->a:Lcom/instagram/android/directshare/e/b;

    invoke-virtual {v0}, Lcom/instagram/android/directshare/e/b;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/a/f;->a(Landroid/app/Activity;)Lcom/instagram/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/a/f;->b()V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 344
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/instagram/android/directshare/e/k;->a:Lcom/instagram/android/directshare/e/b;

    invoke-virtual {v1}, Lcom/instagram/android/directshare/e/b;->E()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/ui/d/b;->a(ZLandroid/view/View;)V

    .line 345
    return-void
.end method

.method protected final a(Lcom/instagram/api/j/j;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 379
    iget-object v0, p0, Lcom/instagram/android/directshare/e/k;->a:Lcom/instagram/android/directshare/e/b;

    iget-object v1, p0, Lcom/instagram/android/directshare/e/k;->c:Lcom/instagram/android/directshare/e/l;

    invoke-static {v0}, Lcom/instagram/android/directshare/e/b;->g(Lcom/instagram/android/directshare/e/b;)V

    .line 380
    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 332
    invoke-direct {p0}, Lcom/instagram/android/directshare/e/k;->c()V

    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 349
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/instagram/android/directshare/e/k;->a:Lcom/instagram/android/directshare/e/b;

    invoke-virtual {v1}, Lcom/instagram/android/directshare/e/b;->E()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/ui/d/b;->a(ZLandroid/view/View;)V

    .line 350
    return-void
.end method
