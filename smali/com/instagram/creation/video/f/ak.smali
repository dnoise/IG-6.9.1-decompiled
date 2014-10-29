.class final Lcom/instagram/creation/video/f/ak;
.super Ljava/lang/Object;
.source "VideoCoverFragmentBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/creation/video/f/ah;


# direct methods
.method constructor <init>(Lcom/instagram/creation/video/f/ah;)V
    .locals 0
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, Lcom/instagram/creation/video/f/ak;->a:Lcom/instagram/creation/video/f/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 345
    sget v0, Lcom/facebook/az;->unknown_error_occured:I

    invoke-static {v0}, Lcom/instagram/o/e;->a(I)V

    .line 346
    iget-object v0, p0, Lcom/instagram/creation/video/f/ak;->a:Lcom/instagram/creation/video/f/ah;

    iget-object v0, v0, Lcom/instagram/creation/video/f/ah;->a:Lcom/instagram/creation/video/f/ad;

    invoke-virtual {v0}, Lcom/instagram/creation/video/f/ad;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->onBackPressed()V

    .line 347
    return-void
.end method
