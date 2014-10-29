.class final Lcom/instagram/creation/video/f/m;
.super Ljava/lang/Object;
.source "CamcorderFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/creation/video/f/a;


# direct methods
.method constructor <init>(Lcom/instagram/creation/video/f/a;)V
    .locals 0
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lcom/instagram/creation/video/f/m;->a:Lcom/instagram/creation/video/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 350
    sget v0, Lcom/facebook/az;->video_failed_to_start:I

    invoke-static {v0}, Lcom/instagram/o/e;->a(I)V

    .line 351
    iget-object v0, p0, Lcom/instagram/creation/video/f/m;->a:Lcom/instagram/creation/video/f/a;

    invoke-static {v0}, Lcom/instagram/creation/video/f/a;->i(Lcom/instagram/creation/video/f/a;)V

    .line 352
    return-void
.end method
