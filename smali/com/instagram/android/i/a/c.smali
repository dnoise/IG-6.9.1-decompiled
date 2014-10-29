.class final Lcom/instagram/android/i/a/c;
.super Ljava/lang/Object;
.source "SimilarAccountsViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/i/a/d;

.field final synthetic b:Landroid/support/v4/app/s;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/instagram/android/i/a/d;Landroid/support/v4/app/s;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/instagram/android/i/a/c;->a:Lcom/instagram/android/i/a/d;

    iput-object p2, p0, Lcom/instagram/android/i/a/c;->b:Landroid/support/v4/app/s;

    iput-object p3, p0, Lcom/instagram/android/i/a/c;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/instagram/android/i/a/c;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/instagram/android/i/a/c;->a:Lcom/instagram/android/i/a/d;

    invoke-interface {v0}, Lcom/instagram/android/i/a/d;->a()V

    .line 79
    iget-object v0, p0, Lcom/instagram/android/i/a/c;->b:Landroid/support/v4/app/s;

    sget v1, Lcom/facebook/av;->layout_container_main:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/analytics/g;

    sget-object v1, Lcom/instagram/android/i/a;->d:Lcom/instagram/android/i/a;

    iget-object v2, p0, Lcom/instagram/android/i/a/c;->c:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/instagram/android/i/a/c;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/instagram/android/i/b;->a(Lcom/instagram/common/analytics/g;Lcom/instagram/android/i/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method
