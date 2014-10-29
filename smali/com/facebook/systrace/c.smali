.class final Lcom/facebook/systrace/c;
.super Ljava/lang/Object;
.source "SystraceMetadata.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 50
    invoke-static {}, Lcom/facebook/systrace/b;->b()V

    .line 53
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    invoke-static {}, Lcom/facebook/systrace/b;->e()V

    .line 60
    invoke-static {}, Lcom/facebook/systrace/b;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    :goto_1
    return-void

    .line 64
    :cond_0
    invoke-static {}, Lcom/facebook/systrace/b;->g()V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method
