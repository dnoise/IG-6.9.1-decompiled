.class final Lcom/instagram/android/directshare/d/k;
.super Ljava/lang/Object;
.source "DirectSharePermalinkFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/instagram/feed/d/b;

.field final synthetic c:Lcom/instagram/android/directshare/d/c;


# direct methods
.method constructor <init>(Lcom/instagram/android/directshare/d/c;[Ljava/lang/String;Lcom/instagram/feed/d/b;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 707
    iput-object p1, p0, Lcom/instagram/android/directshare/d/k;->c:Lcom/instagram/android/directshare/d/c;

    iput-object p2, p0, Lcom/instagram/android/directshare/d/k;->a:[Ljava/lang/String;

    iput-object p3, p0, Lcom/instagram/android/directshare/d/k;->b:Lcom/instagram/feed/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter "which"

    .prologue
    .line 710
    iget-object v0, p0, Lcom/instagram/android/directshare/d/k;->a:[Ljava/lang/String;

    aget-object v0, v0, p2

    .line 712
    iget-object v1, p0, Lcom/instagram/android/directshare/d/k;->c:Lcom/instagram/android/directshare/d/c;

    sget v2, Lcom/facebook/az;->delete_comment:I

    invoke-virtual {v1, v2}, Lcom/instagram/android/directshare/d/c;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 713
    iget-object v0, p0, Lcom/instagram/android/directshare/d/k;->c:Lcom/instagram/android/directshare/d/c;

    iget-object v1, p0, Lcom/instagram/android/directshare/d/k;->b:Lcom/instagram/feed/d/b;

    invoke-static {v0, v1}, Lcom/instagram/android/directshare/d/c;->a(Lcom/instagram/android/directshare/d/c;Lcom/instagram/feed/d/b;)V

    .line 724
    :cond_0
    :goto_0
    return-void

    .line 714
    :cond_1
    iget-object v1, p0, Lcom/instagram/android/directshare/d/k;->c:Lcom/instagram/android/directshare/d/c;

    sget v2, Lcom/facebook/az;->view_profile:I

    invoke-virtual {v1, v2}, Lcom/instagram/android/directshare/d/c;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 715
    invoke-static {}, Lcom/instagram/o/f/f;->a()Lcom/instagram/o/f/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/directshare/d/k;->c:Lcom/instagram/android/directshare/d/c;

    invoke-virtual {v1}, Lcom/instagram/android/directshare/d/c;->p()Landroid/support/v4/app/s;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/directshare/d/k;->b:Lcom/instagram/feed/d/b;

    invoke-virtual {v2}, Lcom/instagram/feed/d/b;->g()Lcom/instagram/user/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/instagram/o/f/e;->a(Landroid/support/v4/app/s;Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    goto :goto_0

    .line 717
    :cond_2
    iget-object v1, p0, Lcom/instagram/android/directshare/d/k;->c:Lcom/instagram/android/directshare/d/c;

    sget v2, Lcom/facebook/az;->copy_text:I

    invoke-virtual {v1, v2}, Lcom/instagram/android/directshare/d/c;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/instagram/android/directshare/d/k;->c:Lcom/instagram/android/directshare/d/c;

    invoke-virtual {v0}, Lcom/instagram/android/directshare/d/c;->n()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/directshare/d/k;->b:Lcom/instagram/feed/d/b;

    invoke-virtual {v1}, Lcom/instagram/feed/d/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/common/y/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 722
    iget-object v0, p0, Lcom/instagram/android/directshare/d/k;->c:Lcom/instagram/android/directshare/d/c;

    invoke-virtual {v0}, Lcom/instagram/android/directshare/d/c;->n()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/az;->copied:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
