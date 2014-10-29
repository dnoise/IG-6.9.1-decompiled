.class final Lcom/instagram/feed/d/ab;
.super Lcom/instagram/feed/d/k;
.source "MediaRenderer.java"


# instance fields
.field final synthetic a:Lcom/instagram/feed/d/l;


# direct methods
.method constructor <init>(Lcom/instagram/feed/d/l;)V
    .locals 1
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/instagram/feed/d/ab;->a:Lcom/instagram/feed/d/l;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/instagram/feed/d/k;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 137
    new-instance v0, Landroid/content/Intent;

    const-string v1, "Media.NUMBER_LIKES_CLICKED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    const-string v1, "Media.EXTRA_MEDIA_ID"

    iget-object v2, p0, Lcom/instagram/feed/d/ab;->a:Lcom/instagram/feed/d/l;

    invoke-virtual {v2}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    invoke-static {v0}, Lcom/instagram/common/y/d;->a(Landroid/content/Intent;)Z

    .line 140
    return-void
.end method
