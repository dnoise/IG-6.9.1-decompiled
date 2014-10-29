.class final Lcom/instagram/creation/photo/camera/j;
.super Ljava/lang/Object;
.source "CameraFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/creation/photo/camera/c;


# direct methods
.method constructor <init>(Lcom/instagram/creation/photo/camera/c;)V
    .locals 0
    .parameter

    .prologue
    .line 543
    iput-object p1, p0, Lcom/instagram/creation/photo/camera/j;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/j;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v0}, Lcom/instagram/creation/photo/camera/c;->m(Lcom/instagram/creation/photo/camera/c;)V

    .line 546
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/j;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v0}, Lcom/instagram/creation/photo/camera/c;->n(Lcom/instagram/creation/photo/camera/c;)V

    .line 547
    return-void
.end method
