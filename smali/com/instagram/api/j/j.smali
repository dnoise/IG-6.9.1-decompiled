.class public abstract Lcom/instagram/api/j/j;
.super Ljava/lang/Object;
.source "ApiResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected a:Lch/boye/httpclientandroidlib/StatusLine;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method public final a(Lch/boye/httpclientandroidlib/StatusLine;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/instagram/api/j/j;->a:Lch/boye/httpclientandroidlib/StatusLine;

    .line 29
    return-void
.end method

.method public abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract a(Z)V
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract b(Ljava/lang/String;)Z
.end method

.method public final c()Lch/boye/httpclientandroidlib/StatusLine;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/instagram/api/j/j;->a:Lch/boye/httpclientandroidlib/StatusLine;

    return-object v0
.end method

.method public abstract c(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public final d()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/instagram/api/j/j;->c()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/instagram/api/j/j;->c()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 39
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()I
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/instagram/api/j/j;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    sget v0, Lcom/instagram/api/j/k;->b:I

    .line 59
    :goto_0
    return v0

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/api/j/j;->d()Ljava/lang/Integer;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_1

    .line 50
    sget v0, Lcom/instagram/api/j/k;->c:I

    goto :goto_0

    .line 52
    :cond_1
    sget v0, Lcom/instagram/api/j/k;->d:I

    goto :goto_0

    .line 56
    :cond_2
    iget-boolean v0, p0, Lcom/instagram/api/j/j;->b:Z

    if-eqz v0, :cond_3

    .line 57
    sget v0, Lcom/instagram/api/j/k;->d:I

    goto :goto_0

    .line 59
    :cond_3
    sget v0, Lcom/instagram/api/j/k;->a:I

    goto :goto_0
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/instagram/api/j/j;->e()I

    move-result v0

    sget v1, Lcom/instagram/api/j/k;->a:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/instagram/api/j/j;->b:Z

    .line 64
    return-void

    .line 63
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract g()Z
.end method

.method public abstract h()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract i()Ljava/lang/String;
.end method

.method public abstract j()Z
.end method

.method public abstract k()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/instagram/api/b/b;",
            ">;"
        }
    .end annotation
.end method

.method public abstract l()Lcom/fasterxml/jackson/databind/JsonNode;
.end method

.method public abstract m()Ljava/lang/String;
.end method

.method public abstract n()Z
.end method
