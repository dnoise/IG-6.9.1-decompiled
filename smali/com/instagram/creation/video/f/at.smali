.class final Lcom/instagram/creation/video/f/at;
.super Ljava/lang/Object;
.source "VideoEditFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/creation/video/f/as;


# direct methods
.method constructor <init>(Lcom/instagram/creation/video/f/as;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/instagram/creation/video/f/at;->a:Lcom/instagram/creation/video/f/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/instagram/creation/video/f/at;->a:Lcom/instagram/creation/video/f/as;

    iget-object v0, v0, Lcom/instagram/creation/video/f/as;->a:Lcom/instagram/creation/video/f/ar;

    invoke-static {v0}, Lcom/instagram/creation/video/f/ar;->b(Lcom/instagram/creation/video/f/ar;)V

    .line 230
    return-void
.end method
