.class public final Lcom/instagram/android/feed/b/a/b;
.super Lcom/instagram/api/k/a/c;
.source "ResolveShortUrlRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/k/a/c",
        "<",
        "Lcom/instagram/android/feed/b/a/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/instagram/api/k/a/c;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/instagram/android/feed/b/a/b;->a:Ljava/lang/String;

    .line 20
    return-void
.end method

.method private static b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/android/feed/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 24
    invoke-static {p0}, Lcom/instagram/android/feed/b/a/d;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/android/feed/b/a/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final synthetic a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/d;
    .locals 1
    .parameter

    .prologue
    .line 14
    invoke-static {p1}, Lcom/instagram/android/feed/b/a/b;->b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/android/feed/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/instagram/common/a/c/b;)V
    .locals 2
    .parameter

    .prologue
    .line 39
    const-string v0, "url"

    iget-object v1, p0, Lcom/instagram/android/feed/b/a/b;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
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
    .line 34
    const-string v0, "oembed/"

    return-object v0
.end method
