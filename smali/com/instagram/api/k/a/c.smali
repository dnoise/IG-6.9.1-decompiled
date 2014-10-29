.class public abstract Lcom/instagram/api/k/a/c;
.super Lcom/instagram/api/k/a/a;
.source "AbstractIgUnsignedRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseType:",
        "Lcom/instagram/api/k/a/d;",
        ">",
        "Lcom/instagram/api/k/a/a",
        "<TResponseType;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/instagram/common/a/c/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/instagram/api/k/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/instagram/common/a/c/b;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/instagram/api/k/a/c;->a:Lcom/instagram/common/a/c/b;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/instagram/common/a/c/b;

    invoke-direct {v0}, Lcom/instagram/common/a/c/b;-><init>()V

    iput-object v0, p0, Lcom/instagram/api/k/a/c;->a:Lcom/instagram/common/a/c/b;

    .line 26
    iget-object v0, p0, Lcom/instagram/api/k/a/c;->a:Lcom/instagram/common/a/c/b;

    invoke-static {v0, p0}, Lcom/instagram/api/i/a;->a(Lcom/instagram/common/a/c/d;Lcom/instagram/api/c/a;)V

    .line 27
    iget-object v0, p0, Lcom/instagram/api/k/a/c;->a:Lcom/instagram/common/a/c/b;

    invoke-virtual {p0, v0}, Lcom/instagram/api/k/a/c;->a(Lcom/instagram/common/a/c/b;)V

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/instagram/api/k/a/c;->a:Lcom/instagram/common/a/c/b;

    return-object v0
.end method

.method protected abstract a(Lcom/instagram/common/a/c/b;)V
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    return v0
.end method
