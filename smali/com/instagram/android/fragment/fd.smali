.class final Lcom/instagram/android/fragment/fd;
.super Ljava/lang/Object;
.source "TabbedExploreFragment.java"

# interfaces
.implements Lcom/instagram/base/b/d;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/fc;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/fc;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/instagram/android/fragment/fd;->a:Lcom/instagram/android/fragment/fc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 3
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/instagram/android/fragment/fd;->a:Lcom/instagram/android/fragment/fc;

    invoke-static {v0}, Lcom/instagram/android/fragment/fc;->a(Lcom/instagram/android/fragment/fc;)Landroid/view/View;

    move-result-object v0

    neg-float v1, p1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/instagram/ui/a/b;->a(Landroid/view/View;I)V

    .line 68
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/instagram/android/fragment/fd;->a:Lcom/instagram/android/fragment/fc;

    invoke-static {v0}, Lcom/instagram/android/fragment/fc;->b(Lcom/instagram/android/fragment/fc;)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 72
    :goto_0
    iget-object v1, p0, Lcom/instagram/android/fragment/fd;->a:Lcom/instagram/android/fragment/fc;

    invoke-static {v1}, Lcom/instagram/android/fragment/fc;->a(Lcom/instagram/android/fragment/fc;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/instagram/android/fragment/fd;->a:Lcom/instagram/android/fragment/fc;

    invoke-static {v1}, Lcom/instagram/android/fragment/fc;->a(Lcom/instagram/android/fragment/fc;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/fragment/fe;

    invoke-direct {v2, p0, v0, p1}, Lcom/instagram/android/fragment/fe;-><init>(Lcom/instagram/android/fragment/fd;IF)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 84
    :cond_0
    return-void

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/fragment/fd;->a:Lcom/instagram/android/fragment/fc;

    invoke-static {v0}, Lcom/instagram/android/fragment/fc;->b(Lcom/instagram/android/fragment/fc;)I

    move-result v0

    goto :goto_0
.end method
