.class public final Lcom/instagram/android/c/b/b;
.super Lcom/instagram/api/k/a/c;
.source "ExploreUserSearchRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/k/a/c",
        "<",
        "Lcom/instagram/android/c/b/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/instagram/api/k/a/c;-><init>()V

    .line 20
    iput-object p2, p0, Lcom/instagram/android/c/b/b;->a:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/instagram/android/c/b/b;->b:Ljava/lang/String;

    .line 22
    iput-boolean p3, p0, Lcom/instagram/android/c/b/b;->d:Z

    .line 23
    return-void
.end method

.method private static b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/android/c/b/c;
    .locals 1
    .parameter

    .prologue
    .line 39
    invoke-static {p0}, Lcom/instagram/android/c/b/d;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/android/c/b/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/d;
    .locals 1
    .parameter

    .prologue
    .line 13
    invoke-static {p1}, Lcom/instagram/android/c/b/b;->b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/android/c/b/c;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/instagram/common/a/c/b;)V
    .locals 2
    .parameter

    .prologue
    .line 27
    const-string v0, "rank_token"

    iget-object v1, p0, Lcom/instagram/android/c/b/b;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string v0, "q"

    iget-object v1, p0, Lcom/instagram/android/c/b/b;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string v0, "is_typeahead"

    iget-boolean v1, p0, Lcom/instagram/android/c/b/b;->d:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/instagram/common/a/c/a;->c:I

    return v0
.end method

.method protected final d_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "users/search/"

    return-object v0
.end method
