.class final Lcom/instagram/android/a/b/s;
.super Ljava/lang/Object;
.source "PendingMediaRowViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/creation/b/c/a;

.field final synthetic b:Lcom/instagram/creation/b/a/b;

.field final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/instagram/creation/b/c/a;Lcom/instagram/creation/b/a/b;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/instagram/android/a/b/s;->a:Lcom/instagram/creation/b/c/a;

    iput-object p2, p0, Lcom/instagram/android/a/b/s;->b:Lcom/instagram/creation/b/a/b;

    iput-object p3, p0, Lcom/instagram/android/a/b/s;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/instagram/android/a/b/s;->a:Lcom/instagram/creation/b/c/a;

    iget-object v1, p0, Lcom/instagram/android/a/b/s;->b:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/b/c/a;->g(Lcom/instagram/creation/b/a/b;)V

    .line 101
    sget-object v0, Lcom/instagram/p/a;->f:Lcom/instagram/p/a;

    invoke-virtual {v0}, Lcom/instagram/p/a;->b()Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v1, "reason"

    const-string v2, "pending_media_cancel_tap"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V

    .line 103
    new-instance v0, Lcom/instagram/common/analytics/b;

    const-string v1, "pending_media_cancel_click"

    iget-object v2, p0, Lcom/instagram/android/a/b/s;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/instagram/b/b/a;->a(Landroid/content/Context;)Lcom/instagram/common/analytics/g;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/g;)V

    const-string v1, "media_type"

    iget-object v2, p0, Lcom/instagram/android/a/b/s;->b:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v2}, Lcom/instagram/creation/b/a/b;->n()Lcom/instagram/model/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/model/a/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v1, "upload_id"

    iget-object v2, p0, Lcom/instagram/android/a/b/s;->b:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v2}, Lcom/instagram/creation/b/a/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/instagram/android/a/b/s;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/instagram/b/b/a;->a(Lcom/instagram/common/analytics/b;Landroid/content/Context;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V

    .line 108
    return-void
.end method
