.class final Lcom/instagram/creation/video/f/bc;
.super Ljava/lang/Object;
.source "VideoFilterFragment.java"

# interfaces
.implements Lcom/instagram/creation/base/ui/e;


# instance fields
.field final synthetic a:Lcom/instagram/creation/video/f/bb;


# direct methods
.method constructor <init>(Lcom/instagram/creation/video/f/bb;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/instagram/creation/video/f/bc;->a:Lcom/instagram/creation/video/f/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/creation/base/ui/h;)V
    .locals 2
    .parameter

    .prologue
    .line 86
    if-nez p1, :cond_0

    .line 95
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/instagram/creation/video/f/bc;->a:Lcom/instagram/creation/video/f/bb;

    invoke-virtual {p1}, Lcom/instagram/creation/base/ui/h;->b()I

    move-result v1

    invoke-static {v0, v1}, Lcom/instagram/creation/video/f/bb;->a(Lcom/instagram/creation/video/f/bb;I)I

    .line 92
    iget-object v0, p0, Lcom/instagram/creation/video/f/bc;->a:Lcom/instagram/creation/video/f/bb;

    invoke-virtual {v0}, Lcom/instagram/creation/video/f/bb;->Y()Lcom/instagram/creation/b/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/video/f/bc;->a:Lcom/instagram/creation/video/f/bb;

    invoke-static {v1}, Lcom/instagram/creation/video/f/bb;->a(Lcom/instagram/creation/video/f/bb;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/b;->b(I)V

    .line 93
    iget-object v0, p0, Lcom/instagram/creation/video/f/bc;->a:Lcom/instagram/creation/video/f/bb;

    invoke-static {v0}, Lcom/instagram/creation/video/f/bb;->b(Lcom/instagram/creation/video/f/bb;)Lcom/instagram/creation/video/l/h;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/video/f/bc;->a:Lcom/instagram/creation/video/f/bb;

    invoke-static {v1}, Lcom/instagram/creation/video/f/bb;->a(Lcom/instagram/creation/video/f/bb;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/l/h;->a(I)V

    .line 94
    iget-object v0, p0, Lcom/instagram/creation/video/f/bc;->a:Lcom/instagram/creation/video/f/bb;

    invoke-static {v0}, Lcom/instagram/creation/video/f/bb;->b(Lcom/instagram/creation/video/f/bb;)Lcom/instagram/creation/video/l/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/l/h;->l()Z

    goto :goto_0
.end method
