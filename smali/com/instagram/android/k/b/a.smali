.class public final Lcom/instagram/android/k/b/a;
.super Lcom/instagram/api/k/a/b;
.source "DisconnectAddressBookRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/k/a/b",
        "<",
        "Lcom/instagram/api/k/a/d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/instagram/api/k/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/d;
    .locals 1
    .parameter

    .prologue
    .line 39
    invoke-static {p1}, Lcom/instagram/api/k/a/f;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/d;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/instagram/api/b/a;)V
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
    sget v0, Lcom/instagram/common/a/c/a;->a:I

    return v0
.end method

.method protected final d_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const-string v0, "address_book/unlink/"

    return-object v0
.end method

.method public final e_()Z
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    return v0
.end method
