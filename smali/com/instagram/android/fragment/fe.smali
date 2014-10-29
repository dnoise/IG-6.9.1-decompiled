.class final Lcom/instagram/android/fragment/fe;
.super Ljava/lang/Object;
.source "TabbedExploreFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:F

.field final synthetic c:Lcom/instagram/android/fragment/fd;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/fd;IF)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/instagram/android/fragment/fe;->c:Lcom/instagram/android/fragment/fd;

    iput p2, p0, Lcom/instagram/android/fragment/fe;->a:I

    iput p3, p0, Lcom/instagram/android/fragment/fe;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 76
    iget-object v0, p0, Lcom/instagram/android/fragment/fe;->c:Lcom/instagram/android/fragment/fd;

    iget-object v0, v0, Lcom/instagram/android/fragment/fd;->a:Lcom/instagram/android/fragment/fc;

    invoke-static {v0}, Lcom/instagram/android/fragment/fc;->a(Lcom/instagram/android/fragment/fc;)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/instagram/android/fragment/fe;->a:I

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 77
    iget v0, p0, Lcom/instagram/android/fragment/fe;->b:F

    iget-object v1, p0, Lcom/instagram/android/fragment/fe;->c:Lcom/instagram/android/fragment/fd;

    iget-object v1, v1, Lcom/instagram/android/fragment/fd;->a:Lcom/instagram/android/fragment/fc;

    invoke-static {v1}, Lcom/instagram/android/fragment/fc;->b(Lcom/instagram/android/fragment/fc;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/instagram/android/fragment/fe;->c:Lcom/instagram/android/fragment/fd;

    iget-object v0, v0, Lcom/instagram/android/fragment/fd;->a:Lcom/instagram/android/fragment/fc;

    invoke-static {v0}, Lcom/instagram/android/fragment/fc;->a(Lcom/instagram/android/fragment/fc;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 80
    :cond_0
    return-void
.end method
