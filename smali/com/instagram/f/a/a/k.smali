.class public final Lcom/instagram/f/a/a/k;
.super Lcom/instagram/api/k/a/b;
.source "FetchDirectShareRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/k/a/b",
        "<",
        "Lcom/instagram/f/a/b/a;",
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
    .line 20
    invoke-direct {p0}, Lcom/instagram/api/k/a/b;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/instagram/f/a/a/k;->a:Ljava/lang/String;

    .line 22
    return-void
.end method

.method private static b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/f/a/b/a;
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-static {p0}, Lcom/instagram/f/a/b/b;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/f/a/b/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final synthetic a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/d;
    .locals 1
    .parameter

    .prologue
    .line 16
    invoke-static {p1}, Lcom/instagram/f/a/a/k;->b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/f/a/b/a;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/instagram/api/b/a;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 40
    sget v0, Lcom/instagram/common/a/c/a;->c:I

    return v0
.end method

.method protected final d_()Ljava/lang/String;
    .locals 4

    .prologue
    .line 26
    const-string v0, "direct_share/%s/"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/f/a/a/k;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/instagram/common/y/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e_()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method
