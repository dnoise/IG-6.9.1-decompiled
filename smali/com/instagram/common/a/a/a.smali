.class public abstract Lcom/instagram/common/a/a/a;
.super Ljava/lang/Object;
.source "AbstractRequest.java"

# interfaces
.implements Lcom/instagram/common/a/d/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseType::",
        "Lcom/instagram/common/a/a/m;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/instagram/common/a/d/a;"
    }
.end annotation


# instance fields
.field protected c:Lcom/instagram/common/a/a/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/common/a/a/j",
            "<TResponseType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/common/a/a/j;)Lcom/instagram/common/a/a/a;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/common/a/a/j",
            "<TResponseType;>;)",
            "Lcom/instagram/common/a/a/a",
            "<TResponseType;>;"
        }
    .end annotation

    .prologue
    .line 58
    iput-object p1, p0, Lcom/instagram/common/a/a/a;->c:Lcom/instagram/common/a/a/j;

    .line 59
    return-object p0
.end method

.method protected a(Lcom/instagram/common/l/a/e;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/common/l/a/e",
            "<TResponseType;>;)V"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/instagram/common/a/a/a;->c:Lcom/instagram/common/a/a/j;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/instagram/common/a/a/a;->c:Lcom/instagram/common/a/a/j;

    invoke-virtual {v0, p1}, Lcom/instagram/common/a/a/j;->a(Lcom/instagram/common/l/a/e;)V

    .line 110
    invoke-virtual {p1}, Lcom/instagram/common/l/a/e;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/instagram/common/l/a/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/a/a/m;

    invoke-interface {v0}, Lcom/instagram/common/a/a/m;->f_()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/instagram/common/a/a/a;->c:Lcom/instagram/common/a/a/j;

    invoke-virtual {p1}, Lcom/instagram/common/l/a/e;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/common/a/a/j;->a(Ljava/lang/Object;)V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/instagram/common/a/a/a;->c:Lcom/instagram/common/a/a/j;

    invoke-virtual {v0, p1}, Lcom/instagram/common/a/a/j;->b(Lcom/instagram/common/l/a/e;)V

    goto :goto_0
.end method

.method public d()Lcom/instagram/common/a/a/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/instagram/common/a/a/n",
            "<TResponseType;>;"
        }
    .end annotation

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method protected g()Lcom/instagram/common/l/a/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/instagram/common/l/a/e",
            "<TResponseType;>;"
        }
    .end annotation

    .prologue
    .line 90
    invoke-static {p0}, Lcom/instagram/common/a/a/l;->a(Lcom/instagram/common/a/a/a;)Lcom/instagram/common/l/a/e;

    move-result-object v1

    .line 92
    iget-object v0, p0, Lcom/instagram/common/a/a/a;->c:Lcom/instagram/common/a/a/j;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v1}, Lcom/instagram/common/l/a/e;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/instagram/common/l/a/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/a/a/m;

    invoke-interface {v0}, Lcom/instagram/common/a/a/m;->f_()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/instagram/common/a/a/a;->c:Lcom/instagram/common/a/a/j;

    invoke-virtual {v1}, Lcom/instagram/common/l/a/e;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instagram/common/a/a/j;->b(Ljava/lang/Object;)V

    .line 100
    :cond_0
    :goto_0
    return-object v1

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/instagram/common/a/a/a;->c:Lcom/instagram/common/a/a/j;

    invoke-virtual {v0}, Lcom/instagram/common/a/a/j;->b()V

    goto :goto_0
.end method

.method public abstract g_()Ljava/lang/String;
.end method

.method protected final i()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/instagram/common/a/a/a;->c:Lcom/instagram/common/a/a/j;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/instagram/common/a/a/a;->c:Lcom/instagram/common/a/a/j;

    invoke-virtual {v0}, Lcom/instagram/common/a/a/j;->a()V

    .line 83
    :cond_0
    return-void
.end method

.method public l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lch/boye/httpclientandroidlib/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method
