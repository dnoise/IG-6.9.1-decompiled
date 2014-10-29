.class final Lcom/instagram/android/fragment/bb;
.super Ljava/lang/Object;
.source "FacebookAdvancedOptionsFragment.java"

# interfaces
.implements Lcom/facebook/b/e;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/aw;


# direct methods
.method private constructor <init>(Lcom/instagram/android/fragment/aw;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/instagram/android/fragment/bb;->a:Lcom/instagram/android/fragment/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/fragment/aw;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/bb;-><init>(Lcom/instagram/android/fragment/aw;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 228
    invoke-static {}, Lcom/instagram/android/fragment/aw;->d()Ljava/lang/Class;

    .line 229
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 212
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/instagram/share/b/a;->b(Z)V

    .line 213
    iget-object v0, p0, Lcom/instagram/android/fragment/bb;->a:Lcom/instagram/android/fragment/aw;

    invoke-static {v0}, Lcom/instagram/android/fragment/aw;->e(Lcom/instagram/android/fragment/aw;)Lcom/instagram/common/a/a/k;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/bb;->a:Lcom/instagram/android/fragment/aw;

    invoke-static {v1}, Lcom/instagram/android/fragment/aw;->d(Lcom/instagram/android/fragment/aw;)Lcom/instagram/android/c/b/e;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/common/a/a/k;->a(Lcom/instagram/common/a/a/a;)V

    .line 214
    return-void
.end method

.method public final a(Lcom/facebook/b/a;)V
    .locals 0
    .parameter

    .prologue
    .line 223
    invoke-static {}, Lcom/instagram/android/fragment/aw;->d()Ljava/lang/Class;

    .line 224
    return-void
.end method

.method public final a(Lcom/facebook/b/i;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    invoke-static {}, Lcom/instagram/android/fragment/aw;->d()Ljava/lang/Class;

    .line 219
    return-void
.end method
