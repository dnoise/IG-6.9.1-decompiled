.class final Lcom/instagram/android/directshare/d/ah;
.super Ljava/lang/Object;
.source "DirectSharePermalinkMoreOptionsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/directshare/d/ad;


# direct methods
.method constructor <init>(Lcom/instagram/android/directshare/d/ad;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/instagram/android/directshare/d/ah;->a:Lcom/instagram/android/directshare/d/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 154
    new-instance v0, Lcom/instagram/f/a/a/o;

    iget-object v1, p0, Lcom/instagram/android/directshare/d/ah;->a:Lcom/instagram/android/directshare/d/ad;

    invoke-static {v1}, Lcom/instagram/android/directshare/d/ad;->c(Lcom/instagram/android/directshare/d/ad;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/directshare/d/ah;->a:Lcom/instagram/android/directshare/d/ad;

    invoke-static {v2}, Lcom/instagram/android/directshare/d/ad;->i(Lcom/instagram/android/directshare/d/ad;)Landroid/support/v4/app/an;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/directshare/d/ah;->a:Lcom/instagram/android/directshare/d/ad;

    invoke-static {v3}, Lcom/instagram/android/directshare/d/ad;->f(Lcom/instagram/android/directshare/d/ad;)Lcom/instagram/feed/d/l;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/f/a/a/o;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/feed/d/l;)V

    invoke-virtual {v0}, Lcom/instagram/f/a/a/o;->g()V

    .line 155
    invoke-static {}, Lcom/instagram/l/b/a;->a()Lcom/instagram/l/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/l/b/a;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/instagram/android/directshare/d/ah;->a:Lcom/instagram/android/directshare/d/ad;

    invoke-static {v0}, Lcom/instagram/android/directshare/d/ad;->c(Lcom/instagram/android/directshare/d/ad;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/directshare/b/a;->a(Landroid/content/Context;)V

    .line 159
    invoke-static {}, Lcom/instagram/l/b/a;->a()Lcom/instagram/l/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/l/b/a;->m()Z

    .line 162
    :cond_0
    return-void
.end method
