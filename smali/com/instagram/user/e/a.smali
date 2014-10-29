.class public final Lcom/instagram/user/e/a;
.super Lcom/instagram/api/k/a/c;
.source "RequestedFollowsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/k/a/c",
        "<",
        "Lcom/instagram/user/e/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/instagram/api/k/a/c;-><init>()V

    return-void
.end method

.method private static b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/e/b;
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-static {p0}, Lcom/instagram/user/e/c;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/e/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/d;
    .locals 1
    .parameter

    .prologue
    .line 13
    invoke-static {p1}, Lcom/instagram/user/e/a;->b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/e/b;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/instagram/common/a/c/b;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 26
    sget v0, Lcom/instagram/common/a/c/a;->c:I

    return v0
.end method

.method protected final d_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string v0, "friendships/pending/"

    return-object v0
.end method
