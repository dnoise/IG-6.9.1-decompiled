.class final Lcom/instagram/android/i/a/b;
.super Lcom/instagram/android/i/c;
.source "SimilarAccountsViewBinder.java"


# instance fields
.field final synthetic a:Landroid/support/v4/app/s;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/v4/app/s;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/instagram/android/i/a/b;->a:Landroid/support/v4/app/s;

    iput-object p2, p0, Lcom/instagram/android/i/a/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/instagram/android/i/a/b;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/instagram/android/i/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/user/c/a;)V
    .locals 5
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/instagram/android/i/a/b;->a:Landroid/support/v4/app/s;

    sget v1, Lcom/facebook/av;->layout_container_main:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/analytics/g;

    sget-object v1, Lcom/instagram/android/i/a;->b:Lcom/instagram/android/i/a;

    iget-object v2, p0, Lcom/instagram/android/i/a/b;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/instagram/android/i/a/b;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/instagram/android/i/b;->a(Lcom/instagram/common/analytics/g;Lcom/instagram/android/i/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public final b(Lcom/instagram/user/c/a;)V
    .locals 5
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/instagram/android/i/a/b;->a:Landroid/support/v4/app/s;

    sget v1, Lcom/facebook/av;->layout_container_main:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/analytics/g;

    sget-object v1, Lcom/instagram/android/i/a;->c:Lcom/instagram/android/i/a;

    iget-object v2, p0, Lcom/instagram/android/i/a/b;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/instagram/android/i/a/b;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/instagram/android/i/b;->a(Lcom/instagram/common/analytics/g;Lcom/instagram/android/i/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method
