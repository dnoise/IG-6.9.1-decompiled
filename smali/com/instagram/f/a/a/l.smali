.class public final Lcom/instagram/f/a/a/l;
.super Lcom/instagram/api/k/a/c;
.source "FetchInboxRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/k/a/c",
        "<",
        "Lcom/instagram/f/a/b/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/instagram/feed/f/a;


# direct methods
.method public constructor <init>(Lcom/instagram/feed/f/a;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/instagram/api/k/a/c;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/instagram/f/a/a/l;->a:Lcom/instagram/feed/f/a;

    .line 32
    return-void
.end method

.method private static b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/f/a/b/c;
    .locals 1
    .parameter

    .prologue
    .line 54
    invoke-static {p0}, Lcom/instagram/f/a/b/e;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/f/a/b/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/d;
    .locals 1
    .parameter

    .prologue
    .line 20
    invoke-static {p1}, Lcom/instagram/f/a/a/l;->b(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/f/a/b/c;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/instagram/common/a/c/b;)V
    .locals 2
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/instagram/f/a/a/l;->a:Lcom/instagram/feed/f/a;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/instagram/f/a/a/l;->a:Lcom/instagram/feed/f/a;

    invoke-virtual {v0}, Lcom/instagram/feed/f/a;->b()Lcom/instagram/feed/f/b;

    move-result-object v0

    .line 48
    iget-object v0, v0, Lcom/instagram/feed/f/b;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/instagram/f/a/a/l;->a:Lcom/instagram/feed/f/a;

    invoke-virtual {v1}, Lcom/instagram/feed/f/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_0
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 36
    sget v0, Lcom/instagram/common/a/c/a;->c:I

    return v0
.end method

.method protected final d_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "direct_share/inbox/"

    return-object v0
.end method

.method public final e_()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method
