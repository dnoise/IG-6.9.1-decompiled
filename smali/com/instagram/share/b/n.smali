.class public final Lcom/instagram/share/b/n;
.super Lcom/instagram/api/e/a;
.source "GraphPermissionsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/e/a",
        "<",
        "Lcom/instagram/share/b/p;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/instagram/api/e/a;-><init>(Ljava/lang/String;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, "me/permissions/"

    return-object v0
.end method

.method public final d()Lcom/instagram/common/a/a/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/instagram/common/a/a/n",
            "<",
            "Lcom/instagram/share/b/p;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Lcom/instagram/share/b/o;

    invoke-direct {v0, p0}, Lcom/instagram/share/b/o;-><init>(Lcom/instagram/share/b/n;)V

    return-object v0
.end method
