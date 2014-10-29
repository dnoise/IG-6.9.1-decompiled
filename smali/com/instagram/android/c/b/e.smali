.class public final Lcom/instagram/android/c/b/e;
.super Lcom/instagram/api/e/a;
.source "FacebookAccountsGraphRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/e/a",
        "<",
        "Lcom/instagram/android/c/b/h;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/instagram/api/e/a;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method


# virtual methods
.method public final a()Lcom/instagram/common/a/c/b;
    .locals 3

    .prologue
    .line 34
    invoke-super {p0}, Lcom/instagram/api/e/a;->a()Lcom/instagram/common/a/c/b;

    move-result-object v0

    .line 35
    const-string v1, "type"

    const-string v2, "page"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-object v0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "me/accounts/"

    return-object v0
.end method

.method public final d()Lcom/instagram/common/a/a/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/instagram/common/a/a/n",
            "<",
            "Lcom/instagram/android/c/b/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Lcom/instagram/android/c/b/f;

    invoke-direct {v0, p0}, Lcom/instagram/android/c/b/f;-><init>(Lcom/instagram/android/c/b/e;)V

    return-object v0
.end method
