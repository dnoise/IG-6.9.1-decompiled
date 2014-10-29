.class final Lcom/instagram/creation/video/f/be;
.super Ljava/lang/Object;
.source "VideoFilterFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/creation/video/f/bb;


# direct methods
.method constructor <init>(Lcom/instagram/creation/video/f/bb;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/instagram/creation/video/f/be;->a:Lcom/instagram/creation/video/f/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 146
    iget-object v0, p0, Lcom/instagram/creation/video/f/be;->a:Lcom/instagram/creation/video/f/bb;

    invoke-static {v0}, Lcom/instagram/creation/video/f/bb;->d(Lcom/instagram/creation/video/f/bb;)Lcom/instagram/creation/base/ui/FilterPicker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/instagram/creation/video/f/be;->a:Lcom/instagram/creation/video/f/bb;

    invoke-static {v0}, Lcom/instagram/creation/video/f/bb;->d(Lcom/instagram/creation/video/f/bb;)Lcom/instagram/creation/base/ui/FilterPicker;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/video/f/be;->a:Lcom/instagram/creation/video/f/bb;

    invoke-virtual {v1}, Lcom/instagram/creation/video/f/bb;->j()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "VideoFilterFragment.FILTER_SCROLL_X"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/instagram/creation/base/ui/FilterPicker;->smoothScrollTo(II)V

    .line 150
    :cond_0
    return-void
.end method
