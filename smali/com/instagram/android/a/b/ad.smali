.class final Lcom/instagram/android/a/b/ad;
.super Ljava/lang/Object;
.source "RecommendedUserRowViewBinder.java"

# interfaces
.implements Lcom/instagram/user/follow/g;


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
    .line 90
    iput-boolean p1, p0, Lcom/instagram/android/a/b/ad;->a:Z

    iput-object p2, p0, Lcom/instagram/android/a/b/ad;->b:Landroid/support/v4/app/s;

    iput-object p3, p0, Lcom/instagram/android/a/b/ad;->c:Lcom/instagram/user/d/a;

    iput p4, p0, Lcom/instagram/android/a/b/ad;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/user/c/c;)V
    .locals 4
    .parameter

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/instagram/android/a/b/ad;->a:Z

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/instagram/android/a/b/ad;->b:Landroid/support/v4/app/s;

    sget v1, Lcom/facebook/av;->layout_container_main:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/analytics/g;

    iget-object v1, p0, Lcom/instagram/android/a/b/ad;->c:Lcom/instagram/user/d/a;

    iget v2, p0, Lcom/instagram/android/a/b/ad;->d:I

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/instagram/user/d/b;->c(Lcom/instagram/common/analytics/g;Lcom/instagram/user/d/a;IZ)V

    .line 101
    :cond_0
    return-void
.end method
