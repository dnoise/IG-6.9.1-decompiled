.class public final Lcom/instagram/android/c/a/k;
.super Lcom/instagram/api/k/a/c;
.source "PermalinkRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/k/a/c",
        "<",
        "Lcom/instagram/android/c/a/l;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/instagram/feed/d/l;


# direct methods
.method public constructor <init>(Lcom/instagram/feed/d/l;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/instagram/api/k/a/c;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/instagram/android/c/a/k;->a:Lcom/instagram/feed/d/l;

    .line 20
    return-void
.end method

.method private static b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/android/c/a/l;
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-static {p0}, Lcom/instagram/android/c/a/m;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/android/c/a/l;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final synthetic a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/d;
    .locals 1
    .parameter

    .prologue
    .line 14
    invoke-static {p1}, Lcom/instagram/android/c/a/k;->b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/android/c/a/l;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/instagram/common/a/c/b;)V
    .locals 0
    .parameter

    .prologue
    .line 41
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
    .locals 4

    .prologue
    .line 24
    const-string v0, "media/%s/permalink/"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/android/c/a/k;->a:Lcom/instagram/feed/d/l;

    invoke-virtual {v3}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
