.class public final Lcom/instagram/common/a/a/o;
.super Lcom/instagram/common/a/a/c;
.source "SerialRequestPerformer.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-static {}, Lcom/instagram/common/y/c/e;->a()Lcom/instagram/common/y/c/e;

    move-result-object v0

    const-string v1, "serialrequestperformer"

    invoke-virtual {v0, v1}, Lcom/instagram/common/y/c/e;->a(Ljava/lang/String;)Lcom/instagram/common/y/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/y/c/e;->c()Lcom/instagram/common/y/c/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/common/a/a/c;-><init>(Ljava/util/concurrent/Executor;)V

    .line 22
    return-void
.end method
