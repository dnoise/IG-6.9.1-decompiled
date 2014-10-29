.class public final Lcom/instagram/j/b/a/a;
.super Lcom/instagram/api/k/a/c;
.source "NewsfeedFollowingRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/k/a/c",
        "<",
        "Lcom/instagram/j/d/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/instagram/api/k/a/c;-><init>()V

    return-void
.end method

.method private static b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/j/d/a;
    .locals 1
    .parameter

    .prologue
    .line 33
    invoke-static {p0}, Lcom/instagram/j/d/b;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/j/d/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/d;
    .locals 1
    .parameter

    .prologue
    .line 15
    invoke-static {p1}, Lcom/instagram/j/b/a/a;->b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/j/d/a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/instagram/common/a/c/b;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 24
    sget v0, Lcom/instagram/common/a/c/a;->c:I

    return v0
.end method

.method protected final d_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const-string v0, "news/"

    return-object v0
.end method
