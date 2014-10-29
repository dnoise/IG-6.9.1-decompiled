.class final Lcom/instagram/common/k/b;
.super Ljava/lang/Object;
.source "DropFrameWatcher.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field final synthetic a:Lcom/instagram/common/k/a;


# direct methods
.method constructor <init>(Lcom/instagram/common/k/a;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/instagram/common/k/b;->a:Lcom/instagram/common/k/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/instagram/common/k/b;->a:Lcom/instagram/common/k/a;

    invoke-static {v0}, Lcom/instagram/common/k/a;->a(Lcom/instagram/common/k/a;)V

    .line 37
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 38
    return-void
.end method
