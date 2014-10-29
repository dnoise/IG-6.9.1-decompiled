.class final Lcom/instagram/android/nux/ae;
.super Ljava/lang/Object;
.source "LandingPageFragment.java"

# interfaces
.implements Lcom/facebook/b/e;


# instance fields
.field final synthetic a:Lcom/instagram/android/nux/n;


# direct methods
.method private constructor <init>(Lcom/instagram/android/nux/n;)V
    .locals 0
    .parameter

    .prologue
    .line 518
    iput-object p1, p0, Lcom/instagram/android/nux/ae;->a:Lcom/instagram/android/nux/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/nux/n;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 518
    invoke-direct {p0, p1}, Lcom/instagram/android/nux/ae;-><init>(Lcom/instagram/android/nux/n;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 540
    sget-object v0, Lcom/instagram/p/b;->f:Lcom/instagram/p/b;

    invoke-virtual {v0}, Lcom/instagram/p/b;->c()V

    .line 541
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 521
    invoke-static {}, Lcom/instagram/share/b/a;->b()V

    .line 522
    new-instance v0, Lcom/instagram/registrationpush/a;

    iget-object v1, p0, Lcom/instagram/android/nux/ae;->a:Lcom/instagram/android/nux/n;

    invoke-virtual {v1}, Lcom/instagram/android/nux/n;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/registrationpush/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/instagram/registrationpush/a;->d()V

    .line 523
    sget-object v0, Lcom/instagram/p/b;->e:Lcom/instagram/p/b;

    invoke-virtual {v0}, Lcom/instagram/p/b;->c()V

    .line 524
    iget-object v0, p0, Lcom/instagram/android/nux/ae;->a:Lcom/instagram/android/nux/n;

    iget-object v1, p0, Lcom/instagram/android/nux/ae;->a:Lcom/instagram/android/nux/n;

    invoke-static {}, Lcom/instagram/android/nux/n;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/nux/n;->b(Lcom/instagram/android/nux/n;Ljava/lang/String;)V

    .line 525
    return-void
.end method

.method public final a(Lcom/facebook/b/a;)V
    .locals 1
    .parameter

    .prologue
    .line 535
    sget-object v0, Lcom/instagram/p/b;->g:Lcom/instagram/p/b;

    invoke-virtual {v0}, Lcom/instagram/p/b;->c()V

    .line 536
    iget-object v0, p0, Lcom/instagram/android/nux/ae;->a:Lcom/instagram/android/nux/n;

    invoke-static {v0}, Lcom/instagram/android/nux/n;->d(Lcom/instagram/android/nux/n;)V

    .line 537
    return-void
.end method

.method public final a(Lcom/facebook/b/i;)V
    .locals 1
    .parameter

    .prologue
    .line 529
    sget-object v0, Lcom/instagram/p/b;->g:Lcom/instagram/p/b;

    invoke-virtual {v0}, Lcom/instagram/p/b;->c()V

    .line 530
    iget-object v0, p0, Lcom/instagram/android/nux/ae;->a:Lcom/instagram/android/nux/n;

    invoke-static {v0}, Lcom/instagram/android/nux/n;->d(Lcom/instagram/android/nux/n;)V

    .line 531
    return-void
.end method
