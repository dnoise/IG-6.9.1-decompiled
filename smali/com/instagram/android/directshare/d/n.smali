.class final Lcom/instagram/android/directshare/d/n;
.super Ljava/lang/Object;
.source "DirectSharePermalinkFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/model/b/a;

.field final synthetic b:Lcom/instagram/android/directshare/d/c;


# direct methods
.method constructor <init>(Lcom/instagram/android/directshare/d/c;Lcom/instagram/model/b/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 807
    iput-object p1, p0, Lcom/instagram/android/directshare/d/n;->b:Lcom/instagram/android/directshare/d/c;

    iput-object p2, p0, Lcom/instagram/android/directshare/d/n;->a:Lcom/instagram/model/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 810
    invoke-static {}, Lcom/instagram/o/f/f;->a()Lcom/instagram/o/f/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/directshare/d/n;->b:Lcom/instagram/android/directshare/d/c;

    invoke-virtual {v1}, Lcom/instagram/android/directshare/d/c;->p()Landroid/support/v4/app/s;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/directshare/d/n;->a:Lcom/instagram/model/b/a;

    invoke-virtual {v2}, Lcom/instagram/model/b/a;->a()Lcom/instagram/user/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/instagram/o/f/e;->a(Landroid/support/v4/app/s;Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    .line 812
    return-void
.end method
