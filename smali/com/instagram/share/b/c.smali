.class final Lcom/instagram/share/b/c;
.super Lcom/instagram/common/a/a/j;
.source "FacebookAccount.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/common/a/a/j",
        "<",
        "Lcom/instagram/share/b/p;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/instagram/common/a/a/j;-><init>()V

    return-void
.end method

.method private static a(Lcom/instagram/share/b/p;)V
    .locals 2
    .parameter

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/instagram/share/b/p;->b()Lcom/instagram/share/b/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/share/b/r;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/instagram/share/b/a;->a(Z)V

    .line 195
    :goto_0
    return-void

    .line 192
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/instagram/share/b/a;->a(J)V

    .line 193
    invoke-static {}, Lcom/instagram/share/b/a;->c()V

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    check-cast p1, Lcom/instagram/share/b/p;

    invoke-static {p1}, Lcom/instagram/share/b/c;->a(Lcom/instagram/share/b/p;)V

    return-void
.end method

.method public final b(Lcom/instagram/common/l/a/e;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/common/l/a/e",
            "<",
            "Lcom/instagram/share/b/p;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 199
    invoke-virtual {p1}, Lcom/instagram/common/l/a/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/instagram/common/l/a/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/share/b/p;

    invoke-virtual {v0}, Lcom/instagram/share/b/p;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/instagram/share/b/a;->a(Z)V

    .line 202
    :cond_0
    return-void
.end method
