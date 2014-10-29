.class final Lcom/instagram/android/fragment/cm;
.super Ljava/lang/Object;
.source "LinkedAccountsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/widget/x;

.field final synthetic b:Lcom/instagram/android/fragment/cl;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/cl;Lcom/instagram/android/widget/x;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/instagram/android/fragment/cm;->b:Lcom/instagram/android/fragment/cl;

    iput-object p2, p0, Lcom/instagram/android/fragment/cm;->a:Lcom/instagram/android/widget/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/instagram/android/fragment/cm;->a:Lcom/instagram/android/widget/x;

    invoke-virtual {v0}, Lcom/instagram/android/widget/x;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/instagram/android/fragment/cm;->a:Lcom/instagram/android/widget/x;

    sget-object v1, Lcom/instagram/android/widget/x;->a:Lcom/instagram/android/widget/x;

    if-ne v0, v1, :cond_0

    .line 85
    new-instance v0, Lcom/instagram/base/a/a/a;

    iget-object v1, p0, Lcom/instagram/android/fragment/cm;->b:Lcom/instagram/android/fragment/cl;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/cl;->p()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v1, Lcom/instagram/android/fragment/aw;

    invoke-direct {v1}, Lcom/instagram/android/fragment/aw;-><init>()V

    invoke-virtual {v0, v1}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    .line 94
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/cm;->b:Lcom/instagram/android/fragment/cl;

    iget-object v1, p0, Lcom/instagram/android/fragment/cm;->a:Lcom/instagram/android/widget/x;

    invoke-static {v0, p1, v1}, Lcom/instagram/android/fragment/cl;->a(Lcom/instagram/android/fragment/cl;Landroid/view/View;Lcom/instagram/android/widget/x;)V

    goto :goto_0

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/fragment/cm;->a:Lcom/instagram/android/widget/x;

    iget-object v1, p0, Lcom/instagram/android/fragment/cm;->b:Lcom/instagram/android/fragment/cl;

    iget-object v2, p0, Lcom/instagram/android/fragment/cm;->b:Lcom/instagram/android/fragment/cl;

    invoke-static {v2}, Lcom/instagram/android/fragment/cl;->a(Lcom/instagram/android/fragment/cl;)Lcom/instagram/android/fragment/co;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/x;->a(Landroid/support/v4/app/Fragment;Lcom/facebook/b/e;)V

    goto :goto_0
.end method
