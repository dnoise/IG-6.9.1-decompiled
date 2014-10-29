.class final Lcom/instagram/android/fragment/fh;
.super Ljava/lang/Object;
.source "TabbedExploreFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/fc;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/fc;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/instagram/android/fragment/fh;->a:Lcom/instagram/android/fragment/fc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 251
    iget-object v0, p0, Lcom/instagram/android/fragment/fh;->a:Lcom/instagram/android/fragment/fc;

    invoke-static {v0}, Lcom/instagram/android/fragment/fc;->d(Lcom/instagram/android/fragment/fc;)Lcom/instagram/android/fragment/fj;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/android/fragment/fj;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/instagram/android/fragment/fh;->a:Lcom/instagram/android/fragment/fc;

    invoke-static {v0}, Lcom/instagram/android/fragment/fc;->d(Lcom/instagram/android/fragment/fc;)Lcom/instagram/android/fragment/fj;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/android/fragment/fj;->t_()V

    .line 256
    :cond_0
    return-void
.end method
