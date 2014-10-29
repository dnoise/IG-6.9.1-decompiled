.class final Lcom/instagram/o/b/h;
.super Lcom/instagram/api/e/a;
.source "AutoUpdateRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/e/a",
        "<",
        "Lcom/instagram/o/b/j;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/instagram/api/e/a;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method


# virtual methods
.method public final a()Lcom/instagram/common/a/c/b;
    .locals 3

    .prologue
    .line 28
    invoke-super {p0}, Lcom/instagram/api/e/a;->a()Lcom/instagram/common/a/c/b;

    move-result-object v0

    .line 29
    const-string v1, "fields"

    const-string v2, "client_config"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-object v0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "app"

    return-object v0
.end method

.method public final d()Lcom/instagram/common/a/a/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/instagram/common/a/a/n",
            "<",
            "Lcom/instagram/o/b/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lcom/instagram/o/b/i;

    invoke-direct {v0, p0}, Lcom/instagram/o/b/i;-><init>(Lcom/instagram/o/b/h;)V

    return-object v0
.end method
