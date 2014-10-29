.class final Lcom/instagram/android/fragment/ff;
.super Ljava/lang/Object;
.source "TabbedExploreFragment.java"

# interfaces
.implements Landroid/support/v4/view/bm;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/fc;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/fc;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/instagram/android/fragment/ff;->a:Lcom/instagram/android/fragment/fc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Lcom/instagram/android/fragment/ff;->a:Lcom/instagram/android/fragment/fc;

    invoke-static {v0}, Lcom/instagram/android/fragment/fc;->c(Lcom/instagram/android/fragment/fc;)Lcom/instagram/android/fragment/fl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/android/fragment/fl;->a(I)V

    .line 212
    iget-object v0, p0, Lcom/instagram/android/fragment/ff;->a:Lcom/instagram/android/fragment/fc;

    invoke-static {v0}, Lcom/instagram/android/fragment/fc;->d(Lcom/instagram/android/fragment/fc;)Lcom/instagram/android/fragment/fj;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/android/fragment/fj;->u_()V

    .line 213
    iget-object v0, p0, Lcom/instagram/android/fragment/ff;->a:Lcom/instagram/android/fragment/fc;

    invoke-static {v0}, Lcom/instagram/android/fragment/fc;->e(Lcom/instagram/android/fragment/fc;)Lcom/instagram/base/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/ff;->a:Lcom/instagram/android/fragment/fc;

    invoke-static {v1}, Lcom/instagram/android/fragment/fc;->d(Lcom/instagram/android/fragment/fc;)Lcom/instagram/android/fragment/fj;

    move-result-object v1

    invoke-interface {v1}, Lcom/instagram/android/fragment/fj;->v_()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/base/b/b;->a(Landroid/widget/ListView;)V

    .line 214
    return-void
.end method

.method public final b(I)V
    .locals 0
    .parameter

    .prologue
    .line 219
    return-void
.end method
