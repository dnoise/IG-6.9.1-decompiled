.class final Lcom/instagram/common/p/b/c;
.super Ljava/lang/Object;
.source "DelayedBackgroundDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/common/p/b/b;


# direct methods
.method constructor <init>(Lcom/instagram/common/p/b/b;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/instagram/common/p/b/c;->a:Lcom/instagram/common/p/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/instagram/common/p/b/c;->a:Lcom/instagram/common/p/b/b;

    invoke-static {v0}, Lcom/instagram/common/p/b/b;->a(Lcom/instagram/common/p/b/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/instagram/common/p/b/c;->a:Lcom/instagram/common/p/b/b;

    invoke-static {v0}, Lcom/instagram/common/p/b/b;->b(Lcom/instagram/common/p/b/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/instagram/common/p/b/c;->a:Lcom/instagram/common/p/b/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/instagram/common/p/b/b;->a(Lcom/instagram/common/p/b/b;Z)Z

    .line 130
    iget-object v0, p0, Lcom/instagram/common/p/b/c;->a:Lcom/instagram/common/p/b/b;

    invoke-static {v0}, Lcom/instagram/common/p/b/b;->c(Lcom/instagram/common/p/b/b;)V

    .line 136
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/instagram/common/p/b/c;->a:Lcom/instagram/common/p/b/b;

    invoke-static {v0}, Lcom/instagram/common/p/b/b;->d(Lcom/instagram/common/p/b/b;)Z

    .line 137
    return-void

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/instagram/common/p/b/c;->a:Lcom/instagram/common/p/b/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instagram/common/p/b/b;->a(Lcom/instagram/common/p/b/b;Z)Z

    goto :goto_0
.end method
