.class final Lcom/instagram/android/creation/a/al;
.super Ljava/lang/Object;
.source "MetadataFragment.java"

# interfaces
.implements Landroid/support/v4/view/bm;


# instance fields
.field final synthetic a:Lcom/instagram/ui/viewpager/ScrollingOptionalViewPager;

.field final synthetic b:Lcom/instagram/android/creation/a/ah;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/a/ah;Lcom/instagram/ui/viewpager/ScrollingOptionalViewPager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/instagram/android/creation/a/al;->b:Lcom/instagram/android/creation/a/ah;

    iput-object p2, p0, Lcom/instagram/android/creation/a/al;->a:Lcom/instagram/ui/viewpager/ScrollingOptionalViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 295
    iget-object v0, p0, Lcom/instagram/android/creation/a/al;->a:Lcom/instagram/ui/viewpager/ScrollingOptionalViewPager;

    invoke-virtual {v0}, Lcom/instagram/ui/viewpager/ScrollingOptionalViewPager;->getScrollingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/instagram/android/creation/a/al;->b:Lcom/instagram/android/creation/a/ah;

    invoke-static {v0}, Lcom/instagram/android/creation/a/ah;->c(Lcom/instagram/android/creation/a/ah;)V

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/creation/a/al;->b:Lcom/instagram/android/creation/a/ah;

    invoke-static {v0, p1}, Lcom/instagram/android/creation/a/ah;->a(Lcom/instagram/android/creation/a/ah;I)V

    .line 301
    return-void
.end method

.method public final b(I)V
    .locals 2
    .parameter

    .prologue
    .line 305
    iget-object v0, p0, Lcom/instagram/android/creation/a/al;->b:Lcom/instagram/android/creation/a/ah;

    invoke-static {v0}, Lcom/instagram/android/creation/a/ah;->d(Lcom/instagram/android/creation/a/ah;)I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 307
    iget-object v0, p0, Lcom/instagram/android/creation/a/al;->b:Lcom/instagram/android/creation/a/ah;

    invoke-static {v0}, Lcom/instagram/android/creation/a/ah;->c(Lcom/instagram/android/creation/a/ah;)V

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/creation/a/al;->b:Lcom/instagram/android/creation/a/ah;

    invoke-static {v0, p1}, Lcom/instagram/android/creation/a/ah;->b(Lcom/instagram/android/creation/a/ah;I)I

    .line 310
    iget-object v0, p0, Lcom/instagram/android/creation/a/al;->b:Lcom/instagram/android/creation/a/ah;

    invoke-virtual {v0}, Lcom/instagram/android/creation/a/ah;->n()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/creation/a/al;->b:Lcom/instagram/android/creation/a/ah;

    invoke-virtual {v1}, Lcom/instagram/android/creation/a/ah;->E()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/common/y/f;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 311
    return-void
.end method
