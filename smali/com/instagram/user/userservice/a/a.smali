.class public final Lcom/instagram/user/userservice/a/a;
.super Lcom/instagram/api/k/a/c;
.source "AutoCompleteUserListRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/k/a/c",
        "<",
        "Lcom/instagram/user/userservice/a/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/instagram/api/k/a/c;-><init>()V

    return-void
.end method

.method private static b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/userservice/a/b;
    .locals 1
    .parameter

    .prologue
    .line 19
    new-instance v0, Lcom/instagram/user/userservice/a/c;

    invoke-direct {v0}, Lcom/instagram/user/userservice/a/c;-><init>()V

    invoke-static {p0}, Lcom/instagram/user/userservice/a/c;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/userservice/a/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/d;
    .locals 1
    .parameter

    .prologue
    .line 14
    invoke-static {p1}, Lcom/instagram/user/userservice/a/a;->b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/userservice/a/b;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/instagram/common/a/c/b;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 29
    sget v0, Lcom/instagram/common/a/c/a;->c:I

    return v0
.end method

.method protected final d_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "friendships/autocomplete_user_list/"

    return-object v0
.end method
