.class public final Lcom/instagram/creation/b/c/a/e;
.super Lcom/instagram/api/k/a/c;
.source "UploadImageRequest.java"


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
    .line 25
    invoke-direct {p0}, Lcom/instagram/api/k/a/c;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/instagram/creation/b/c/a/e;->a:Lcom/instagram/creation/b/a/b;

    .line 27
    return-void
.end method


# virtual methods
.method protected final a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/d;
    .locals 1
    .parameter

    .prologue
    .line 53
    invoke-static {p1}, Lcom/instagram/api/k/a/f;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/instagram/common/a/c/b;)V
    .locals 3
    .parameter

    .prologue
    .line 41
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/instagram/creation/b/c/a/e;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->k()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    const-string v1, "photo"

    const-string v2, "file"

    invoke-virtual {p1, v1, v0, v2}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    const-string v0, "UploadImageRequest"

    const-string v1, "Pending Media image file not found."

    invoke-static {v0, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_0
    const-string v0, "upload_id"

    iget-object v1, p0, Lcom/instagram/creation/b/c/a/e;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 36
    sget v0, Lcom/instagram/common/a/c/a;->a:I

    return v0
.end method

.method protected final d_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, "upload/photo/"

    return-object v0
.end method
