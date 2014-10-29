.class public abstract Lcom/instagram/android/k/b/d;
.super Lcom/instagram/api/k/a/c;
.source "UserListRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/k/a/c",
        "<",
        "Lcom/instagram/android/k/b/e;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/instagram/api/k/a/c;-><init>()V

    return-void
.end method

.method private static b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/android/k/b/e;
    .locals 1
    .parameter

    .prologue
    .line 16
    invoke-static {p0}, Lcom/instagram/android/k/b/f;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/android/k/b/e;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/d;
    .locals 1
    .parameter

    .prologue
    .line 12
    invoke-static {p1}, Lcom/instagram/android/k/b/d;->b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/android/k/b/e;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 21
    sget v0, Lcom/instagram/common/a/c/a;->a:I

    return v0
.end method
