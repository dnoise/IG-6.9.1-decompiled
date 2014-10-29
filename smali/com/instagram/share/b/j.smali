.class public final Lcom/instagram/share/b/j;
.super Lcom/instagram/api/e/a;
.source "GraphMeRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/e/a",
        "<",
        "Lcom/instagram/share/b/l;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/instagram/api/e/a;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method


# virtual methods
.method public final a()Lcom/instagram/common/a/c/b;
    .locals 3

    .prologue
    .line 39
    invoke-super {p0}, Lcom/instagram/api/e/a;->a()Lcom/instagram/common/a/c/b;

    move-result-object v0

    .line 40
    const-string v1, "fields"

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-object v0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "me"

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 29
    sget v0, Lcom/instagram/common/a/c/a;->c:I

    return v0
.end method

.method public final d()Lcom/instagram/common/a/a/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/instagram/common/a/a/n",
            "<",
            "Lcom/instagram/share/b/l;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Lcom/instagram/share/b/k;

    invoke-direct {v0, p0}, Lcom/instagram/share/b/k;-><init>(Lcom/instagram/share/b/j;)V

    return-object v0
.end method
