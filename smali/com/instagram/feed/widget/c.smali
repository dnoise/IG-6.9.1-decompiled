.class final Lcom/instagram/feed/widget/c;
.super Ljava/lang/Object;
.source "IgProgressImageView.java"

# interfaces
.implements Lcom/instagram/common/ui/widget/imageview/g;


# instance fields
.field final synthetic a:Lcom/instagram/feed/widget/a;


# direct methods
.method constructor <init>(Lcom/instagram/feed/widget/a;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/instagram/feed/widget/c;->a:Lcom/instagram/feed/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 115
    iget-object v0, p0, Lcom/instagram/feed/widget/c;->a:Lcom/instagram/feed/widget/a;

    invoke-virtual {v0}, Lcom/instagram/feed/widget/a;->getDisplayedChild()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/instagram/feed/widget/c;->a:Lcom/instagram/feed/widget/a;

    invoke-virtual {v0, v1}, Lcom/instagram/feed/widget/a;->setDisplayedChild(I)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/instagram/feed/widget/c;->a:Lcom/instagram/feed/widget/a;

    invoke-static {v0}, Lcom/instagram/feed/widget/a;->c(Lcom/instagram/feed/widget/a;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 119
    return-void
.end method
