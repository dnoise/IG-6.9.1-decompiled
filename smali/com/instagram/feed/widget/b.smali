.class final Lcom/instagram/feed/widget/b;
.super Ljava/lang/Object;
.source "IgProgressImageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/feed/widget/a;


# direct methods
.method constructor <init>(Lcom/instagram/feed/widget/a;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/instagram/feed/widget/b;->a:Lcom/instagram/feed/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/instagram/feed/widget/b;->a:Lcom/instagram/feed/widget/a;

    invoke-static {v0}, Lcom/instagram/feed/widget/a;->a(Lcom/instagram/feed/widget/a;)Lcom/instagram/common/ui/widget/imageview/IgImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->b()V

    .line 95
    iget-object v0, p0, Lcom/instagram/feed/widget/b;->a:Lcom/instagram/feed/widget/a;

    invoke-static {v0}, Lcom/instagram/feed/widget/a;->b(Lcom/instagram/feed/widget/a;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Lcom/instagram/common/analytics/b;

    const-string v1, "image_view_retry_click"

    iget-object v2, p0, Lcom/instagram/feed/widget/b;->a:Lcom/instagram/feed/widget/a;

    invoke-virtual {v2}, Lcom/instagram/feed/widget/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/instagram/b/b/a;->a(Landroid/content/Context;)Lcom/instagram/common/analytics/g;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/g;)V

    const-string v1, "category"

    iget-object v2, p0, Lcom/instagram/feed/widget/b;->a:Lcom/instagram/feed/widget/a;

    invoke-static {v2}, Lcom/instagram/feed/widget/a;->b(Lcom/instagram/feed/widget/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/instagram/feed/widget/b;->a:Lcom/instagram/feed/widget/a;

    invoke-virtual {v1}, Lcom/instagram/feed/widget/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/b/b/a;->a(Lcom/instagram/common/analytics/b;Landroid/content/Context;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V

    .line 101
    :cond_0
    return-void
.end method
