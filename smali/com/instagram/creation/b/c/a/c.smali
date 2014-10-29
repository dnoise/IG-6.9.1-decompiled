.class public final Lcom/instagram/creation/b/c/a/c;
.super Lcom/instagram/api/k/a/c;
.source "CreateMediaRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/k/a/c",
        "<",
        "Lcom/instagram/api/k/a/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/instagram/creation/b/a/b;


# direct methods
.method public constructor <init>(Lcom/instagram/creation/b/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/instagram/api/k/a/c;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/instagram/creation/b/c/a/c;->a:Lcom/instagram/creation/b/a/b;

    .line 23
    return-void
.end method


# virtual methods
.method protected final a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/d;
    .locals 1
    .parameter

    .prologue
    .line 44
    invoke-static {p1}, Lcom/instagram/api/k/a/f;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/instagram/common/a/c/b;)V
    .locals 2
    .parameter

    .prologue
    .line 37
    const-string v0, "media_type"

    sget-object v1, Lcom/instagram/model/a/a;->b:Lcom/instagram/model/a/a;

    invoke-virtual {v1}, Lcom/instagram/model/a/a;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v0, "upload_id"

    iget-object v1, p0, Lcom/instagram/creation/b/c/a/c;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 32
    sget v0, Lcom/instagram/common/a/c/a;->a:I

    return v0
.end method

.method protected final d_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, "upload/video/"

    return-object v0
.end method
