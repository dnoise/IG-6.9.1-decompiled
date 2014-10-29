.class final Lcom/instagram/android/feed/a/a/ac;
.super Ljava/lang/Object;
.source "MediaOptionsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/a/a/aa;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/a/a/aa;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/instagram/android/feed/a/a/ac;->a:Lcom/instagram/android/feed/a/a/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/ac;->a:Lcom/instagram/android/feed/a/a/aa;

    iget-object v0, v0, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/x;->e(Lcom/instagram/android/feed/a/a/x;)Lcom/instagram/common/a/a/k;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/feed/a/a/a;

    iget-object v2, p0, Lcom/instagram/android/feed/a/a/ac;->a:Lcom/instagram/android/feed/a/a/aa;

    iget-object v2, v2, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v2}, Lcom/instagram/android/feed/a/a/x;->d(Lcom/instagram/android/feed/a/a/x;)Lcom/instagram/feed/d/l;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/instagram/android/feed/a/a/a;-><init>(Lcom/instagram/feed/d/l;)V

    new-instance v2, Lcom/instagram/android/feed/a/a/z;

    iget-object v3, p0, Lcom/instagram/android/feed/a/a/ac;->a:Lcom/instagram/android/feed/a/a/aa;

    iget-object v3, v3, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/x;

    iget-object v4, p0, Lcom/instagram/android/feed/a/a/ac;->a:Lcom/instagram/android/feed/a/a/aa;

    iget-object v4, v4, Lcom/instagram/android/feed/a/a/aa;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v4}, Lcom/instagram/android/feed/a/a/x;->d(Lcom/instagram/android/feed/a/a/x;)Lcom/instagram/feed/d/l;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/instagram/android/feed/a/a/z;-><init>(Lcom/instagram/android/feed/a/a/x;Lcom/instagram/feed/d/l;B)V

    invoke-virtual {v1, v2}, Lcom/instagram/android/feed/a/a/a;->a(Lcom/instagram/common/a/a/j;)Lcom/instagram/common/a/a/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/common/a/a/k;->a(Lcom/instagram/common/a/a/a;)V

    .line 175
    return-void
.end method
