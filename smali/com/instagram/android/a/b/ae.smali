.class final Lcom/instagram/android/a/b/ae;
.super Ljava/lang/Object;
.source "RecommendedUserRowViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/support/v4/app/s;

.field final synthetic c:Lcom/instagram/user/d/a;

.field final synthetic d:I


# direct methods
.method constructor <init>(ZLandroid/support/v4/app/s;Lcom/instagram/user/d/a;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/instagram/android/a/b/ae;->a:Z

    iput-object p2, p0, Lcom/instagram/android/a/b/ae;->b:Landroid/support/v4/app/s;

    iput-object p3, p0, Lcom/instagram/android/a/b/ae;->c:Lcom/instagram/user/d/a;

    iput p4, p0, Lcom/instagram/android/a/b/ae;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/instagram/android/a/b/ae;->a:Z

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/instagram/android/a/b/ae;->b:Landroid/support/v4/app/s;

    sget v1, Lcom/facebook/av;->layout_container_main:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/analytics/g;

    iget-object v1, p0, Lcom/instagram/android/a/b/ae;->c:Lcom/instagram/user/d/a;

    iget v2, p0, Lcom/instagram/android/a/b/ae;->d:I

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/instagram/user/d/b;->b(Lcom/instagram/common/analytics/g;Lcom/instagram/user/d/a;IZ)V

    .line 120
    :cond_0
    invoke-static {}, Lcom/instagram/o/f/f;->a()Lcom/instagram/o/f/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/a/b/ae;->b:Landroid/support/v4/app/s;

    iget-object v2, p0, Lcom/instagram/android/a/b/ae;->c:Lcom/instagram/user/d/a;

    invoke-virtual {v2}, Lcom/instagram/user/d/a;->a()Lcom/instagram/user/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/instagram/o/f/e;->a(Landroid/support/v4/app/s;Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    .line 121
    return-void
.end method
