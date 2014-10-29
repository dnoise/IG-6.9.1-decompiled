.class final Lcom/instagram/android/fragment/de;
.super Landroid/database/DataSetObserver;
.source "MainFeedFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/cr;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/cr;)V
    .locals 0
    .parameter

    .prologue
    .line 410
    iput-object p1, p0, Lcom/instagram/android/fragment/de;->a:Lcom/instagram/android/fragment/cr;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 3

    .prologue
    .line 413
    iget-object v0, p0, Lcom/instagram/android/fragment/de;->a:Lcom/instagram/android/fragment/cr;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/cr;->E()Landroid/view/View;

    move-result-object v1

    .line 414
    if-eqz v1, :cond_0

    .line 415
    iget-object v0, p0, Lcom/instagram/android/fragment/de;->a:Lcom/instagram/android/fragment/cr;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/cr;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/a/l;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/l;->p()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 416
    :goto_0
    iget-object v2, p0, Lcom/instagram/android/fragment/de;->a:Lcom/instagram/android/fragment/cr;

    invoke-static {v2}, Lcom/instagram/android/fragment/cr;->b(Lcom/instagram/android/fragment/cr;)Lcom/instagram/ui/e/a;

    move-result-object v2

    if-eqz v0, :cond_2

    sget v0, Lcom/instagram/ui/e/b;->d:I

    :goto_1
    invoke-virtual {v2, v1, v0}, Lcom/instagram/ui/e/a;->a(Landroid/view/View;I)V

    .line 419
    :cond_0
    return-void

    .line 415
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 416
    :cond_2
    sget v0, Lcom/instagram/ui/e/b;->e:I

    goto :goto_1
.end method
