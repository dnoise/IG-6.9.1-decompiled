.class final Lcom/instagram/creation/video/f/w;
.super Ljava/lang/Object;
.source "CamcorderFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/creation/video/f/v;


# direct methods
.method constructor <init>(Lcom/instagram/creation/video/f/v;)V
    .locals 0
    .parameter

    .prologue
    .line 1908
    iput-object p1, p0, Lcom/instagram/creation/video/f/w;->a:Lcom/instagram/creation/video/f/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 1911
    iget-object v0, p0, Lcom/instagram/creation/video/f/w;->a:Lcom/instagram/creation/video/f/v;

    iget-object v0, v0, Lcom/instagram/creation/video/f/v;->a:Lcom/instagram/creation/video/f/a;

    invoke-static {v0}, Lcom/instagram/creation/video/f/a;->H(Lcom/instagram/creation/video/f/a;)Lcom/instagram/ui/dialog/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1912
    iget-object v0, p0, Lcom/instagram/creation/video/f/w;->a:Lcom/instagram/creation/video/f/v;

    iget-object v0, v0, Lcom/instagram/creation/video/f/v;->a:Lcom/instagram/creation/video/f/a;

    invoke-static {v0}, Lcom/instagram/creation/video/f/a;->H(Lcom/instagram/creation/video/f/a;)Lcom/instagram/ui/dialog/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/f;->show()V

    .line 1914
    :cond_0
    return-void
.end method
