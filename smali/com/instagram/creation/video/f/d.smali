.class final Lcom/instagram/creation/video/f/d;
.super Ljava/lang/Object;
.source "CamcorderFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/instagram/creation/video/f/a;


# direct methods
.method constructor <init>(Lcom/instagram/creation/video/f/a;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 680
    iput-object p1, p0, Lcom/instagram/creation/video/f/d;->b:Lcom/instagram/creation/video/f/a;

    iput-object p2, p0, Lcom/instagram/creation/video/f/d;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 684
    :try_start_0
    iget-object v0, p0, Lcom/instagram/creation/video/f/d;->b:Lcom/instagram/creation/video/f/a;

    invoke-static {v0}, Lcom/instagram/creation/video/f/a;->b(Lcom/instagram/creation/video/f/a;)Lcom/instagram/creation/video/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/video/f/d;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/a;->a(Ljava/util/List;)V

    .line 685
    iget-object v0, p0, Lcom/instagram/creation/video/f/d;->b:Lcom/instagram/creation/video/f/a;

    invoke-static {v0}, Lcom/instagram/creation/video/f/a;->x(Lcom/instagram/creation/video/f/a;)Lcom/instagram/creation/video/ui/CamcorderBlinker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    :goto_0
    return-void

    .line 688
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/instagram/creation/video/f/d;->b:Lcom/instagram/creation/video/f/a;

    invoke-static {v0}, Lcom/instagram/creation/video/f/a;->r(Lcom/instagram/creation/video/f/a;)V

    goto :goto_0
.end method
